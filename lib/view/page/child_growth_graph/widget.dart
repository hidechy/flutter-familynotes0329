import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../extension/string.dart';
import '../../../provider/child/notifier.dart';

import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';

import '../../component/prefix_text/widget.dart';
import '../child_growth_graph_input/widget.dart';
import '../child_growth_record_select/widget.dart';
import 'graph/chest_graph/widget.dart';
import 'graph/head_graph/widget.dart';
import 'graph/height_weight_graph/widget.dart';
import 'graph_period_field/pull_down/widget.dart';
import 'graph_period_field/widget.dart';
import 'notifier.dart';
import 'segment_view/widget.dart';
import 'state.dart';

/// 子どもの身体発育曲線画面
class ChildGrowthGraphPage extends ConsumerWidget {
  ChildGrowthGraphPage({super.key});
  final widgetKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const heightAndWeightText = 'お子さまの性別を「不明」で登録されている場合、グラフの帯は、男の子の目安を表示しています。';
    const otherText = 'お子さまの性別を「不明」で登録されている場合、平均値は性別：男にて表示されております。';
    final state = ref.watch(childGraphGraphStateProvider);
    final notifier = ref.watch(childGraphGraphStateProvider.notifier);
    final childState = ref.watch(selectedChildStateProvider);
    final scrollController = ScrollController();

    // 選択中の出産予定日(出産日)を読み込む
    final birthday = childState
        .map(
          init: (_) => null,
          loading: (_) => null,
          loaded: (state) {
            return state.child.map(
              baby: (baby) => null,
              child: (child) => child.data.birthday,
            );
          },
        )
        ?.toDateTime(DateFormatType.yyyymmddhhmmss);

    return Stack(
      children: [
        Builder(builder: (context) {
          if (birthday == null) {
            return const SizedBox();
          }

          return GradationLayout(
            title: '身体発育曲線',
            headerPressed: IHSUtil.getScrollTopFunction(scrollController),
            showDrawer: false,
            reload: () {
              ref.refresh(childGraphGraphStateProvider);
            },
            body: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  SegmentView(
                    selectedType: state.selectedGraphType,
                    onTap: (selectedType) {
                      notifier.onTapSegmentView(selectedType);
                    },
                  ),
                  const SizedBox(height: 24),
                  ChildGraphPeriodField(key: widgetKey),
                  const SizedBox(height: 24),
                  _buildGraph(state, birthday),
                  const SizedBox(height: 24),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 152,
                          child: IHSButton(
                            'データ登録',
                            type: IHSButtonType.primary,
                            onPressed: () {
                              _pushToChildGrowthInput(context, notifier);
                            },
                          ),
                        ),
                        const SizedBox(width: 24),
                        SizedBox(
                          width: 152,
                          child: IHSButton(
                            '入力一覧',
                            type: IHSButtonType.primary,
                            onPressed: () {
                              _pushToChildGrowthHistory(context, notifier);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  PrefixText(
                    content: state.selectedGraphType ==
                            ChildGraphType.heightAndWeight
                        ? heightAndWeightText
                        : otherText,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          );
        }),
        if (state.showPeriodPulldown) _buildPullDown(context),
      ],
    );
  }

  Widget _buildPullDown(BuildContext context) {
    // プルダウンのy座標を算出
    // ignore: cast_nullable_to_non_nullable
    final box = widgetKey.currentContext!.findRenderObject() as RenderBox;
    final position = box.localToGlobal(Offset.zero);
    final y = position.dy;
    return ChildGraphPeriodPulldown(topMargin: y);
  }

  Widget _buildGraph(ChildWeightGraphState state, DateTime birthday) {
    switch (state.selectedGraphType) {
      case ChildGraphType.heightAndWeight:
        // 身長体重グラフ
        return ChildHeightWeightGraph(
          birthDay: birthday,
          period: state.selectedChildGrapthPreriod,
          growthGraphDataList: state.growthGraphDataList,
          bandGraphDataList: state.bandGraphDataList,
        );
      case ChildGraphType.head:
        // 頭囲グラフ
        return ChildHeadGraph(
          birthDay: birthday,
          period: state.selectedChildGrapthPreriod,
          growthGraphDataList: state.growthGraphDataList,
          bandGraphDataList: state.bandGraphDataList,
        );
      case ChildGraphType.chest:
        // 胸囲グラフ
        return ChildChestGraph(
          birthDay: birthday,
          period: state.selectedChildGrapthPreriod,
          growthGraphDataList: state.growthGraphDataList,
          bandGraphDataList: state.bandGraphDataList,
        );
    }
  }

  void _pushToChildGrowthInput(
    BuildContext context,
    ChildGraphTypeNotifier notifier,
  ) {
    PageNavigator.navigatePage(
      context,
      const ChildGrowthGraphInputPage(),
      callback: () async {
        await notifier.fetchRecords();
      },
    );
  }

  void _pushToChildGrowthHistory(
    BuildContext context,
    ChildGraphTypeNotifier notifier,
  ) {
    PageNavigator.navigatePage(
      context,
      const ChildGrowthSelectPage(),
      callback: () async {
        await notifier.fetchRecords();
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/extension/string.dart';
import '/provider/child/notifier.dart';
import '/view/page/pregnant_weight_graph/notifier.dart';
import '../../../provider/event/event.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../pregnant_weight_record_input/widget.dart';
import '../pregnant_weight_record_select/widget.dart';
import 'chart/widget.dart';

/// 妊婦の体重グラフ画面
class PregnantWeightGraphPage extends ConsumerWidget {
  const PregnantWeightGraphPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pregnantWeightGraphStateProvider);
    final notifier = ref.watch(pregnantWeightGraphStateProvider.notifier);
    final childState = ref.watch(selectedChildStateProvider);
    // 選択中の出産予定日(出産日)を読み込む
    final birthdayStr = childState.map(
      init: (_) => null,
      loading: (_) => null,
      loaded: (state) {
        return state.child.map(
          baby: (baby) => baby.data.birthScheduleDate,
          child: (child) => child.data.birthday,
        );
      },
    );
    final scrollController = ScrollController();

    return GradationLayout(
      title: '体重グラフ',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      reload: () {
        ref.refresh(pregnantWeightGraphStateProvider);
      },
      body: state.map(
        loading: (_) => const SizedBox(),
        loaded: (loadedState) {
          return Builder(builder: (context) {
            if (birthdayStr == null) {
              return const SizedBox();
            }

            final birthday = birthdayStr.toDateTime(
              DateFormatType.yyyymmddhhmmss,
            );

            return SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  WeightChart(
                    birthDay: birthday,
                    records: loadedState.weightGraphDataList,
                    child: childState.mapOrNull(
                      loaded: (value) => value.child,
                    )!,
                  ),
                  const SizedBox(height: 8),
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
                              _pushToWeightGraphInput(
                                context,
                                notifier,
                              );
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
                              _pushToWeightGraphHistory(context, notifier);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            );
          });
        },
      ),
    );
  }

  void _pushToWeightGraphInput(
    BuildContext context,
    PregnantWeightGraphNotifier notifier,
  ) {
    PageNavigator.navigatePage(
      context,
      const PregnantWeightRecordInputPage(),
      callback: () async {
        await _fetchGraphRecords(notifier);
      },
    );
  }

  void _pushToWeightGraphHistory(
    BuildContext context,
    PregnantWeightGraphNotifier notifier,
  ) {
    PageNavigator.navigatePage(
      context,
      const PregnantWeightRecordSelectPage(),
      callback: () async {
        await _fetchGraphRecords(notifier);
      },
    );
  }

  Future<void> _fetchGraphRecords(PregnantWeightGraphNotifier notifier) async {
    notifier.setLoading();
    await notifier.fetchRecords();
    Event.fire(Event.eventKeyNotifierWeightGraph);
  }
}

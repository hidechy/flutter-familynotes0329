import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/view/component/gradation_layout/widget.dart';
import '/view/page/child_growth_record_select/notifier.dart';
import '/view/style/colors.dart';
import '/view/style/text_style.dart';
import '../../../data/model/child_growth_record_list/model.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/record_list/widget.dart';
import '../child_growth_graph_input/widget.dart';

// 子供の身体発育曲線の入力歴画面
class ChildGrowthSelectPage extends ConsumerWidget {
  const ChildGrowthSelectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(childGrowthRecordSelectProvider);
    final scrollController = ScrollController();

    return GradationLayout(
      title: '身体発育曲線',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      reload: () {
        ref.refresh(childGrowthRecordSelectProvider);
      },
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              '入力一覧',
              style: IHSTextStyle.medium.copyWith(
                color: IHSColors.pink500,
              ),
            ),
            const SizedBox(height: 24),
            RecordListView(
              records: state.recordList.list
                  .map(
                    (e) => Record(
                      date: e.date,
                    ),
                  )
                  .toList(),
              onTap: (index, record) {
                _pushToChildGrowthGraphInput(
                  context,
                  state.recordList.list[index],
                );
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

void _pushToChildGrowthGraphInput(
  BuildContext context,
  ChildGrowthRecord? record,
) {
  PageNavigator.navigatePage(
    context,
    ChildGrowthGraphInputPage(record: record),
  );
}

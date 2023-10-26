import 'package:family_notes/view/component/gradation_layout/widget.dart';
import 'package:family_notes/view/component/ihs_button/type.dart';
import 'package:family_notes/view/component/ihs_button/widget.dart';
import 'package:family_notes/view/component/record_list/widget.dart';
import 'package:family_notes/view/page/life_habit_check_work_sheet/notifier.dart';
import 'package:family_notes/view/page/life_habit_question/widget.dart';
import 'package:family_notes/view/style/colors.dart';
import 'package:family_notes/view/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../extension/date_time.dart';
import '../../../util/page_navigator.dart';
import '../life_habit_question_result/type.dart';
import '../life_habit_question_result/widget.dart';

/// 生活習慣改善チェックシート画面
class LifeHabitCheckWorkSheetPage extends ConsumerWidget {
  const LifeHabitCheckWorkSheetPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(lifeHabitCheckWorkSheetStatusProvider);

    return GradationLayout(
      title: '生活習慣チェックシート',
      showDrawer: false,
      reload: () {
        ref.refresh(lifeHabitCheckWorkSheetStatusProvider);
      },
      body: status.map(
        loading: (_) => const SizedBox(),
        loaded: (loadedState) {
          final records = loadedState.list;

          return Column(
            children: [
              const SizedBox(height: 16),
              Text(
                'チェックシートの所要時間は5分程度です。(全16問)',
                style: IHSTextStyle.small,
              ),
              const SizedBox(height: 32),
              IHSButton(
                '入力画面へ',
                type: IHSButtonType.primary,
                onPressed: () {
                  PageNavigator.navigatePage(
                      context, const LifeHabitQuestionPage());
                },
              ),
              if (records.isNotEmpty) ...[
                const SizedBox(height: 32),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '入力一覧',
                    style: IHSTextStyle.medium.copyWith(
                      color: IHSColors.pink500,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Flexible(
                  child: RecordListView(
                    records:
                        records.map((e) => Record(date: e.answerDate)).toList(),
                    onTap: (index, record) {
                      final answerHeaderId = records[index].answerHeaderId;
                      PageNavigator.navigatePage(
                        context,
                        LifeHabitQuestionResultPage(
                          type: QuestionAnswerResultType.past,
                          answerHeaderId: answerHeaderId,
                          date: record.date.yyyymmdd,
                        ),
                      );
                    },
                  ),
                ),
              ],
              const SizedBox(height: 16),
            ],
          );
        },
      ),
    );
  }
}

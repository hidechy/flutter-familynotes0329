import 'package:flutter/material.dart';

import '../../../../extension/date_time.dart';
import '../../../../util/util.dart';
import '../../../component/ihs_button/type.dart';
import '../../../component/ihs_button/widget.dart';
import '../../../component/ihs_dialog/widget.dart';
import '../../../style/text_style.dart';
import '../../../style/texts.dart';
import '../../life_habit_question_result/type.dart';
import '../../life_habit_question_result/widget.dart';
import '../back_to_previous_button/widget.dart';
import '../notifier.dart';
import '../state.dart';

/// 最後の設問のボタン群表示
class LastQuestionButtonGroup extends StatelessWidget {
  const LastQuestionButtonGroup({
    super.key,
    required this.currentChoiceId,
    required this.notifier,
    required this.question,
  });

  final int? currentChoiceId;
  final LifeHabitQuestionStateNotifier notifier;
  final QuestionState question;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('回答お疲れ様でした。', style: IHSTextStyle.small),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BackToPreviousButton(notifier: notifier),
            const SizedBox(width: 16),
            IHSButton(
              '回答結果を見る',
              type: IHSButtonType.primary,
              onPressed: () async {
                // 未回答の場合ダイアログを表示させる
                if (currentChoiceId == null) {
                  await IHSDialog(
                    context: context,
                    title: '回答必須です。\n入力内容を再度ご確認お願いします。',
                    okStr: '閉じる',
                    textAlign: TextAlign.start,
                  ).showAlert();
                  return;
                }

                await notifier.onTapSave(
                  onSuccess: (answerHeaderId) async {
                    IHSUtil.showSnackBar(
                      msg: IHSTexts.createSuccess,
                    );
                    await Navigator.of(context).pushReplacement(
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => LifeHabitQuestionResultPage(
                          type: QuestionAnswerResultType.latest,
                          answerHeaderId: answerHeaderId,
                          date: DateTime.now().yyyymmdd,
                        ),
                      ),
                    );
                  },
                  onFailure: (msg) {
                    IHSUtil.showSnackBar(msg: msg);
                  },
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}

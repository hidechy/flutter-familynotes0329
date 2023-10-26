import 'package:flutter/material.dart';

import '../../../component/ihs_button/type.dart';
import '../../../component/ihs_button/widget.dart';
import '../../../component/ihs_dialog/widget.dart';
import '../back_to_previous_button/widget.dart';
import '../notifier.dart';
import '../state.dart';

/// 設問移動ボタン群表示
class QuestionNavigationButtonGroup extends StatelessWidget {
  const QuestionNavigationButtonGroup({
    super.key,
    required this.currentQuestionIndex,
    required this.currentChoiceId,
    required this.notifier,
    required this.question,
  });

  final int currentQuestionIndex;
  final int? currentChoiceId;
  final LifeHabitQuestionStateNotifier notifier;
  final QuestionState question;

  @override
  Widget build(BuildContext context) {
    const firstQuestionIndex = 0;
    final isShowFirstQuestion = currentQuestionIndex == firstQuestionIndex;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (!isShowFirstQuestion) BackToPreviousButton(notifier: notifier),
        const SizedBox(width: 16),
        IHSButton(
          '次へ',
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

            notifier.setNextQuestionIndex();
            final nextQuestionId = notifier.getNextQuestion().id;
            // 次の設問が回答済みの場合は、その回答を次設問で選択状態で表示させる
            if (notifier.isQuestionAnswerd(nextQuestionId)) {
              notifier.setNextQuestionAnswerdChoiceId();
              return;
            }

            // 次の設問がまだ未回答の場合は、未回答状態で表示させる
            notifier.setNextQuestionNoAnswerChoiceId();
          },
        )
      ],
    );
  }
}

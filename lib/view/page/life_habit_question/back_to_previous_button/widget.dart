import 'package:flutter/material.dart';

import '../../../component/ihs_button/type.dart';
import '../../../component/ihs_button/widget.dart';
import '../notifier.dart';

class BackToPreviousButton extends StatelessWidget {
  const BackToPreviousButton({
    super.key,
    required this.notifier,
  });

  final LifeHabitQuestionStateNotifier notifier;

  @override
  Widget build(BuildContext context) {
    return IHSButton(
      '前へ',
      type: IHSButtonType.primary,
      onPressed: () {
        notifier
          ..setPreviousQuestionIndex()
          ..setPreviousQuestionId()
          ..setPreviousChoiceId();
      },
    );
  }
}

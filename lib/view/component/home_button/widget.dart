import 'package:flutter/material.dart';

import '../ihs_button/type.dart';
import '../ihs_button/widget.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
    this.label = 'ホームヘ戻る',
    this.type = IHSButtonType.primary,
    this.onPressed,
  });

  final String label;
  final IHSButtonType type;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IHSButton(
      label,
      type: type,
      onPressed: onPressed ??
          () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
    );
  }
}

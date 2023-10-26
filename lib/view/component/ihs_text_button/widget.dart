import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/text_style.dart';

class IHSTextButton extends StatelessWidget {
  const IHSTextButton(
    this.text, {
    super.key,
    this.align = TextAlign.center,
    required this.onPressed,
  });

  final String text;
  final TextAlign align;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size(50, 16),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: align,
          style: IHSTextStyle.small.copyWith(
            decoration: TextDecoration.underline,
            color: IHSColors.pink500,
            height: 1,
          ),
        ),
      ),
    );
  }
}

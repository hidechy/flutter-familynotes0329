import 'package:family_notes/view/component/ihs_button/type.dart';
import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/text_style.dart';

/// IHSのボタンコンポーネント
class IHSButton extends StatelessWidget {
  const IHSButton(
    this.title, {
    super.key,
    required this.type,
    required this.onPressed,
    this.textAlign,
    this.verticalInnerPadding,
    this.horizontalInnerPadding,
  });

  final String title;
  final IHSButtonType type;
  final TextAlign? textAlign;
  final VoidCallback? onPressed;
  final double? verticalInnerPadding;
  final double? horizontalInnerPadding;

  Color get backgroundColor {
    switch (type) {
      case IHSButtonType.primary:
        return IHSColors.pink400;
      case IHSButtonType.gray:
        return IHSColors.black400;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.symmetric(
          vertical: verticalInnerPadding ?? 16,
          horizontal: horizontalInnerPadding ?? 24,
        ),
        disabledBackgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        textAlign: textAlign,
        style: IHSTextStyle.small.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:family_notes/view/style/colors.dart';
import 'package:flutter/material.dart';

import '../../style/text_style.dart';

/// IHSの画像ボタンコンポーネント
class IHSImageButton extends StatelessWidget {
  const IHSImageButton(
    this.image, {
    super.key,
    required this.title,
    required this.onPressed,
    this.textAlign,
    this.backgroundColor,
    this.disabledBackgroundColor,
    this.horizontalMargin = 4,
  });

  final Widget image;
  final String title;
  final TextAlign? textAlign;
  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final double? horizontalMargin;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? IHSColors.pink400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        disabledBackgroundColor: disabledBackgroundColor ?? IHSColors.pink400,
      ),
      onPressed: onPressed,
      child: FittedBox(
        child: Row(
          children: [
            image,
            SizedBox(width: horizontalMargin),
            Text(
              title,
              textAlign: textAlign,
              style: IHSTextStyle.xSmall.copyWith(
                color: IHSColors.white,
                // Androidだと文字が上下中央に来てくれないため
                height: Platform.isIOS ? null : 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

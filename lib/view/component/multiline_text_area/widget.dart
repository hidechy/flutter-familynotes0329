import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/text_style.dart';

/// 複数行のテキストエリア
class MultilineTextArea extends StatelessWidget {
  const MultilineTextArea(
    this.text, {
    super.key,
    this.maxLines,
    this.width,
    this.padding = const EdgeInsets.all(16),
    this.color = IHSColors.white,
    this.borderColor = IHSColors.black800,
  });

  final String text;
  final int? maxLines;
  final double? width;
  final EdgeInsets padding;
  final Color color;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: borderColor),
      ),
      child: Text(
        text,
        maxLines: maxLines,
        style: IHSTextStyle.small,
      ),
    );
  }
}

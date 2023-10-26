import 'package:flutter/material.dart';

import '../../style/text_style.dart';

class PrefixText extends StatelessWidget {
  const PrefixText({
    super.key,
    required this.content,
    this.prefix = '※',
    this.prefixStyle,
    this.contentStyle,
  });

  final String prefix;
  final String content;
  final TextStyle? prefixStyle;
  final TextStyle? contentStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(prefix, style: prefixStyle ?? IHSTextStyle.xSmall),
        Flexible(
          child: Text(
            content,
            style: contentStyle ?? IHSTextStyle.xSmall,
          ),
        ),
      ],
    );
  }
}

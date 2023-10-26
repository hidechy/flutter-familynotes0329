import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../../style/text_style.dart';

class FieldTitle extends StatelessWidget {
  const FieldTitle({
    super.key,
    required this.title,
    required this.isRequired,
  });

  final String title;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                title,
                style: IHSTextStyle.small.copyWith(
                  height: 1,
                ),
              ),
              if (isRequired) ...[
                const SizedBox(width: 8),
                Text(
                  '必須',
                  style: IHSTextStyle.xSmall.copyWith(
                    color: IHSColors.red,
                    height: 1,
                  ),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 8)
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../../style/text_style.dart';

class FieldSeparatedTitle extends StatelessWidget {
  const FieldSeparatedTitle({
    super.key,
    required this.forwardTitle,
    required this.backTitle,
    required this.isRequired,
  });

  final String forwardTitle;
  final String backTitle;
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
                forwardTitle,
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
              ...[
                Text(
                  backTitle,
                  style: IHSTextStyle.small.copyWith(
                    height: 1,
                  ),
                ),
              ]
            ],
          ),
        ),
        const SizedBox(height: 8)
      ],
    );
  }
}

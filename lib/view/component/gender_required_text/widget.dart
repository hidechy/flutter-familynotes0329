import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/text_style.dart';

class GenderRequiredText extends StatelessWidget {
  const GenderRequiredText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '性別',
          style: IHSTextStyle.small.copyWith(height: 1),
        ),
        const SizedBox(width: 8),
        Text(
          '必須',
          style: IHSTextStyle.xSmall.copyWith(
            color: IHSColors.red,
            height: 1,
          ),
        ),
      ],
    );
  }
}

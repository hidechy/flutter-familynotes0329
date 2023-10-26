import 'package:flutter/material.dart';

import '../../../../style/colors.dart';
import '../../../../style/text_style.dart';

class DoseTypeLabel extends StatelessWidget {
  const DoseTypeLabel({
    super.key,
    required this.dosingType,
  });

  final String dosingType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(color: IHSColors.pink500),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        dosingType,
        style:
            IHSTextStyle.xSmall.copyWith(color: IHSColors.pink500, height: 1),
        textAlign: TextAlign.start,
        textHeightBehavior: const TextHeightBehavior(
          applyHeightToFirstAscent: false,
          applyHeightToLastDescent: false,
        ),
      ),
    );
  }
}

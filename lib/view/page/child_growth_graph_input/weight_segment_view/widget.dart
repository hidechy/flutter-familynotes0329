import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../../style/text_style.dart';
import '../state.dart';

/// g/kgを選択するセグメントView
class WeightSegmentView extends StatelessWidget {
  const WeightSegmentView({
    super.key,
    required this.selectedType,
    required this.onTap,
  });

  final WeightType selectedType;
  final Function(WeightType) onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _SegmentButton(
          type: WeightType.kg,
          selected: WeightType.kg == selectedType,
          onPressed: () {
            onTap(WeightType.kg);
          },
        ),
        const SizedBox(width: 8),
        _SegmentButton(
          type: WeightType.g,
          selected: WeightType.g == selectedType,
          onPressed: () {
            onTap(WeightType.g);
          },
        ),
      ],
    );
  }
}

class _SegmentButton extends StatelessWidget {
  const _SegmentButton({
    required this.type,
    required this.selected,
    required this.onPressed,
  });

  final WeightType type;
  final bool selected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 32,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: selected ? IHSColors.pink200 : IHSColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide(
            color: selected ? IHSColors.pink300 : IHSColors.black200,
          ),
          disabledBackgroundColor: IHSColors.pink200,
        ),
        onPressed: onPressed,
        child: Text(
          type.label,
          style: IHSTextStyle.small.copyWith(height: 1),
        ),
      ),
    );
  }
}

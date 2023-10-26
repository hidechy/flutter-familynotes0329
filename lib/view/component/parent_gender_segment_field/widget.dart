import 'package:flutter/material.dart';

import '../../../../type/gender.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';

/// 親の性別を選択するコンポーネント
class ParentGenderSegmentView extends StatelessWidget {
  const ParentGenderSegmentView({
    super.key,
    required this.selectedType,
    required this.onTap,
  });

  final Gender selectedType;
  final Function(Gender) onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _SegmentButton(
            type: Gender.woman,
            selected: Gender.woman == selectedType,
            onPressed: () {
              onTap(Gender.woman);
            },
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _SegmentButton(
            type: Gender.man,
            selected: Gender.man == selectedType,
            onPressed: () {
              onTap(Gender.man);
            },
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _SegmentButton(
            type: Gender.unknown,
            selected: Gender.unknown == selectedType,
            onPressed: () {
              onTap(Gender.unknown);
            },
          ),
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

  final Gender type;
  final bool selected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: selected ? IHSColors.pink200 : IHSColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          disabledBackgroundColor: IHSColors.pink200,
          side: BorderSide(
            color: selected ? IHSColors.pink300 : IHSColors.black400,
            width: 2,
          ),
        ),
        onPressed: onPressed,
        child: FittedBox(
          child: Text(
            type.adultLabel,
            style: IHSTextStyle.small,
          ),
        ),
      ),
    );
  }
}

import 'package:family_notes/view/page/child_growth_graph/state.dart';
import 'package:family_notes/view/style/colors.dart';
import 'package:flutter/material.dart';

import '../../../style/text_style.dart';

class SegmentView extends StatelessWidget {
  const SegmentView({
    super.key,
    required this.selectedType,
    required this.onTap,
  });

  final ChildGraphType selectedType;
  final Function(ChildGraphType) onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _SegmentButton(
            type: ChildGraphType.heightAndWeight,
            selected: ChildGraphType.heightAndWeight == selectedType,
            onPressed: () {
              onTap(ChildGraphType.heightAndWeight);
            },
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _SegmentButton(
            type: ChildGraphType.head,
            selected: ChildGraphType.head == selectedType,
            onPressed: () {
              onTap(ChildGraphType.head);
            },
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _SegmentButton(
            type: ChildGraphType.chest,
            selected: ChildGraphType.chest == selectedType,
            onPressed: () {
              onTap(ChildGraphType.chest);
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

  final ChildGraphType type;
  final bool selected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: selected ? IHSColors.pink300 : IHSColors.black400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12),
        disabledBackgroundColor: IHSColors.pink300,
      ),
      onPressed: onPressed,
      child: Text(
        type.label,
        style: IHSTextStyle.small.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}

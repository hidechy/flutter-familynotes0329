import 'package:flutter/material.dart';

import '/view/style/colors.dart';
import '/view/style/text_style.dart';

class ChildCountButton extends StatelessWidget {
  const ChildCountButton(
    this.title, {
    super.key,
    required this.selected,
    required this.onTap,
  });

  final String title;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: selected ? IHSColors.pink200 : IHSColors.white,
        side: BorderSide(
          color: selected ? IHSColors.pink300 : IHSColors.black200,
        ),
        shape: const RoundedRectangleBorder(),
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          title,
          style: IHSTextStyle.small,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../../style/text_style.dart';

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem({
    super.key,
    required this.buttonText,
    required this.onTap,
    required this.endItem,
    this.trailing,
  });

  final String buttonText;
  final VoidCallback onTap;
  final bool endItem;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        border: endItem
            ? const Border(
                top: BorderSide(color: IHSColors.black200),
                bottom: BorderSide(color: IHSColors.black200),
              )
            : const Border(
                top: BorderSide(color: IHSColors.black200),
              ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        title: Align(
          alignment: Alignment.centerLeft,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Row(
              children: [
                Text(
                  buttonText,
                  style: IHSTextStyle.small,
                ),
                const SizedBox(width: 4),
                trailing ?? const SizedBox.shrink(),
              ],
            ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

import '../../style/colors.dart';

class SwitchArea extends StatelessWidget {
  const SwitchArea({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeColor = IHSColors.pink400,
    this.trackColor = IHSColors.black200,
  });

  final bool value;
  final Color activeColor;
  final Color trackColor;
  final void Function(bool value) onChanged;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      activeColor: activeColor,
      trackColor: trackColor,
      value: value,
      onChanged: onChanged,
    );
  }
}

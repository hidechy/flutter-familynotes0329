import 'package:flutter/material.dart';

import '../../../../style/colors.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({
    super.key,
    required this.active,
    required this.onPressed,
  });

  final bool active;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 24,
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
      color: active ? IHSColors.pink400 : IHSColors.pink400.withOpacity(0.3),
      onPressed: onPressed,
    );
  }
}

class ForwardArrow extends StatelessWidget {
  const ForwardArrow({
    super.key,
    required this.active,
    required this.onPressed,
  });

  final bool active;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 24,
      icon: const Icon(Icons.arrow_forward_ios_rounded),
      color: active ? IHSColors.pink400 : IHSColors.pink400.withOpacity(0.3),
      onPressed: onPressed,
    );
  }
}

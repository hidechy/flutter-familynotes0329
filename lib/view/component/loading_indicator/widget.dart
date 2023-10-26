import 'package:flutter/material.dart';

import '../../style/colors.dart';

/// ローディング表示コンポーネント
class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      color: IHSColors.pink500,
      strokeWidth: 5,
    ));
  }
}

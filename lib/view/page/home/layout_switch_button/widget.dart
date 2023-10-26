import 'package:flutter/material.dart';

import '/view/style/colors.dart';
import '/view/style/text_style.dart';
import '../body/state.dart';

/// ホーム画面に下部に表示するボタン
///   妊婦中の場合: 「お子さまの画面へ」と表示
///   子どもの場合: 「妊婦中の画面へ」と表示
class HomeLayoutSwitchButton extends StatelessWidget {
  const HomeLayoutSwitchButton({
    super.key,
    required this.homeLayout,
    required this.onTap,
    required this.heightFactor,
  });

  final HomeLayout homeLayout;
  final VoidCallback onTap;
  final double heightFactor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 64 * heightFactor,
        decoration: BoxDecoration(
          color: IHSColors.white,
          border: Border.all(
            color: IHSColors.black200,
            width: 1.5,
          ),
        ),
        child: Center(
          child: Text(
            homeLayout == HomeLayout.baby ? 'お子さまの画面へ' : '妊婦中の画面へ',
            style: IHSTextStyle.small.copyWith(
              color: IHSColors.black800,
            ),
          ),
        ),
      ),
    );
  }
}

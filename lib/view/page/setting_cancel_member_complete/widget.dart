import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../util/page_navigator.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';

/// 退会完了
class SettingCancelMemberCompletePage extends StatelessWidget {
  const SettingCancelMemberCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: IHSColors.pink100,
        child: Column(
          children: [
            Expanded(child: Container()),
            Column(
              children: [
                CircleAvatar(
                  radius: 120,
                  backgroundColor: IHSColors.white,
                  child: SizedBox(
                    height: 220,
                    child: Image.asset(Assets.images.suilogLogo.path),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  '退会手続きが完了いたしました。\nご利用ありがとうございました。',
                  style: IHSTextStyle.small,
                ),
                const SizedBox(height: 24),
                IHSButton(
                  'アプリトップへ',
                  type: IHSButtonType.primary,
                  onPressed: () {
                    PageNavigator.navigatePage(context, null, type: PageNavigator.typePopUntilFirst);
                  },
                )
              ],
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}

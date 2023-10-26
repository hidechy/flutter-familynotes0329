import 'package:flutter/material.dart';

import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/main_layout/widget.dart';
import '../../style/text_style.dart';

/// パスワードリセット完了画面
/// - 設定画面から実施する方
class SettingPasswordResetCompletedPage extends StatelessWidget {
  const SettingPasswordResetCompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'パスワード変更',
      showDrawer: false,
      automaticallyImplyLeading: false,
      body: Column(
        children: [
          const SizedBox(height: 48),
          FittedBox(
            child: Text(
              'パスワードが変更されました。',
              textAlign: TextAlign.center,
              style: IHSTextStyle.medium,
            ),
          ),
          const SizedBox(height: 32),
          IHSButton(
            'プロフィールへ',
            type: IHSButtonType.primary,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}

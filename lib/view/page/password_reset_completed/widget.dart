import 'package:flutter/material.dart';

import '../../../util/page_navigator.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/main_layout/widget.dart';
import '../../style/text_style.dart';
import '../root/widget.dart';

/// パスワードリセット完了画面
class PasswordResetCompletedPage extends StatelessWidget {
  const PasswordResetCompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      showAppBar: false,
      body: Column(
        children: [
          const SizedBox(height: 32),
          FittedBox(
            child: Text(
              'パスワードの変更が完了しました。',
              textAlign: TextAlign.center,
              style: IHSTextStyle.medium,
            ),
          ),
          const SizedBox(height: 32),
          Text(
            '新しいパスワードで\nログインしてください。',
            textAlign: TextAlign.center,
            style: IHSTextStyle.small,
          ),
          const SizedBox(height: 32),
          IHSButton(
            'ログインへ',
            type: IHSButtonType.primary,
            onPressed: () {
              PageNavigator.navigatePage(context, const RootPage(), type: PageNavigator.typePushReplacement);
            },
          ),
        ],
      ),
    );
  }
}

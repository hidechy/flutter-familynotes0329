import 'package:flutter/material.dart';

import '../../../util/page_navigator.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/main_layout/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../profile_input/widget.dart';

/// アカウント作成完了画面
class SignUpCompletedPage extends StatelessWidget {
  const SignUpCompletedPage({
    super.key,
    required this.email,
  });

  final String email;

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      showAppBar: false,
      body: Column(
        children: [
          const SizedBox(height: 11),
          Text(
            '認証コードが確認できました。',
            style: IHSTextStyle.medium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          Text(
            'ご登録されたメールアドレスを\n認証しました。',
            style: IHSTextStyle.small,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          Text(
            email,
            style: IHSTextStyle.medium.copyWith(
              color: IHSColors.pink500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          Text(
            '次にプロフィール登録を行ってください。',
            style: IHSTextStyle.small,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          IHSButton(
            '登録画面へ',
            type: IHSButtonType.primary,
            onPressed: () {
              PageNavigator.navigatePage(
                  context, ProfileInputPage(email: email),
                  type: PageNavigator.typePushReplacement);
            },
          ),
        ],
      ),
    );
  }
}

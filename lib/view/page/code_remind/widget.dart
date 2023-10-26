import 'package:family_notes/view/page/password_reset_code_input/widget.dart';
import 'package:flutter/material.dart';

import '/view/component/ihs_button/type.dart';
import '/view/component/ihs_button/widget.dart';
import '/view/component/main_layout/widget.dart';
import '/view/style/colors.dart';
import '/view/style/text_style.dart';
import '../../../util/page_navigator.dart';
import '../code_confirm/widget.dart';
import 'type.dart';

/// 「認証コードをご確認ください」画面
class CodeRemindPage extends StatelessWidget {
  const CodeRemindPage({
    super.key,
    required this.email,
    required this.emailSendMode,
  });

  final String email;
  final EmailSendMode emailSendMode;

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'メールアドレス変更',
      showDrawer: false,
      showAppBar: emailSendMode == EmailSendMode.resetEmail,
      body: Column(
        children: [
          const SizedBox(height: 11),
          Text(
            '認証コードをご確認ください。',
            style: IHSTextStyle.medium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          Text(
            'ご登録されたメールアドレスに\n認証コードを送信しました。',
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
          SizedBox(
            width: 143,
            child: IHSButton(
              '次へ',
              type: IHSButtonType.primary,
              onPressed: () {
                _onTapNextButton(context);
              },
            ),
          ),
          const SizedBox(height: 32),
          Text(
            '※ 迷惑メールフォルダやゴミ箱に自動的に振り分けられている可能性がありますので、一度ご確認いただきますようお願いいたします。',
            style: IHSTextStyle.xSmall,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  Future<void> _onTapNextButton(BuildContext context) async {
    switch (emailSendMode) {
      case EmailSendMode.signUp:
      case EmailSendMode.resetEmail:
        await PageNavigator.navigatePage(
            context,
            CodeConfirmPage(
              email: email,
              emailSendMode: emailSendMode,
            ),
            type: PageNavigator.typePushReplacement);
        break;
      case EmailSendMode.forgettenPassword:
        await PageNavigator.navigatePage(
            context,
            PasswordResetCodeInputPage(
              email: email,
            ),
            type: PageNavigator.typePushReplacement);
        break;
    }
  }
}

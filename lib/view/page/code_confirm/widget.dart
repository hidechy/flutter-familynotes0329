// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../provider/signup/notifier.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/ihs_dialog/widget.dart';
import '../../component/ihs_text_button/widget.dart';
import '../../component/main_layout/widget.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../code_remind/type.dart';
import '../email_resend/widget.dart';
import '../email_reset_complete/widget.dart';
import '../sign_up/widget.dart';
import '../sign_up_completed/widget.dart';
import '../undeliverd_email/widget.dart';
import 'notifier.dart';

/// 認証コード確認画面（アカウント新規作成orメアド変更で使用）
class CodeConfirmPage extends ConsumerWidget {
  CodeConfirmPage({
    super.key,
    required this.email,
    required this.emailSendMode,
  });

  final String email;

  // EmailSendMode.signUpの場合のみ「メールアドレスを再入力する」表示
  final EmailSendMode emailSendMode;
  final _authCodeController = getController(
    type: ValidateTextFieldType.authCode,
    value: '',
  );

  FormGroup get form => FormGroup(
        {
          ValidateTextFieldType.authCode.name: _authCodeController,
        },
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(condeConfirmStateProvider.notifier);
    final scrollController = ScrollController();

    return MainLayout(
      showAppBar: emailSendMode == EmailSendMode.resetEmail,
      title: 'メールアドレス変更',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      body: ReactiveForm(
        formGroup: form,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              const SizedBox(height: 11),
              Text(
                '認証コードを確認します。',
                style: IHSTextStyle.medium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 18),
              Text(
                'ご登録されたメールアドレスに\nお送りした認証コードを\n入力してください。',
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '送付された認証コード',
                    style: IHSTextStyle.xSmall,
                  ),
                  const SizedBox(height: 7),
                  ValidateTextField(
                    type: ValidateTextFieldType.authCode,
                    controller: _authCodeController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      notifier.onChangedAuthCode(value);
                      return value;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: 143,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    IHSButton(
                      '次へ',
                      type: IHSButtonType.primary,
                      onPressed: () {
                        form.markAllAsTouched();
                        if (!form.valid) {
                          return;
                        }

                        notifier.onTappedSend(
                          email: email,
                          sendMode: emailSendMode,
                          onSuccess: () {
                            _pushToNextPage(context);
                          },
                          onFailure: (msg) {
                            IHSDialog(
                              context: context,
                              title: '認証コードが間違っています。\n認証コードを再度ご確認ください。',
                              okStr: '確認',
                              okHorizontalPadding: 48,
                              onTap: (_) {},
                            ).showAlert();
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    IHSButton(
                      'キャンセル',
                      type: IHSButtonType.gray,
                      onPressed: () {
                        _onTappedCancel(context, ref);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 27),
              IHSTextButton(
                '認証コードを再送信する',
                onPressed: () {
                  notifier.onTappedCodeResend(
                    emailSendMode: emailSendMode,
                    email: email,
                    onSuccess: () {
                      IHSDialog(
                        context: context,
                        title: '認証コードを再送信しました。',
                        okStr: '確認',
                        onTap: (_) {},
                      ).showAlert();
                    },
                    onFailure: (msg) {
                      IHSUtil.showSnackBar(msg: msg);
                    },
                  );
                },
              ),
              if (emailSendMode == EmailSendMode.signUp) ...[
                const SizedBox(height: 32),
                IHSTextButton(
                  'メールアドレスを再入力する',
                  onPressed: () {
                    PageNavigator.navigatePage(
                      context,
                      EmailResendPage(
                        oldEmail: email,
                      ),
                      type: PageNavigator.typePushReplacement,
                    );
                  },
                ),
              ],
              const SizedBox(height: 32),
              IHSTextButton(
                'メールが届かない場合はこちら',
                onPressed: () {
                  PageNavigator.navigatePage(
                    context,
                    const UndeliverdEmailPage(),
                  );
                },
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  void _pushToNextPage(BuildContext context) {
    switch (emailSendMode) {
      case EmailSendMode.signUp:
        // 新規アカウント作成完了画面へ
        PageNavigator.navigatePage(context, SignUpCompletedPage(email: email),
            type: PageNavigator.typePushReplacement);
        return;
      case EmailSendMode.resetEmail:
        // メール変更完了画面
        PageNavigator.navigatePage(
            context, EmailResetCompletedPage(email: email),
            type: PageNavigator.typePushReplacement);
        return;
      case EmailSendMode.forgettenPassword:
        // パスワードお忘れのコード認証は別画面で実施するため通らない想定
        break;
    }
  }

  void _onTappedCancel(BuildContext context, WidgetRef ref) {
    switch (emailSendMode) {
      case EmailSendMode.signUp:
        // これまでのサインアップ情報をリセット
        ref.read(signUpStateProvider.notifier).reset();
        // 戻る（サインアップ画面）
        PageNavigator.navigatePage(context, SignUpPage(),
            type: PageNavigator.typePushReplacement);
        return;
      case EmailSendMode.resetEmail:
        // 戻る（プロフィール入力画面）
        Navigator.of(context).pop();
        return;
      case EmailSendMode.forgettenPassword:
        // 同上
        break;
    }
  }
}

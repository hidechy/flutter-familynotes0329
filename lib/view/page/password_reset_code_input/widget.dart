import 'package:family_notes/view/page/password_reset_completed/widget.dart';
import 'package:family_notes/view/page/root/widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/ihs_dialog/widget.dart';
import '../../component/ihs_text_button/widget.dart';
import '../../component/main_layout/widget.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import '../../style/text_style.dart';
import '../undeliverd_email/widget.dart';
import 'notifier.dart';

/// パスワード再設定 - 認証コード入力画面
class PasswordResetCodeInputPage extends ConsumerWidget {
  PasswordResetCodeInputPage({
    required this.email,
    super.key,
  });

  final String email;

  final _authCodeController = getController(
    type: ValidateTextFieldType.authCode,
    value: '',
  );
  final _passwordController = getController(
    type: ValidateTextFieldType.password,
    value: '',
  );
  final _passwordConfirmController = getController(
    type: ValidateTextFieldType.passwordConfirmation,
    value: '',
  );

  FormGroup get form => FormGroup(
        {
          ValidateTextFieldType.email.name: _authCodeController,
          ValidateTextFieldType.password.name: _passwordController,
          ValidateTextFieldType.passwordConfirmation.name:
              _passwordConfirmController,
        },
        validators: [
          Validators.mustMatch(
            ValidateTextFieldType.password.name,
            ValidateTextFieldType.passwordConfirmation.name,
            markAsDirty: false,
          )
        ],
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(passwordResetCodeConfirmStateProvider.notifier);
    return MainLayout(
      showAppBar: false,
      body: ReactiveForm(
        formGroup: form,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 11),
              Text(
                'パスワード再設定',
                style: IHSTextStyle.medium,
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
                  const SizedBox(height: 8),
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
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '新しいパスワード',
                    style: IHSTextStyle.xSmall,
                  ),
                  const SizedBox(height: 8),
                  ValidateTextField(
                    key: const Key('PasswordTextField'),
                    type: ValidateTextFieldType.password,
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) {
                      notifier.onChangedPassword(value.trim());
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '新しいパスワード（確認用）',
                    style: IHSTextStyle.xSmall,
                  ),
                  const SizedBox(height: 8),
                  ValidateTextField(
                    key: const Key('PasswordTextField_Confirm'),
                    type: ValidateTextFieldType.passwordConfirmation,
                    controller: _passwordConfirmController,
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) {
                      notifier.onChangedConfirmPassword(value.trim());
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                '8桁以上\n英大文字、英小文字、数字、記号\nのうち最低2種類を利用。',
                style: IHSTextStyle.small,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: 144,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    IHSButton(
                      '完了',
                      type: IHSButtonType.primary,
                      onPressed: () {
                        form.markAllAsTouched();
                        if (!form.valid) {
                          return;
                        }

                        notifier.onTappedSend(
                          email: email,
                          onSuccess: () {
                            // パスワード変更完了画面
                            PageNavigator.navigatePage(
                                context, const PasswordResetCompletedPage(),
                                type: PageNavigator.typePushReplacement);
                          },
                          onFailure: (msg) {
                            IHSUtil.showSnackBar(msg: msg);
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    IHSButton(
                      'キャンセル',
                      type: IHSButtonType.gray,
                      onPressed: () {
                        _onTapCancel(context);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              IHSTextButton(
                '認証コードを再送信する',
                onPressed: () {
                  notifier.onTappedCodeResend(
                    email: email,
                    onSuccess: () {
                      IHSDialog(
                              context: context,
                              title: '認証コードを再送信しました。',
                              okStr: '確認',
                              onTap: (_) {})
                          .showAlert();
                    },
                    onFailure: (msg) {
                      IHSUtil.showSnackBar(msg: msg);
                    },
                  );
                },
              ),
              const SizedBox(height: 32),
              IHSTextButton(
                'メールが届かない場合はこちら',
                onPressed: () {
                  PageNavigator.navigatePage(
                      context, const UndeliverdEmailPage());
                },
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapCancel(BuildContext context) {
    // トップに戻る
    PageNavigator.navigatePage(context, const RootPage(),
        type: PageNavigator.typePushReplacement);
  }
}

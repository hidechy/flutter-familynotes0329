import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '/view/component/ihs_button/type.dart';
import '/view/component/ihs_button/widget.dart';
import '/view/component/main_layout/widget.dart';
import '/view/component/validate_text_field/type.dart';
import '/view/component/validate_text_field/widget.dart';
import '/view/page/code_remind/type.dart';
import '/view/style/text_style.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';

import '../code_remind/widget.dart';
import '../root/widget.dart';
import 'notifier.dart';

/// メール送信画面（パスワード再設定のメールアドレス入力）
class PasswordResetPage extends ConsumerWidget {
  PasswordResetPage({super.key});

  final _emailController = getController(
    type: ValidateTextFieldType.email,
    value: '',
  );

  FormGroup get form => FormGroup(
        {ValidateTextFieldType.email.name: _emailController},
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(passwordResetStateProvider);
    final notifier = ref.watch(passwordResetStateProvider.notifier);

    final form = FormGroup({
      ValidateTextFieldType.email.name: _emailController,
    });

    return MainLayout(
      showAppBar: false,
      body: ReactiveForm(
        formGroup: form,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 48),
              Text(
                'パスワード再設定',
                style: IHSTextStyle.medium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              Text(
                'メールアドレスの確認をします。\nアカウントを作成したメールアドレスを入力して、送信ボタンを押してください。',
                style: IHSTextStyle.small,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'メールアドレス',
                    style: IHSTextStyle.xSmall,
                  ),
                  const SizedBox(height: 8),
                  ValidateTextField(
                    type: ValidateTextFieldType.email,
                    hintText: 'example@test.jp',
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      notifier.onChangedEmail(value);
                      return value;
                    },
                  )
                ],
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: 144,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    IHSButton(
                      '送信',
                      type: IHSButtonType.primary,
                      onPressed: () {
                        form.markAllAsTouched();
                        if (!form.valid) {
                          return;
                        }

                        notifier.onTapRegister(
                          onSuccess: () {
                            PageNavigator.navigatePage(
                              context,
                              CodeRemindPage(
                                emailSendMode: EmailSendMode.forgettenPassword,
                                email: state.email,
                              ),
                              type: PageNavigator.typePushReplacement,
                            );
                          },
                          onFailure: (msg) {
                            if (msg.isEmpty) {
                              return;
                            }

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
                        PageNavigator.navigatePage(
                          context,
                          const RootPage(),
                          type: PageNavigator.typePushReplacement,
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

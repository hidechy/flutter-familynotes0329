import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/ihs_text_button/widget.dart';

import '../../component/main_layout/widget.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../code_remind/type.dart';
import '../code_remind/widget.dart';
import '../root/widget.dart';
import 'agreement_area/widget.dart';
import 'notifier.dart';

class SignUpPage extends ConsumerWidget {
  SignUpPage({super.key});

  final _emailController = getController(
    type: ValidateTextFieldType.email,
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
          ValidateTextFieldType.email.name: _emailController,
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

  // コントローラーリセット
  void resetController() {
    _emailController.reset();
    _passwordController.reset();
    _passwordConfirmController.reset();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signUpInputStateProvider);
    final notifier = ref.watch(signUpInputStateProvider.notifier);

    return MainLayout(
      showAppBar: false,
      reload: () {
        resetController();
        ref.refresh(signUpInputStateProvider);
      },
      body: ReactiveForm(
        formGroup: form,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 48),
                  Text(
                    '新規登録',
                    style: IHSTextStyle.medium,
                  ),
                  const SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AgreementArea(),
                      const SizedBox(height: 24),
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
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'パスワード',
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
                        'パスワード（確認用）',
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
                      const SizedBox(height: 16),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('8桁以上'),
                            Text('英大文字、英小文字、数字、記号'),
                            Text('のうち最低2種類を利用。'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: 144,
                    child: IHSButton(
                      '新規登録',
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
                                  email: state.inputData.email,
                                  emailSendMode: EmailSendMode.signUp,
                                ),
                                type: PageNavigator.typePushReplacement);
                          },
                          onFailure: (msg) {
                            IHSUtil.showSnackBar(msg: msg);
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 32),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'すでにアカウントをお持ちの方は',
                        style: IHSTextStyle.small.copyWith(
                          color: IHSColors.pink500,
                        ),
                      ),
                      IHSTextButton(
                        'こちら',
                        onPressed: () {
                          PageNavigator.navigatePage(context, const RootPage(),
                              type: PageNavigator.typePushReplacement);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../gen/assets.gen.dart';
import '../../../provider/user/notifier.dart';
import '../../../util/language.dart';
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
import '../password_reset/widget.dart';
import '../sign_up/widget.dart';

/// ログイン画面
class LoginPage extends ConsumerWidget {
  LoginPage({super.key});

  final _emailController = getController(
    type: ValidateTextFieldType.email,
    value: '',
  );
  final _passwordController = getController(
    type: ValidateTextFieldType.password,
    value: '',
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // validationが必要なフィールドのコントローラーをFormGroupとしてまとめる
    final form = FormGroup({
      ValidateTextFieldType.email.name: _emailController,
      ValidateTextFieldType.password.name: _passwordController,
    });

    return MainLayout(
      showAppBar: false,
      body: ReactiveForm(
        formGroup: form,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                height: 220,
                child: Image.asset(Assets.images.suilogLogo.path),
              ),
              const SizedBox(height: 32),
              Text(
                language.login,
                style: IHSTextStyle.medium,
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    language.email,
                    style: IHSTextStyle.xSmall,
                  ),
                  const SizedBox(height: 8),
                  ValidateTextField(
                    type: ValidateTextFieldType.email,
                    hintText: 'example@test.jp',
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => _emailController.value,
                  )
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    language.password,
                    style: IHSTextStyle.xSmall,
                  ),
                  const SizedBox(height: 8),
                  ValidateTextField(
                    type: ValidateTextFieldType.password,
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) => _passwordController.value!.trim(),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: 144,
                child: IHSButton(
                  language.login,
                  type: IHSButtonType.primary,
                  onPressed: () {
                    form.markAllAsTouched();

                    if (!form.valid) {
                      return;
                    }
                    ref.read(userStateProvider.notifier).login(
                          email: _emailController.value ?? '',
                          password: _passwordController.value ?? '',
                          onFailure: (msg) {
                            IHSUtil.showSnackBar(msg: msg);
                          },
                        );
                  },
                ),
              ),
              const SizedBox(height: 32),
              FittedBox(
                child: Column(
                  children: [
                    Text(
                      language.to_create_account,
                      style: IHSTextStyle.small.copyWith(
                        color: IHSColors.pink500,
                      ),
                    ),
                    IHSTextButton(
                      language.here,
                      onPressed: () {
                        PageNavigator.navigatePage(context, SignUpPage(),
                            type: PageNavigator.typePushReplacement);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    language.to_password_remind,
                    style: IHSTextStyle.small.copyWith(
                      color: IHSColors.pink500,
                    ),
                  ),
                  IHSTextButton(
                    language.here,
                    onPressed: () {
                      PageNavigator.navigatePage(context, PasswordResetPage(),
                          type: PageNavigator.typePushReplacement);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

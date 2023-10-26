import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '/util/util.dart';
import '/view/component/ihs_button/type.dart';
import '/view/component/ihs_button/widget.dart';
import '/view/component/main_layout/widget.dart';
import '/view/component/validate_text_field/type.dart';
import '/view/component/validate_text_field/widget.dart';
import '/view/page/code_remind/type.dart';
import '/view/style/text_style.dart';
import '../../../util/page_navigator.dart';
import '../../style/colors.dart';
import '../code_confirm/widget.dart';
import '../code_remind/widget.dart';
import 'notifier.dart';

/// メール再送画面
class EmailResendPage extends ConsumerWidget {
  EmailResendPage({
    super.key,
    required this.oldEmail,
  });

  final String oldEmail;
  final _emailController =
      getController(type: ValidateTextFieldType.email, value: '');

  FormGroup get form => FormGroup(
        {
          ValidateTextFieldType.email.name: _emailController,
        },
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(emailResendStateProvider);
    final notifier = ref.watch(emailResendStateProvider.notifier);
    return MainLayout(
      showAppBar: false,
      body: ReactiveForm(
        formGroup: form,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 11),
              Text(
                'メールアドレスを再入力する。',
                textAlign: TextAlign.center,
                style: IHSTextStyle.medium,
              ),
              const SizedBox(height: 32),
              Text(
                '入力されたメールアドレスに\n認証コードを再送信します。',
                textAlign: TextAlign.center,
                style: IHSTextStyle.small,
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'メールアドレス',
                    style: IHSTextStyle.xSmall,
                  ),
                  const SizedBox(height: 3),
                  ValidateTextField(
                    type: ValidateTextFieldType.email,
                    hintText: 'example@test.jp',
                    hintStyle: IHSTextStyle.small.copyWith(
                      color: IHSColors.black200,
                    ),
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      notifier.onChangedEmail(value);
                      return value;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 18),
              SizedBox(
                width: 143,
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

                        notifier.onTappedSend(
                          onSuccess: () {
                            IHSUtil.showSnackBar(msg: 'メールを送信しました');
                            PageNavigator.navigatePage(
                              context,
                              CodeRemindPage(
                                email: state.inputData.email,
                                emailSendMode: EmailSendMode.signUp,
                              ),
                              type: PageNavigator.typePushReplacement,
                            );
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
                      onPressed: () async {
                        // 既存のメールアドレス(oldEmail)でCodeConfirmPageに戻す
                        await PageNavigator.navigatePage(
                          context,
                          CodeConfirmPage(
                            email: oldEmail,
                            emailSendMode: EmailSendMode.signUp,
                          ),
                          type: PageNavigator.typePushReplacement,
                        );
                      },
                    ),
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

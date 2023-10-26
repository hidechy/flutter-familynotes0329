import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/main_layout/widget.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import '../../style/text_style.dart';
import '../code_remind/type.dart';
import '../code_remind/widget.dart';
import 'notifier.dart';

/// メールリセット画面
/// - 設定→プロフィール情報→メールアドレス変更より遷移
class EmailResetPage extends ConsumerWidget {
  EmailResetPage({super.key});

  final _emailController = getController(
    type: ValidateTextFieldType.email,
    value: '',
  );

  FormGroup get form => FormGroup(
        {
          ValidateTextFieldType.email.name: _emailController,
        },
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(emailResetStateProvider);
    final notifier = ref.watch(emailResetStateProvider.notifier);

    return MainLayout(
      title: 'メールアドレス変更',
      showDrawer: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Text(
              'メールアドレスを変更します。',
              style: IHSTextStyle.medium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            FittedBox(
              child: Text(
                '新しいメールアドレスを入力してください。',
                style: IHSTextStyle.small,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '新しいメールアドレス',
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
              width: 143,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  IHSButton(
                    '登録',
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
                              email: state.email,
                              emailSendMode: EmailSendMode.resetEmail,
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
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

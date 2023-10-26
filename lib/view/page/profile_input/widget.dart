import 'package:family_notes/extension/context.dart';
import 'package:family_notes/extension/string.dart';
import 'package:family_notes/view/style/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../type/gender.dart';
import '../../../util/page_navigator.dart';
import '../../../util/util.dart';
import '../../component/date_pick_text_field/widget.dart';
import '../../component/gender_required_text/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/main_layout/widget.dart';
import '../../component/parent_gender_segment_field/widget.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import '../../style/text_style.dart';
import '../profile_input_completed/widget.dart';
import 'notifier.dart';

/// プロフィール情報登録画面（新規登録時に使用）
class ProfileInputPage extends ConsumerWidget {
  const ProfileInputPage({
    super.key,
    required this.email,
  });

  final String email;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileInputStateProvider);
    final notifier = ref.watch(profileInputStateProvider.notifier);

    final form = FormGroup({
      ValidateTextFieldType.parentNickname.name: state.nicknameController!,
      ValidateTextFieldType.postalCode.name: state.postalCodeController!,
    });

    final scrollController = ScrollController();

    return MainLayout(
      title: 'プロフィール情報',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      automaticallyImplyLeading: false,
      body: ReactiveForm(
        formGroup: form,
        child: SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '※プロフィール情報はあとから変更できます。',
                style: IHSTextStyle.small,
              ),
              const SizedBox(height: 24),
              // 名前
              _buildNameField(notifier, state.nicknameController!),
              const SizedBox(height: 24),
              // 生年月日
              _buildScheduledDateField(notifier, state.inputData.birthday),
              const SizedBox(height: 24),
              // 性別
              _buildGenderField(notifier, state.inputData.gender),
              const SizedBox(height: 24),
              // 郵便番号
              _buildPostalCodeField(notifier, state.postalCodeController!),
              const SizedBox(height: 24),
              // メールアドレス
              _buildEmailItem(context.screenWidth - 80),
              const SizedBox(height: 32),
              _buildRegisterArea(context, notifier, form),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  /// 名前の入力フィールド
  Widget _buildNameField(
    ProfileInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return ValidateTextField(
      title: '名前(ニックネーム)',
      isRequired: true,
      type: ValidateTextFieldType.parentNickname,
      controller: controller,
      onChanged: notifier.onChangedNameField,
    );
  }

  /// 生年月日の入力フィールド
  Widget _buildScheduledDateField(
    ProfileInputNotifier notifier,
    DateTime? birthday,
  ) {
    return DatePickTextField(
      birthday,
      title: '生年月日',
      lastYear: DatePickerConstants.currentYear,
      onChanged: notifier.onChangedDateField,
      isParent: true,
    );
  }

  /// 性別の選択フィールド
  Widget _buildGenderField(ProfileInputNotifier notifier, Gender gender) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GenderRequiredText(),
        const SizedBox(height: 8),
        ParentGenderSegmentView(
          selectedType: gender,
          onTap: notifier.onChangedGenderField,
        ),
      ],
    );
  }

  /// 郵便番号の入力フィールド
  Widget _buildPostalCodeField(
    ProfileInputNotifier notifier,
    FormControl<String> controller,
  ) {
    return ValidateTextField(
      title: '郵便番号',
      width: 168,
      isRequired: true,
      type: ValidateTextFieldType.postalCode,
      hintText: '1234567',
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      canDecimalInput: false,
      onChanged: notifier.onChangedPostalCodeField,
    );
  }

  /// メールアドレス表示
  Widget _buildEmailItem(double specifySize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'メールアドレス',
          style: IHSTextStyle.small,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const SizedBox(width: 16),
            Flexible(
              child: Text(
                email.toAdjustText(
                  textStyle: IHSTextStyle.small,
                  specifySize: specifySize,
                ),
                overflow: TextOverflow.ellipsis,
                style: IHSTextStyle.small,
              ),
            ),
          ],
        ),
      ],
    );
  }

  // ボタンエリア
  Widget _buildRegisterArea(
    BuildContext context,
    ProfileInputNotifier notifier,
    FormGroup form,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IHSButton(
          'プロフィール登録',
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
                  const ProfileInputCompletedPage(),
                );
              },
              onFailure: (msg) {
                IHSUtil.showSnackBar(msg: msg);
              },
            );
          },
        ),
      ],
    );
  }
}

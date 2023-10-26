import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../type/gender.dart';
import '../../../util/util.dart';
import '../../component/date_pick_text_field/widget.dart';
import '../../component/gender_required_text/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/main_layout/widget.dart';
import '../../component/parent_gender_segment_field/widget.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/widget.dart';
import '../../style/colors.dart';
import '../../style/constants.dart';
import '../../style/text_style.dart';
import '../profile_info/state.dart';
import 'notifier.dart';
import 'state.dart';

/// プロフィール情報編集画面
class ProfileEditPage extends ConsumerWidget {
  const ProfileEditPage({
    super.key,
    required this.inputData,
  });

  final ProfileInfoData inputData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileEditStateProvider(inputData));
    final notifier = ref.watch(profileEditStateProvider(inputData).notifier);

    final form = FormGroup({
      ValidateTextFieldType.nickname.name: state.nameController!,
      ValidateTextFieldType.postalCode.name: state.postalCodeController!,
    });

    final scrollController = ScrollController();

    return MainLayout(
      title: 'プロフィール情報',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      reload: () {
        ref.refresh(profileEditStateProvider(inputData));
      },
      body: ReactiveForm(
        formGroup: form,
        child: SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'プロフィール',
                style: IHSTextStyle.medium.copyWith(
                  color: IHSColors.pink500,
                ),
              ),
              const SizedBox(height: 24),
              // 名前
              _buildNameField(notifier, state.nameController!),
              const SizedBox(height: 24),
              // 生年月日
              _buildBirthdayField(notifier, state.inputData?.birthday),
              const SizedBox(height: 24),
              // 性別
              _buildGenderField(notifier, state.inputData!.gender),
              const SizedBox(height: 24),
              // 郵便番号
              _buildPostalCodeField(notifier, state.postalCodeController!),
              const SizedBox(height: 24),
              // メールアドレス
              _buildEmailItem(state.inputData!.email),
              const SizedBox(height: 32),
              _buildRegisterArea(context, state, notifier, form),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  /// 名前の入力フィールド
  Widget _buildNameField(
    ProfileEditNotifier notifier,
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
  Widget _buildBirthdayField(
    ProfileEditNotifier notifier,
    DateTime? birthday,
  ) {
    return DatePickTextField(
      birthday,
      title: '生年月日',
      lastYear: DatePickerConstants.currentYear,
      onChanged: (date) {
        notifier.onChangedDateField(date);
      },
      isParent: true,
    );
  }

  /// 性別の選択フィールド
  Widget _buildGenderField(
    ProfileEditNotifier notifier,
    Gender gender,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GenderRequiredText(),
        const SizedBox(height: 8),
        ParentGenderSegmentView(
          selectedType: gender,
          onTap: (value) {
            notifier.onChangedGenderField(value);
          },
        ),
      ],
    );
  }

  /// 郵便番号の入力フィールド
  Widget _buildPostalCodeField(
    ProfileEditNotifier notifier,
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
      onChanged: (control) {
        notifier.onChangedPostalCodeField(control);
      },
    );
  }

  /// メールアドレス表示
  Widget _buildEmailItem(String email) {
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
                email,
                overflow: TextOverflow.clip,
                style: IHSTextStyle.small,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRegisterArea(
    BuildContext context,
    ProfileEditState state,
    ProfileEditNotifier notifier,
    FormGroup form,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IHSButton(
          'プロフィール修正',
          type: IHSButtonType.primary,
          onPressed: () {
            form.markAllAsTouched();

            if (form.valid) {
              notifier.onTapRegister(
                onSuccess: () {
                  IHSUtil.showSnackBar(msg: 'プロフィール情報を更新しました');
                  Navigator.of(context).pop();
                },
                onFailure: (msg) {
                  if (msg.isEmpty) {
                    return;
                  }

                  IHSUtil.showSnackBar(msg: msg);
                },
              );
            }
          },
        ),
      ],
    );
  }
}

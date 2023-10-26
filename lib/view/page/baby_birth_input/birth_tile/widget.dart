import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '/view/style/colors.dart';
import '../../../../extension/int.dart';
import '../../../../type/gender.dart';
import '../../../component/gender_required_text/widget.dart';
import '../../../component/validate_child_gender_segment_field/widget.dart';
import '../../../component/validate_date_pick_text_field/widget.dart';
import '../../../component/validate_text_field/type.dart';
import '../../../component/validate_text_field/widget.dart';
import '../../../component/validate_time_pick_text_field/widget.dart';
import '../../../style/constants.dart';
import '../../../style/text_style.dart';
import '../body_input/widget.dart';
import '../notifier.dart';
import '../state.dart';
import '../type.dart';

/// お子さまの出生情報を表示
class BabyBirthTile extends ConsumerWidget {
  const BabyBirthTile({
    super.key,
    required this.form,
    required this.showTitle,
    required this.isShowGenderValidateMessage,
    required this.data,
    required this.onChanged,
  });

  final FormGroup form;
  // 第○子の表示の有無
  final bool showTitle;
  final bool isShowGenderValidateMessage;
  final BabyBirthDataByChild data;
  final Function(BabyBirthDataByChild) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(babyBirthInputStateProvider.notifier);
    final index = data.index;
    final validateKeyName =
        notifier.createValidateKey(notifier.validateTypeName, index);
    final validateKeyBirthday =
        notifier.createValidateKey(notifier.validateTypeBirthday, index);
    final validateKeyBirthdayTime =
        notifier.createValidateKey(notifier.validateTypeBirthdayTime, index);
    final validateKeyGender =
        notifier.createValidateKey(notifier.validateTypeGender, index);
    final nameController = _getControl(validateKeyName);
    final birthdayController = _getControl(validateKeyBirthday);
    final birthdayTimeController = _getControl(validateKeyBirthdayTime);
    final genderController = _getGenderControl(validateKeyGender);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: IHSColors.white,
        border: Border.all(
          color: IHSColors.black300,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showTitle) _buildTitle(),
          ValidateTextField(
            title: '名前(ニックネーム)',
            isRequired: true,
            type: ValidateTextFieldType.nickname,
            controller: nameController,
            onChanged: (text) => onChanged(
              data.copyWith(name: text),
            ),
          ),
          const SizedBox(height: 24),
          ValidateDatePickTextField(
            data.birthday,
            title: '出産日',
            controller: birthdayController,
            isRequired: true,
            lastYear: DatePickerConstants.currentYear,
            onChanged: (date) {
              onChanged(data.copyWith(birthday: date));
              notifier.onChangedBirthdayController(index);
            },
          ),
          const SizedBox(height: 24),
          ValidateTimePickTextField(
            data.birthdayTime,
            title: '出産時刻',
            controller: birthdayTimeController,
            validateTextFieldType: ValidateTextFieldType.childBirthdayTime,
            isRequired: true,
            onChanged: (time) {
              onChanged(data.copyWith(birthdayTime: time));
              notifier.onChangedBirthdayTimeController(index);
            },
          ),
          const SizedBox(height: 24),
          _buildGenderField(context, genderController),
          const SizedBox(height: 24),
          BabyBirthBodyInput(
            form: form,
            data: data,
            onChanged: (type, text) {
              switch (type) {
                case BabyBirthBodyInputType.height:
                  onChanged(data.copyWith(height: text));
                  break;
                case BabyBirthBodyInputType.weight:
                  onChanged(data.copyWith(weight: text));
                  break;
                case BabyBirthBodyInputType.head:
                  onChanged(data.copyWith(head: text));
                  break;
                case BabyBirthBodyInputType.chest:
                  onChanged(data.copyWith(chest: text));
                  break;
              }
            },
          ),
        ],
      ),
    );
  }

  FormControl<String> _getControl(String key) {
    return form.controls[key]! as FormControl<String>;
  }

  FormControl<Gender?> _getGenderControl(String key) {
    return form.controls[key]! as FormControl<Gender?>;
  }

  Widget _buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '第${(data.index + 1).toChineseString}子',
          style: IHSTextStyle.medium.copyWith(
            color: IHSColors.pink500,
          ),
        ),
        const SizedBox(height: 8),
        const Divider(
          height: 1,
          thickness: 1,
          color: IHSColors.black400,
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  /// 性別の選択フィールド
  Widget _buildGenderField(
    BuildContext context,
    FormControl<Gender?> control,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GenderRequiredText(),
        const SizedBox(height: 8),
        ValidateChildGenderSegmentField(
          isOnPressed: isShowGenderValidateMessage,
          control: control,
          onTap: (value) {
            onChanged(data.copyWith(gender: value));
          },
        ),
      ],
    );
  }
}

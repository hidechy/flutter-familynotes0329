import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../extension/context.dart';
import '../../../component/validate_text_field/type.dart';
import '../../../component/validate_text_field/widget.dart';
import '../../../style/text_style.dart';
import '../../../style/texts.dart';
import '../notifier.dart';
import '../state.dart';
import '../type.dart';

class BabyBirthBodyInput extends ConsumerWidget {
  const BabyBirthBodyInput({
    super.key,
    required this.form,
    required this.data,
    required this.onChanged,
  });

  final FormGroup form;
  final BabyBirthDataByChild data;
  final Function(BabyBirthBodyInputType, String) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(babyBirthInputStateProvider.notifier);
    final index = data.index;
    final validateKeyHeight =
        notifier.createValidateKey(notifier.validateTypeHeight, index);
    final validateKeyWeight =
        notifier.createValidateKey(notifier.validateTypeWeight, index);
    final validateKeyHead =
        notifier.createValidateKey(notifier.validateTypeHead, index);
    final validateKeyChest =
        notifier.createValidateKey(notifier.validateTypeChest, index);
    final heightController = _getControl(validateKeyHeight);
    final weightController = _getControl(validateKeyWeight);
    final headController = _getControl(validateKeyHead);
    final chestController = _getControl(validateKeyChest);

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _InputField(
                controller: heightController,
                type: BabyBirthBodyInputType.height,
                validateType: ValidateTextFieldType.height,
                onChanged: (value) {
                  onChanged(BabyBirthBodyInputType.height, value);
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _InputField(
                controller: weightController,
                type: BabyBirthBodyInputType.weight,
                validateType: ValidateTextFieldType.childGramsWeight,
                onChanged: (value) {
                  onChanged(BabyBirthBodyInputType.weight, value);
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _InputField(
                controller: headController,
                type: BabyBirthBodyInputType.head,
                validateType: ValidateTextFieldType.head,
                onChanged: (value) {
                  onChanged(BabyBirthBodyInputType.head, value);
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _InputField(
                controller: chestController,
                type: BabyBirthBodyInputType.chest,
                validateType: ValidateTextFieldType.chest,
                onChanged: (value) {
                  onChanged(BabyBirthBodyInputType.chest, value);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  FormControl<String> _getControl(String key) {
    return form.controls[key]! as FormControl<String>;
  }
}

class _InputField extends StatelessWidget {
  const _InputField({
    required this.controller,
    required this.validateType,
    required this.onChanged,
    required this.type,
  });

  final FormControl<String> controller;
  final ValidateTextFieldType validateType;
  final Function(String) onChanged;
  final BabyBirthBodyInputType type;

  @override
  Widget build(BuildContext context) {
    final isWeightInput = type == BabyBirthBodyInputType.weight;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ValidateTextField(
          width: context.screenWidth * 0.26,
          type: validateType,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          canDecimalInput: !isWeightInput,
          controller: controller,
          title: type.label,
          hintText: isWeightInput ? IHSTexts.gramHint : IHSTexts.bodyHint,
          onChanged: onChanged,
        ),
        const SizedBox(width: 8),
        Padding(
          padding: const EdgeInsets.only(top: 48),
          child: Text(
            type.unit,
            style: IHSTextStyle.small,
          ),
        ),
      ],
    );
  }
}

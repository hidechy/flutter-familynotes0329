import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../component/validate_text_field/type.dart';
import '../../../component/validate_text_field/widget.dart';
import '../../../style/text_style.dart';
import '../../../style/texts.dart';
import '../notifier.dart';
import '../state.dart';
import '../type.dart';

enum BodyInfoInputType {
  /// 身長
  height(label: '身長', unit: 'cm'),

  /// 体重
  gWeight(label: '体重', unit: 'g'),

  /// 体重
  kgWeight(label: '体重', unit: 'kg'),

  /// 頭囲
  head(label: '頭囲', unit: 'cm'),

  /// 胸囲
  chest(label: '胸囲', unit: 'cm');

  const BodyInfoInputType({
    required this.label,
    required this.unit,
  });

  final String label;
  final String unit;
}

class BodyInfoInput extends ConsumerWidget {
  const BodyInfoInput({
    super.key,
    this.hightController,
    this.weightController,
    this.headController,
    this.chestController,
  });

  final FormControl<String>? hightController;
  final FormControl<String>? weightController;
  final FormControl<String>? headController;
  final FormControl<String>? chestController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(childHealthCheckInputProvider.notifier);

    final state =
        ref.watch(childHealthCheckInputProvider) as ChildHealthCheckInputLoaded;
    final weightUnitType =
        WeightUnitType.getUnitType(type: state.inputData.selectedType!);
    final isUnitGram = weightUnitType == WeightUnitType.gram;

    return Column(
      children: [
        if (hightController != null && weightController != null)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (hightController != null) ...[
                InputField(
                  controller: hightController!,
                  validateType: ValidateTextFieldType.height,
                  onChanged: notifier.onChangedHeight,
                  type: BodyInfoInputType.height,
                ),
                const SizedBox(width: 16),
              ],
              if (weightController != null)
                InputField(
                  hintText: isUnitGram ? IHSTexts.gramHint : IHSTexts.bodyHint,
                  controller: weightController!,
                  validateType: isUnitGram
                      ? ValidateTextFieldType.childGramsWeight
                      : ValidateTextFieldType.childKilogramsWeight,
                  onChanged: notifier.onChangedWeight,
                  type: isUnitGram
                      ? BodyInfoInputType.gWeight
                      : BodyInfoInputType.kgWeight,
                ),
            ],
          ),
        const SizedBox(height: 24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (headController != null) ...[
              InputField(
                controller: headController!,
                onChanged: notifier.onChangedHead,
                validateType: ValidateTextFieldType.head,
                type: BodyInfoInputType.head,
              ),
              const SizedBox(width: 16),
            ],
            if (chestController != null)
              InputField(
                controller: chestController!,
                onChanged: notifier.onChangedChest,
                validateType: ValidateTextFieldType.chest,
                type: BodyInfoInputType.chest,
              ),
          ],
        ),
      ],
    );
  }
}

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.validateType,
    required this.type,
    this.hintText = IHSTexts.bodyHint,
  });

  final String hintText;
  final FormControl<String> controller;
  final Function(String) onChanged;
  final ValidateTextFieldType validateType;
  final BodyInfoInputType type;

  @override
  Widget build(BuildContext context) {
    // グラム入力以外は、少数入力許可する
    final _canDecimalInput = !(type == BodyInfoInputType.gWeight);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ValidateTextField(
          width: 112,
          title: type.label,
          hintText: hintText,
          type: validateType,
          textAlign: TextAlign.center,
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          canDecimalInput: _canDecimalInput,
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

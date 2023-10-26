import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../component/validate_text_field/type.dart';
import '../../../component/validate_text_field/widget.dart';
import '../../../style/colors.dart';
import '../../../style/text_style.dart';
import '../notifier.dart';
import '../state.dart';

enum DentalInputType {
  /// 歯の本数
  countTeeth(title: '歯の本数'),

  /// 要治療のむし歯の本数
  countBadTeeth(title: '要治療のむし歯の本数'),

  /// 要治療の乳歯の本数
  countBadBabyTeeth(title: '要治療の乳歯の本数'),

  /// 要治療の永久歯の本数
  countBadAdultTeeth(title: '要治療の永久歯の本数');

  const DentalInputType({required this.title});

  final String title;
}

class DentalInput extends ConsumerWidget {
  const DentalInput({
    super.key,
    this.needTreatmentInput = true,
    this.countTeethController,
    this.countBadTeethController,
    this.countBadBabyTeethController,
    this.countBadAdultTeethController,
  });

  final bool needTreatmentInput;
  final FormControl<String>? countTeethController;
  final FormControl<String>? countBadTeethController;
  final FormControl<String>? countBadBabyTeethController;
  final FormControl<String>? countBadAdultTeethController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(childHealthCheckInputProvider.notifier);
    final _inputData = ref.watch(childHealthCheckInputProvider.select((s) => s.mapOrNull(loaded: (s) => s.inputData)!));

    final state = ref.watch(childHealthCheckInputProvider) as ChildHealthCheckInputLoaded;

    final _needDentalTreatment = state.inputData.needDentalTreatment;

    final widgetList = <Widget>[
      if (needTreatmentInput) const DentalToggleButton(),
      if (countBadTeethController != null && _needDentalTreatment)
        DentalInputField(
          key: const Key('countBadTeeth'),
          title: DentalInputType.countBadTeeth.title,
          value: _inputData.countBadTeeth,
          onChanged: notifier.onChangedCountBadTeeth,
          controller: countBadTeethController!,
          validateType: ValidateTextFieldType.countBadTeeth,
        ),
      if (countTeethController != null)
        DentalInputField(
          key: const Key('countTeeth'),
          title: DentalInputType.countTeeth.title,
          value: _inputData.countTeeth,
          onChanged: notifier.onChangedCountTeeth,
          controller: countTeethController!,
          validateType: ValidateTextFieldType.countTeeth,
        ),
      if (countBadBabyTeethController != null && _needDentalTreatment)
        DentalInputField(
          key: const Key('countBadBabyTeeth'),
          title: DentalInputType.countBadBabyTeeth.title,
          value: _inputData.countBadBabyTeeth,
          onChanged: notifier.onChangedCountBadBabyTeeth,
          controller: countBadBabyTeethController!,
          validateType: ValidateTextFieldType.countBadBabyTeeth,
        ),
      if (countBadAdultTeethController != null && _needDentalTreatment)
        DentalInputField(
          key: const Key('countBadAdultTeeth'),
          title: DentalInputType.countBadAdultTeeth.title,
          value: _inputData.countBadAdultTeeth,
          onChanged: notifier.onChangedCountBadAdultTeeth,
          controller: countBadAdultTeethController!,
          validateType: ValidateTextFieldType.countBadAdultTeeth,
        ),
    ];

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widgetList.length,
      itemBuilder: (context, index) => widgetList[index],
      separatorBuilder: (context, index) => const SizedBox(height: 24),
    );
  }
}

class DentalToggleButton extends ConsumerWidget {
  const DentalToggleButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(childHealthCheckInputProvider) as ChildHealthCheckInputLoaded;
    final notifier = ref.watch(childHealthCheckInputProvider.notifier);
    final _needDentalTreatmenta = state.inputData.needDentalTreatment;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '要治療のむし歯',
          style: IHSTextStyle.small,
        ),
        const SizedBox(height: 8),
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Row(
            children: [
              ToggleButton(
                title: 'なし',
                onTap: () => notifier.setNeedDentalTreatment(value: false),
                toggleValue: !_needDentalTreatmenta,
              ),
              const SizedBox(width: 8),
              ToggleButton(
                title: 'あり',
                onTap: () => notifier.setNeedDentalTreatment(value: true),
                toggleValue: _needDentalTreatmenta,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ToggleButton extends StatelessWidget {
  const ToggleButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.toggleValue,
  });

  final VoidCallback onTap;
  final String title;
  final bool toggleValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 40,
        alignment: Alignment.center,
        child: Text(
          title,
          style: IHSTextStyle.small,
        ),
        decoration: BoxDecoration(
          color: toggleValue ? IHSColors.pink200 : IHSColors.white,
          border: Border.all(
            width: 2,
            color: toggleValue ? IHSColors.pink300 : IHSColors.black400,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}

class DentalInputField extends StatelessWidget {
  const DentalInputField({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    required this.controller,
    required this.validateType,
  });

  final String title;
  final String value;
  final Function(String) onChanged;
  final FormControl<String> controller;
  final ValidateTextFieldType validateType;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            title,
            style: IHSTextStyle.small,
          ),
        ),
        const SizedBox(width: 16),
        ValidateTextField(
          width: 72,
          type: validateType,
          textAlign: TextAlign.center,
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          canDecimalInput: false,
          onChanged: onChanged,
        ),
        const SizedBox(width: 8),
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Text(
            '本',
            style: IHSTextStyle.small,
          ),
        ),
      ],
    );
  }
}

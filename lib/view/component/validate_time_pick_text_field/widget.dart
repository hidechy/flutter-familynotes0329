import 'package:family_notes/view/style/constants.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../validate_text_field/field_separated_title/widget.dart';
import '../validate_text_field/field_title/widget.dart';
import '../validate_text_field/type.dart';

/// バリデーション可能時間選択
class ValidateTimePickTextField extends StatelessWidget {
  const ValidateTimePickTextField(
    this.time, {
    super.key,
    this.title,
    this.forwardTitle,
    this.backTitle,
    this.hintText,
    this.width,
    this.errorMaxLines = IHSConstants.defaultValidateErrorMaxLines,
    this.isRequired = false,
    this.inputAction = TextInputAction.next,
    this.textAlign = TextAlign.left,
    required this.controller,
    required this.onChanged,
    required this.validateTextFieldType,
  });

  final TimeOfDay? time;
  // フィールドの上に表示するタイトル
  final String? title;
  // タイトルが二分割する時に使用する
  final String? forwardTitle;
  final String? backTitle;
  // フィールドの上に必須を表示する
  final bool isRequired;
  final String? hintText;
  final double? width;
  final int errorMaxLines;
  final TextInputAction inputAction;
  final TextAlign textAlign;
  final FormControl<String> controller;
  final void Function(TimeOfDay? time) onChanged;
  final ValidateTextFieldType validateTextFieldType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title(
          isRequired: isRequired,
          title: title,
          forwardTitle: forwardTitle,
          backTitle: backTitle,
        ),
        SizedBox(
          width: width,
          child: ReactiveTextField<String>(
            key: Key(controller.value.toString()),
            readOnly: true,
            formControl: controller,
            cursorHeight: 18,
            textInputAction: inputAction,
            cursorColor: IHSColors.black800.withOpacity(0.8),
            style: IHSTextStyle.small,
            decoration: InputDecoration(
              filled: true,
              fillColor: IHSColors.white,
              hintText: hintText,
              hintStyle: IHSTextStyle.small.copyWith(
                color: IHSColors.black200,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              labelStyle: IHSTextStyle.small.copyWith(
                height: 1,
                textBaseline: TextBaseline.ideographic,
              ),
              suffixIcon: Icon(
                Icons.access_time,
                color: IHSColors.black800.withOpacity(0.8),
              ),
              errorMaxLines: errorMaxLines,
              enabledBorder: _boderStyle(),
              focusedBorder: _boderStyle(),
              errorBorder: _boderStyle(borderColor: IHSColors.red),
              focusedErrorBorder: _boderStyle(borderColor: IHSColors.red),
              errorStyle: IHSTextStyle.xSmall.copyWith(
                color: IHSColors.red,
                height: 1,
              ),
            ),
            textAlign: textAlign,
            validationMessages: validateTextFieldType.validationMessage,
            onTap: (_) {
              Future.microtask(() => _showPicker(context));
            },
          ),
        ),
      ],
    );
  }

  Widget _title({
    required bool isRequired,
    String? title,
    String? forwardTitle,
    String? backTitle,
  }) {
    if (title != null) {
      return FieldTitle(
        title: title,
        isRequired: isRequired,
      );
    }
    if (forwardTitle != null && backTitle != null) {
      return FieldSeparatedTitle(
        forwardTitle: forwardTitle,
        backTitle: backTitle,
        isRequired: isRequired,
      );
    }
    return const SizedBox.shrink();
  }

  OutlineInputBorder _boderStyle({
    Color borderColor = IHSColors.black800,
  }) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }

  Future<void> _showPicker(BuildContext context) async {
    final now = DateTime.now();
    final initialTime = time ?? TimeOfDay.fromDateTime(now);
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    if (pickedTime == null) {
      return;
    }

    onChanged(pickedTime);
  }
}

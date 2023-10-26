import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../gen/assets.gen.dart';
import '../../style/colors.dart';
import '../../style/constants.dart';
import '../../style/text_style.dart';
import 'field_separated_title/widget.dart';
import 'field_title/widget.dart';
import 'type.dart';

/// バリデーションが必要な値のテキストフィールドコンポーネント
class ValidateTextField extends HookWidget {
  const ValidateTextField({
    super.key,
    this.title,
    this.forwardTitle,
    this.backTitle,
    this.hintText,
    this.width,
    this.errorMaxLines = IHSConstants.defaultValidateErrorMaxLines,
    this.isRequired = false,
    this.keyboardType = TextInputType.text,
    this.inputAction = TextInputAction.next,
    this.textAlign = TextAlign.left,
    required this.type,
    required this.controller,
    required this.onChanged,
    this.readOnly = false,
    this.borderColor = IHSColors.black800,
    this.inputFormatter,
    this.hintStyle,
    this.canDecimalInput,
  });

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
  final TextInputType keyboardType;
  final TextInputAction inputAction;
  final TextAlign textAlign;
  final ValidateTextFieldType type;
  final FormControl<String> controller;
  final Function(String) onChanged;
  final bool readOnly;
  final Color borderColor;
  final List<TextInputFormatter>? inputFormatter;
  final TextStyle? hintStyle;

  // 少数入力のみに制限する場合は true
  final bool? canDecimalInput;

  // 入力許可する値を制御する
  List<TextInputFormatter>? get _inputFormatter {
    if (canDecimalInput == null) {
      return inputFormatter;
    }
    return canDecimalInput!
        ? [FilteringTextInputFormatter.allow(RegExp('[0-9.]'))]
        : [FilteringTextInputFormatter.allow(RegExp('[0-9]'))];
  }

  @override
  Widget build(BuildContext context) {
    final isVisible = useState<bool>(false);
    final isPasswordInputField = type == ValidateTextFieldType.password ||
        type == ValidateTextFieldType.newPassword ||
        type == ValidateTextFieldType.passwordConfirmation;

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
            formControl: controller,
            style: IHSTextStyle.small,
            textAlign: textAlign,
            keyboardType: keyboardType,
            inputFormatters: _inputFormatter,
            textInputAction: inputAction,
            readOnly: readOnly,
            obscureText: isPasswordInputField && !isVisible.value,
            showErrors: (control) {
              return control.touched && control.invalid;
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: type.fillColor,
              hintText: hintText,
              hintStyle: hintStyle ?? IHSTextStyle.small.copyWith(color: IHSColors.black200),
              suffixIcon: isPasswordInputField ? _visibleIcon(isVisible: isVisible) : null,
              errorMaxLines: errorMaxLines,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              enabledBorder: _boderStyle,
              focusedBorder: _boderStyle,
              errorBorder: _errorBoderStyle,
              focusedErrorBorder: _errorBoderStyle,
              errorStyle: IHSTextStyle.xSmall.copyWith(
                color: IHSColors.red,
                height: 1.2,
              ),
            ),
            validationMessages: type.validationMessage,
            onChanged: (control) => onChanged(control.value ?? ''),
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

  Widget _visibleIcon({required ValueNotifier<bool> isVisible}) {
    return Container(
      padding: const EdgeInsets.only(right: 16),
      child: Transform.scale(
        scale: 0.75,
        child: GestureDetector(
          onTap: () => isVisible.value = !isVisible.value,
          behavior: HitTestBehavior.opaque,
          child: isVisible.value
              ? SvgPicture.asset(
                  Assets.images.passwordEyeslash,
                )
              : SvgPicture.asset(
                  Assets.images.passwordEye,
                ),
        ),
      ),
    );
  }

  OutlineInputBorder get _boderStyle {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(type.borderRadius),
    );
  }

  OutlineInputBorder get _errorBoderStyle {
    return _boderStyle.copyWith(
      borderSide: const BorderSide(
        color: IHSColors.red,
        width: 1.5,
      ),
    );
  }
}

import 'package:family_notes/view/style/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../gen/assets.gen.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../validate_text_field/field_separated_title/widget.dart';
import '../validate_text_field/field_title/widget.dart';
import '../validate_text_field/type.dart';

class ValidateDatePickTextField extends StatelessWidget {
  const ValidateDatePickTextField(
    this.dateTime, {
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
    this.isParent = false,
    this.firstYear = DatePickerConstants.hundredYear,
    this.lastYear = DatePickerConstants.hundredYear,
    required this.controller,
    required this.onChanged,
  });

  final DateTime? dateTime;

  // フィールドの上に表示するタイトル
  final String? title;

  // タイトルが二分割する時に使用する
  final String? forwardTitle;
  final String? backTitle;

  // フィールドの上に必須を表示する
  final bool isRequired;
  final bool isParent;
  final String? hintText;
  final double? width;
  final int errorMaxLines;
  final TextInputAction inputAction;
  final TextAlign textAlign;
  final FormControl<String> controller;
  final Function(DateTime?) onChanged;
  final int firstYear;
  final int lastYear;

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
            style: IHSTextStyle.small,
            textAlign: textAlign,
            textInputAction: inputAction,
            decoration: InputDecoration(
              filled: true,
              fillColor: IHSColors.white,
              hintText: hintText,
              hintStyle: IHSTextStyle.small.copyWith(
                color: IHSColors.black200,
              ),
              suffixIcon: isRequired
                  ? SvgPicture.asset(
                      Assets.images.iconCalendar,
                      fit: BoxFit.scaleDown,
                    )
                  : DeletableIcons(
                      controller: controller,
                      onChanged: onChanged,
                    ),
              errorMaxLines: errorMaxLines,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              enabledBorder: _boderStyle(),
              focusedBorder: _boderStyle(),
              errorBorder: _boderStyle(borderColor: IHSColors.red),
              focusedErrorBorder: _boderStyle(borderColor: IHSColors.red),
              errorStyle: IHSTextStyle.xSmall.copyWith(
                color: IHSColors.red,
                height: 1,
              ),
            ),
            validationMessages: ValidateTextFieldType.date.validationMessage,
            onTap: (_) {
              Future.microtask(() => _showPicker(context));
            },
          ),
        ),
      ],
    );
  }

  Future<void> _showPicker(BuildContext context) async {
    final now = DateTime.now();
    final initialDate = isParent
        ? dateTime ?? DateTime(now.year - 30, now.month)
        : dateTime ?? now;
    final pickedDate = await showDatePicker(
      locale: const Locale('ja'),
      context: context,
      initialDate: initialDate,
      firstDate: now.add(Duration(days: -365 * firstYear)),
      lastDate: now.add(Duration(days: 365 * lastYear)),
    );
    if (pickedDate == null) {
      return;
    }

    onChanged(pickedDate);
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
}

class DeletableIcons extends StatefulWidget {
  const DeletableIcons({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  final FormControl<String> controller;
  final Function(DateTime?) onChanged;

  @override
  State<DeletableIcons> createState() => _DeletableIconsState();
}

class _DeletableIconsState extends State<DeletableIcons> {
  @override
  Widget build(BuildContext context) {
    return widget.controller.value == ''
        ? Icon(
            Icons.calendar_month_outlined,
            color: IHSColors.black800.withOpacity(0.8),
          )
        : GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => setState(() {
              widget.controller.value = '';
              widget.onChanged(null);
            }),
            child: Icon(
              Icons.clear_rounded,
              color: IHSColors.black800.withOpacity(0.8),
            ),
          );
  }
}

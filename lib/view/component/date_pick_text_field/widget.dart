import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '/extension/date_time.dart';
import '../../../gen/assets.gen.dart';
import '../../style/colors.dart';
import '../../style/constants.dart';
import '../../style/text_style.dart';

/// 日付選択(年月日)をするテキストフィールド
class DatePickTextField extends StatelessWidget {
  const DatePickTextField(
    this.dateTime, {
    super.key,
    this.title,
    this.hintText,
    this.width,
    this.isRequired = false,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.done,
    this.firstYear = DatePickerConstants.hundredYear,
    this.lastYear = DatePickerConstants.hundredYear,
    this.isParent = false,
    required this.onChanged,
  });

  final DateTime? dateTime;

  // フィールドの上に表示するタイトル
  final String? title;
  final String? hintText;

  // フィールドの上に必須を表示する
  final bool isRequired;
  final bool isParent;
  final double? width;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final Function(DateTime?) onChanged;
  final int firstYear;
  final int lastYear;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(
      text: dateTime?.yyyymmdd ?? '',
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null
            ? Column(
                children: [
                  Row(
                    children: [
                      Text(
                        title!,
                        style: IHSTextStyle.small.copyWith(
                          height: 1,
                        ),
                      ),
                      if (isRequired) ...[
                        const SizedBox(width: 8),
                        Text(
                          '必須',
                          style: IHSTextStyle.xSmall.copyWith(
                            color: const Color(0xffFE0000),
                            height: 1,
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              )
            : const SizedBox.shrink(),
        Container(
          color: IHSColors.white,
          height: 48,
          width: width,
          child: TextField(
            readOnly: true,
            controller: controller,
            keyboardType: inputType,
            cursorHeight: 18,
            textInputAction: inputAction,
            cursorColor: IHSColors.black800.withOpacity(0.8),
            style: IHSTextStyle.small,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: IHSTextStyle.small.copyWith(
                color: IHSColors.black200,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              labelStyle: IHSTextStyle.small.copyWith(
                height: 1,
                textBaseline: TextBaseline.ideographic,
              ),
              border: _boderStyle(),
              enabledBorder: _boderStyle(),
              focusedBorder: _boderStyle(),
              suffixIcon: isRequired
                  ? Icon(
                      Icons.calendar_month_outlined,
                      color: IHSColors.black800.withOpacity(0.8),
                    )
                  : DeletableIcons(
                      controller: controller,
                      onChanged: onChanged,
                    ),
            ),
            onTap: () {
              Future.microtask(() => _showPicker(context));
            },
          ),
        ),
      ],
    );
  }

  Future<void> _showPicker(BuildContext context) async {
    final now = DateTime.now();
    final initialDate = isParent ? dateTime ?? DateTime(now.year - 30, now.month) : dateTime ?? now;
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

  final TextEditingController controller;
  final Function(DateTime?) onChanged;

  @override
  State<DeletableIcons> createState() => _DeletableIconsState();
}

class _DeletableIconsState extends State<DeletableIcons> {
  @override
  Widget build(BuildContext context) {
    return widget.controller.text == ''
        ? SvgPicture.asset(
            Assets.images.iconCalendar,
            fit: BoxFit.scaleDown,
          )
        : GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => setState(() {
              widget.controller.text = '';
              widget.onChanged(null);
            }),
            child: Icon(
              Icons.clear_rounded,
              color: IHSColors.black800.withOpacity(0.8),
            ),
          );
  }
}

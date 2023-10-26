import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/text_style.dart';

/// 時刻(時分)選択をするテキストフィールド
class TimePickTextField extends StatelessWidget {
  const TimePickTextField(
    this.time, {
    super.key,
    this.title,
    this.hintText,
    this.width,
    this.isRequired = false,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.done,
    required this.onChanged,
  });

  final TimeOfDay? time;
  // フィールドの上に表示するタイトル
  final String? title;
  final String? hintText;
  // フィールドの上に必須を表示する
  final bool isRequired;
  final double? width;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final Function(TimeOfDay) onChanged;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(
      text: time != null ? getBirthTime(time!) : '',
    );

    return GestureDetector(
      onTap: () async {
        await _showPicker(context);
      },
      child: Column(
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
              enabled: false,
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
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: IHSColors.black800.withOpacity(0.8),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: Icon(
                  Icons.access_time,
                  color: IHSColors.black800.withOpacity(0.8),
                ),
              ),
            ),
          ),
        ],
      ),
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

String getBirthTime(TimeOfDay time) {
  final _hour = time.hour;
  final _minute = _addLeadingZeroIfNeeded(time.minute);
  return '$_hour:$_minute';
}

String _addLeadingZeroIfNeeded(int value) {
  if (value < 10) {
    return '0$value';
  }
  return value.toString();
}

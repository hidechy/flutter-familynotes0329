import 'package:flutter/material.dart';

extension TimeOfDayNullableEx on TimeOfDay? {
  /// 出産時刻コントローラーに表示させるテキストの取得
  String get getBirthdayTimeControllerText {
    return this == null ? '' : getBirthTimeText;
  }

  /// 出産時刻テキストの取得
  String get getBirthTimeText {
    if (this == null) {
      return '';
    }

    final hour = this!.hour;
    final minute = this!.minute;
    final minuteText = _addLeadingZeroIfNeeded(minute);
    return '$hour:$minuteText';
  }

  String _addLeadingZeroIfNeeded(int value) {
    if (value < 10) {
      return '0$value';
    }

    return value.toString();
  }
}

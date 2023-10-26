import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as format;

extension StringExtension on String {
  // 半角英数を全角英数へ
  String alphanumericToFullLength() {
    const _fullLengthCode = 65248;
    final regex = RegExp(r'^[a-zA-Z0-9]+$');
    final string = runes.map<String>((rune) {
      final char = String.fromCharCode(rune);
      return regex.hasMatch(char)
          ? String.fromCharCode(rune + _fullLengthCode)
          : char;
    });
    return string.join();
  }

  // stringからDateTimeへ
  DateTime toDateTime(DateFormatType type) {
    final _dateFormatter = format.DateFormat(type.value);
    return _dateFormatter.parseStrict(this);
  }

  // 郵便番号形式に変換する
  String toPostalCode() {
    final strList = split('')..insert(3, '-');
    final postalCode = strList.join();
    return postalCode;
  }

  // 体重をkg→gに変換する
  String toGram() {
    final kgWeight = double.tryParse(this);
    if (kgWeight == null) {
      return this;
    }
    final gramWeight = (kgWeight * 1000).floor(); // 小数点以下を切り捨て
    return gramWeight.toString();
  }

  // 体重をg→kgに変換する
  String toKiloGram() {
    final gramWeight = int.tryParse(this);
    if (gramWeight == null) {
      return this;
    }
    final kgWeight = gramWeight / 1000;
    return kgWeight.toString();
  }

  //文字列のWidthを取得
  double toTextWidth(TextStyle textStyle) {
    final textWidth = (TextPainter(
            text: TextSpan(text: this, style: textStyle),
            maxLines: 1,
            textDirection: TextDirection.ltr)
          ..layout())
        .size;
    return textWidth.width;
  }

  //指定の長さまで改行されないTextを取得
  String toAdjustText(
      {required TextStyle textStyle,
      required double specifySize,
      int baseNumber = 100}) {
    String adjustText;

    final textWidth = toTextWidth(textStyle);

    if (textWidth >= specifySize) {
      final oneStringWidth =
          ((textWidth / length.toDouble()) * baseNumber).floor() / baseNumber;
      final maxTextLength = (specifySize / oneStringWidth).floor();
      final valueList = split('').map<String>((String item) => item).toList()
        ..insert(maxTextLength - 1, '\n');

      adjustText = valueList.join();
    } else {
      adjustText = this;
    }

    return adjustText;
  }
}

enum DateFormatType {
  yyyymmdd,
  yyyymmddLine,
  yyyymmddhhmmss,
}

extension DateFormatTypeEx on DateFormatType {
  String get value {
    switch (this) {
      case DateFormatType.yyyymmdd:
        return 'yyyy/MM/dd';
      case DateFormatType.yyyymmddLine:
        return 'yyyy-MM-dd';
      case DateFormatType.yyyymmddhhmmss:
        return 'yyyy-MM-dd HH:mm:ss';
    }
  }
}

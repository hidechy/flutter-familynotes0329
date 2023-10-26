import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../extension/string.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  static const yyyymmddhhmmssPartten =
      r'^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01]) [0-9]{2}:[0-9]{2}:[0-9]{2}';
  static const yyyymmddLinePartten =
      r'^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$';

  @override
  DateTime fromJson(String dateString) {
    if (_hasMatchDateFormat(yyyymmddhhmmssPartten, dateString)) {
      return dateString.toDateTime(DateFormatType.yyyymmddhhmmss);
    }

    if (_hasMatchDateFormat(yyyymmddLinePartten, dateString)) {
      return dateString.toDateTime(DateFormatType.yyyymmddLine);
    }

    return dateString.toDateTime(DateFormatType.yyyymmdd);
  }

  @override
  String toJson(DateTime object) => json.encode(
        object.toString(),
      );

  bool _hasMatchDateFormat(String partten, String date) {
    return RegExp(partten).hasMatch(date);
  }
}

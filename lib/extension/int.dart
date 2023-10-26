import '../type/gender.dart';

extension IntExtension on int {
  String get toChineseString {
    switch (this) {
      case 1:
        return '一';
      case 2:
        return '二';
      case 3:
        return '三';
      case 4:
        return '四';
      case 5:
        return '五';
      case 6:
        return '六';
      case 7:
        return '七';
      case 8:
        return '八';
      case 9:
        return '九';
      case 10:
        return '十';
    }
    return '$this';
  }

  // 月齢から年齢を算出
  String get toAgeFromMonths {
    final year = (this / 12).floor();
    final month = this % 12;
    return '$year歳$monthか月';
  }

  Gender get toGender {
    switch (this) {
      case 2:
        return Gender.woman;
      case 3:
        return Gender.unknown;
      default:
        return Gender.man;
    }
  }

  String get toConversionKg {
    final conversionData = (this / 1000).toStringAsFixed(1);
    return '$conversionData kg';
  }
}

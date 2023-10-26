import 'package:intl/intl.dart';

extension DateTimeEx on DateTime {
  String get yyyymmdd {
    final outputFormat = DateFormat('yyyy/MM/dd');
    return outputFormat.format(this);
  }

  String get yyyymmddhhmm {
    final outputFormat = DateFormat('yyyy/MM/dd HH:mm');
    return outputFormat.format(this);
  }

  // 出産予定日から妊娠月数を算出
  // - 参考: https://www.matono-womens.com/chuuzetu/week
  int get toPregnantMonthsNumber {
    // 妊娠開始日
    final startDate = add(const Duration(days: -280));
    // 経過日数
    final days = DateTime.now().difference(startDate).inDays;
    // 経過月数
    return (days ~/ 28) + 1;
  }

  // 対象のDateTimeとの日付の差を算出
  int daysBetween(DateTime to) {
    final fromDate = DateTime(year, month, day);
    final toDate = DateTime(to.year, to.month, to.day);
    return (toDate.difference(fromDate).inHours / 24).round();
  }
}

extension DateTimeNullableEx on DateTime? {
  /// 生年月日や出産日コントローラーに表示させるテキストの取得
  String get getDateControllerText {
    return this == null ? '' : this!.yyyymmdd;
  }
}

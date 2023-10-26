/// 参考
/// 生年月日からの経過日数を○年○ヶ月○日と計算するロジック
/// https://zenn.dev/8yabusa/articles/1ec32456888a95

class ChildAgeCalculation {
  ChildAgeCalculation(
      {required this.years, required this.months, required this.days})
      : assert(years >= 0),
        assert(months >= 0 && months <= 11),
        assert(days >= 0 && days <= 30);

  factory ChildAgeCalculation.from(DateTime birth, {required DateTime today}) {
    if (today.isBeforeDay(birth)) {
      throw ArgumentError('today must not before birth. $today, $birth');
    }

    var fullMonths =
        (today.year - birth.year) * 12 + (today.month - birth.month);

    final int days;

    if (today.day >= birth.day) {
      // today月のbirth.day日を0としてカウント
      days = today.day - birth.day;
    } else {
      if (birth.day > DateTime(today.year, today.month).daysInMonth &&
          today.isLastDayOfMonth) {
        // 生年月日の日付が今月の末日より大きくて、今日が末日の場合
        // 日数を0とする
        // 例: 生年月日2020-01-31 今月末2020-02-29 0年1ヶ月0日
        days = 0;
      } else {
        fullMonths--; //月齢をデクリメント

        final totalDaysInLastMonth =
            DateTime(today.year, today.month - 1).daysInMonth;

        // 誕生日の日付 ~ 末日までの日数
        // 誕生日の日付が先月の末日より大きい場合は、末日の1日をカウントして1
        final daysInLastMonth = birth.day > totalDaysInLastMonth
            ? 1
            : totalDaysInLastMonth - birth.day + 1;

        // 先月の誕生日の日付 ~ 今日までの日数に、0から数えたいので-1する
        days = daysInLastMonth + today.day - 1;
      }
    }

    final years = (fullMonths / 12).floor();
    final months = fullMonths % 12;

    return ChildAgeCalculation(years: years, months: months, days: days);
  }

  final int years;
  final int months;
  final int days;

  @override
  String toString() {
    /*
    // 表示仕様
    １歳未満 → ○か月○日
    １歳以上 → ○歳○か月
    */

    return (years == 0) ? '$monthsか月　$days日' : '$years歳　$monthsか月';
  }

  bool get isBirthDay => months == 0 && days == 0;
}

extension DayTimeExtension on DateTime {
  static const _daysInMonthArray = [
    0,
    31,
    28,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
  ];

  int get daysInMonth {
    var result = _daysInMonthArray[month];
    if (month == 2 && _isLeapYear(year)) {
      result++;
    }
    return result;
  }

  bool isBeforeDay(DateTime other) => _asDate.isBefore(other._asDate);

  bool get isLastDayOfMonth => daysInMonth == day;

  bool _isLeapYear(int year) =>
      (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));

  DateTime get _asDate =>
      DateTime(year, month, day); // 日付専用の型は無いのでDateTimeを使う。時間は0:00:00とする。
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '/extension/date_time.dart';
import '../../../style/colors.dart';
import '../../../style/text_style.dart';
import '../state.dart';

// 各グラフ共通のスタイル定義
class IHSGraphStyle {
  const IHSGraphStyle._();

  static Color get mainColor => IHSColors.pink400;
  static Color get subColor => IHSColors.yellow600;

  /// X軸の目盛数
  static int getXCount(ChildGrapthPreriod period) {
    switch (period) {
      case ChildGrapthPreriod.first:
      case ChildGrapthPreriod.second:
        return 13;
      case ChildGrapthPreriod.third:
        return 9;
    }
  }

  /// X軸のタイトルウィジェット
  static Widget bottomTitleWidgets(
    ChildGrapthPreriod period,
    double value,
    TitleMeta meta,
  ) {
    final index = value.toInt();
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          _getXTitle(period, index),
          style: IHSTextStyle.xSmall.copyWith(height: 1),
        ),
      ),
    );
  }

  // 各目盛のX軸のタイトル
  static String _getXTitle(ChildGrapthPreriod period, int index) {
    switch (period) {
      // 0, 1, ... 12
      case ChildGrapthPreriod.first:
        return index.toString();
      // 12, 13, ... 24
      case ChildGrapthPreriod.second:
        return (index + 12).toString();
      // 2, 2.5, ... 6
      case ChildGrapthPreriod.third:
        final number = (index * 0.5) + 2;
        return index.isEven ? number.toInt().toString() : number.toString();
    }
  }

  // 誕生日から月齢を算出
  static double _getMonthAgeFromDate({
    required DateTime birthday,
    required DateTime date,
  }) {
    // 誕生日とdateの日付の差
    final days = birthday.daysBetween(date);
    // 月当たりの平均日数
    const daysByMonth = 365 / 12;
    // 月齢
    // FIXME: この算出方法は厳密ではないので必要らな修正する
    final month = days / daysByMonth;
    return month;
  }

  // 選択中の期間と誕生日をもとにX座標を算出
  static double getPosX(DateTime date, {
    required ChildGrapthPreriod period,
    required DateTime birthday,
  }) {
    final moonAge = _getMonthAgeFromDate(birthday: birthday,date: date);
    switch (period) {
      case ChildGrapthPreriod.first:
        return moonAge;
      case ChildGrapthPreriod.second:
        return moonAge - 12;
      case ChildGrapthPreriod.third:
        return ((moonAge / 12) - 2) * 2;
    }
  }

  // 縦軸/横軸レイアウト
  static FlLine get drawingLine => FlLine(
        color: IHSColors.black100,
        strokeWidth: 1,
      );

  // タップ中のレイアウト（何も表示しない）
  static LineTouchData get touchData => LineTouchData(
        getTouchLineEnd: (data, index) => double.infinity,
        getTouchedSpotIndicator:
            (LineChartBarData barData, List<int> spotIndexes) {
          return spotIndexes.map((spotIndex) {
            return TouchedSpotIndicatorData(
              FlLine(color: Colors.transparent),
              FlDotData(
                getDotPainter: (spot, percent, barData, index) =>
                    FlDotCirclePainter(
                  color: Colors.transparent,
                  strokeColor: Colors.transparent,
                ),
              ),
            );
          }).toList();
        },
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.transparent,
          getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
            return lineBarsSpot.map((lineBarSpot) {
              return LineTooltipItem(
                lineBarSpot.y.toString(),
                const TextStyle(
                  color: Colors.transparent,
                ),
              );
            }).toList();
          },
        ),
      );

  /// ボーダーレイアウト
  static FlBorderData get borderLayout => FlBorderData(
        show: true,
        border: Border.all(
          color: IHSColors.black100,
        ),
      );

  /// ドットレイアウト（ピンク）
  static FlDotData get mainDotLayout => FlDotData(
        show: true,
        getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
          radius: 1,
          color: mainColor,
          strokeColor: mainColor,
          strokeWidth: 1.5,
        ),
      );

  /// ドットレイアウト（黄色）
  static FlDotData get subDotLayout => FlDotData(
        show: true,
        getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
          radius: 1,
          color: subColor,
          strokeColor: subColor,
          strokeWidth: 1.5,
        ),
      );

  /// x軸のタイトル
  static String getAgeTitle(ChildGrapthPreriod period) {
    switch (period) {
      case ChildGrapthPreriod.first:
      case ChildGrapthPreriod.second:
        return '月齢(か月)';
      case ChildGrapthPreriod.third:
        return '年齢(歳)';
    }
  }
}

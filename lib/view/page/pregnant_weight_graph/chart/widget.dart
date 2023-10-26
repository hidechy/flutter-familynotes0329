import 'dart:async';
import 'dart:math';

import 'package:family_notes/provider/child/state.dart';
import 'package:family_notes/provider/event/event.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '/extension/date_time.dart';
import '/view/style/text_style.dart';
import '../../../../data/model/pregnant_weight_record_graph/model.dart';
import '../../../../extension/double.dart';
import '../../child_growth_graph/graph/style.dart';
import 'arrow/widget.dart';

/// 体重グラフ
class WeightChart extends StatefulWidget {
  const WeightChart({
    super.key,
    required this.birthDay,
    required this.records,
    required this.child,
  });

  /// 出産予定日（子ども選択中の場合は出産予定日）
  final DateTime birthDay;
  final List<WeightGraphData> records;
  final IHSChild child;

  @override
  State<WeightChart> createState() => _WeightChartState();
}

class _WeightChartState extends State<WeightChart> {
  late StreamSubscription subscription;
  List<WeightGraphData> get _records => widget.records;

  /// 現在のX軸の最小値
  double _currentBaseX = 0;

  /// x軸を+1ずつ移動させるための境界値
  double get boundaryLinePlus1X => 40;

  /// x軸を-1ずつ移動させるための境界値
  double get boundaryLineMinus1X => 1;

  /// X軸の最小値
  int get _minX => 0;

  /// X軸の最大値
  int get _maxX => 45;

  /// X軸の数
  int get _countX => 5;

  @override
  void initState() {
    setInitialXByChildType();
    subscription = eventBus.on<Event>().listen((event) {
      switch (event.key) {
        case Event.eventKeyNotifierWeightGraph:
          setInitialXByChildType();
          break;
      }
    });
    subscription.resume();
    super.initState();
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  /// 選択済みの子供種類に応じて、x軸の初期値の保持
  /// 胎児： 現在日から妊娠週数を算出し、グラフ中央に表示
  /// 子供: 一番古い記録日から妊娠週数を算出し、グラフ中央に表示
  void setInitialXByChildType() {
    widget.child.map(
      baby: (baby) {
        setInitialX(DateTime.now());
      },
      child: (child) {
        if (_records.isEmpty) {
          return;
        }

        setInitialX(_records.first.measurementDate);
      },
    );
  }

  /// 画面描画時にx軸の位置をグラフ中央で表示させるように、x軸の値保持
  void setInitialX(DateTime now) {
    final week = _getWeekFromDate(now);
    final roundedWeek = week.round();
    // x軸がマイナスの表示になってしまうため
    if (roundedWeek == 0.0) {
      return;
    }

    // 妊娠週数が0や1だとx軸がマイナスの表示になってしまうため、x軸から引く値の制御
    final minusX = roundedWeek < 2 ? 1.0 : 2.0;
    setState(() {
      _currentBaseX = roundedWeek - minusX;
    });
  }

  /// 記録日から妊娠週数を算出
  double _getWeekFromDate(DateTime date) {
    // 妊娠した日 (出産予定日-280)
    final startDate = widget.birthDay.add(const Duration(days: -280));
    // 妊娠した日とdateの日付の差
    final days = startDate.daysBetween(date);
    // 週数
    final week = days / 7;
    return week;
  }

  /// Y軸最小値（登録済みの最小の体重-5）
  int get _minY {
    final weightList = _records.map((e) => e.weight).toList();
    if (weightList.isEmpty) {
      return 50; // 何も登録がなければ50kg
    }

    // 登録済みの最小体重をkgに換算し取得
    final minKg = weightList.reduce(min).toKiloGram;
    return (minKg ~/ 5) * 5 - 5;
  }

  /// Y軸最大値（登録済みの最大の体重+15）
  int get _maxY {
    final weightList = _records.map((e) => e.weight).toList();
    if (weightList.isEmpty) {
      return 60; // 何も登録がなければ60kg
    }

    // 登録済みの最大体重をkgに換算し取得
    final maxKg = weightList.reduce(max).toKiloGram;
    return (maxKg ~/ 5) * 5 + 15;
  }

  @override
  Widget build(BuildContext context) {
    final activeBackBtn = _currentBaseX > _minX;
    final activeForwardBtn = _currentBaseX + _countX - 1 < _maxX;

    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 8),
            Text(
              '体重(kg)',
              style: IHSTextStyle.xSmall.copyWith(
                color: IHSGraphStyle.mainColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 400,
          child: LineChart(
            _buildData(),
          ),
        ),
        Text(
          '妊娠期間(週目)',
          style: IHSTextStyle.xSmall,
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackArrow(
              active: activeBackBtn,
              onPressed: () {
                setState(
                  () {
                    if (!activeBackBtn) {
                      return;
                    }

                    // 現在のx軸がboundaryLineMinus1Xになった場合、minXを超えないようにx軸の表示は-1ずつにしている
                    if (_currentBaseX == boundaryLineMinus1X) {
                      _currentBaseX -= 1;
                      return;
                    }

                    _currentBaseX -= 2;
                  },
                );
              },
            ),
            ForwardArrow(
              active: activeForwardBtn,
              onPressed: () {
                setState(
                  () {
                    if (!activeForwardBtn) {
                      return;
                    }

                    // 現在のx軸がboundaryLinePlus1X以上になった場合、maxXを超えないようにx軸の表示は+1ずつにしている
                    if (_currentBaseX >= boundaryLinePlus1X) {
                      _currentBaseX += 1;
                      return;
                    }

                    _currentBaseX += 2;
                  },
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  LineChartData _buildData() {
    return LineChartData(
      clipData: FlClipData.all(),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        // 横線レイアウト
        getDrawingHorizontalLine: (value) {
          return IHSGraphStyle.drawingLine;
        },
        // 縦線レイアウト
        getDrawingVerticalLine: (value) {
          return IHSGraphStyle.drawingLine;
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        // x軸のタイトル
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 32,
            interval: 1,
            getTitlesWidget: _bottomTitleWidgets,
          ),
        ),
        // y軸(左)のタイトル
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 5, // y軸のTitleの値の表示間隔
            getTitlesWidget: _leftTitleWidgets,
            reservedSize: 32,
          ),
        ),
        // y軸(右)のタイトル
        rightTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 8,
            getTitlesWidget: (double value, TitleMeta meta) {
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
      // ボーターレイアウト
      borderData: IHSGraphStyle.borderLayout,
      // タップ中のレイアウト
      lineTouchData: IHSGraphStyle.touchData,
      minX: _currentBaseX,
      maxX: _currentBaseX + _countX - 1,
      minY: _minY.toDouble(),
      maxY: _maxY.toDouble(),
      lineBarsData: [
        // 記録
        LineChartBarData(
          spots: _buildSpotList(),
          isCurved: false,
          barWidth: 1,
          color: IHSGraphStyle.mainColor,
          isStrokeCapRound: true,
          dotData: IHSGraphStyle.mainDotLayout,
          belowBarData: BarAreaData(show: false),
        ),
      ],
    );
  }

  /// 縦軸(左)のタイトル
  Widget _leftTitleWidgets(double value, TitleMeta meta) {
    return Text(
      value.toInt().toString(),
      style: IHSTextStyle.xSmall.copyWith(
        color: IHSGraphStyle.mainColor,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _bottomTitleWidgets(double value, TitleMeta meta) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          value.toInt().toString(),
          style: IHSTextStyle.xSmall.copyWith(height: 1),
        ),
      ),
    );
  }

  // プロット
  List<FlSpot> _buildSpotList() {
    final list = <FlSpot>[];
    _records.forEach(
      (record) {
        final x = _getWeekFromDate(record.measurementDate);
        final y = record.weight.toKiloGram;
        // y軸はkg体重の値がそのままメモリとなり表示される
        final spot = FlSpot(x, y);
        list.add(spot);
      },
    );

    return list;
  }
}

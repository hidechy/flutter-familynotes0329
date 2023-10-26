import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../data/model/child_growth_record_graph/model.dart';
import '../../../../style/text_style.dart';
import '../../state.dart';
import '../style.dart';

/// 身体発育曲線(頭囲)グラフ
class ChildHeadGraph extends StatelessWidget {
  const ChildHeadGraph({
    super.key,
    // 出産日（月齢の算出に使用）
    required this.birthDay,
    required this.period,
    required this.growthGraphDataList,
    required this.bandGraphDataList,
  });

  final DateTime birthDay;
  final ChildGrapthPreriod period;
  final List<GrowthGraphData> growthGraphDataList;
  final List<BandGraphData> bandGraphDataList;

  /// Y軸の目盛数
  int get yCount => 7;

  /// 身長のY軸の始点
  int get startY {
    switch (period) {
      case ChildGrapthPreriod.first:
        return 25;
      case ChildGrapthPreriod.second:
        return 30;
      case ChildGrapthPreriod.third:
        return 35;
    }
  }

  /// 身長のY軸のインターバル
  int get yInterval => 5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 8),
            Text(
              '頭囲(cm)',
              style:
                  IHSTextStyle.xSmall.copyWith(color: IHSGraphStyle.mainColor),
            ),
          ],
        ),
        const SizedBox(height: 12),
        AspectRatio(
          aspectRatio: 1,
          child: LineChart(
            _buildData(),
          ),
        ),
        Text(
          IHSGraphStyle.getAgeTitle(period),
          style: IHSTextStyle.xSmall,
          textAlign: TextAlign.center,
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
            getTitlesWidget: (value, meta) =>
                IHSGraphStyle.bottomTitleWidgets(period, value, meta),
          ),
        ),
        // y軸(左)のタイトル
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
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
      minX: 0,
      maxX: IHSGraphStyle.getXCount(period) - 1,
      minY: 0,
      maxY: yCount - 1,
      lineBarsData: [
        if (bandGraphDataList.isNotEmpty) ...[
          // 平均
          LineChartBarData(
            spots: _buildHeadPlot(isUpper: true),
            isCurved: true,
            barWidth: 0,
            color: IHSGraphStyle.mainColor,
            dotData: FlDotData(
              show: false,
            ),
          ),
          LineChartBarData(
            spots: _buildHeadPlot(isUpper: false),
            isCurved: true,
            barWidth: 0,
            color: IHSGraphStyle.mainColor,
            dotData: FlDotData(
              show: false,
            ),
          ),
        ],
        if (growthGraphDataList.isNotEmpty)
          // 頭囲の記録
          LineChartBarData(
            spots: _buildSpotList(),
            isCurved: false,
            barWidth: 1,
            color: IHSGraphStyle.mainColor,
            isStrokeCapRound: true,
            dotData: IHSGraphStyle.mainDotLayout,
            belowBarData: BarAreaData(
              show: false,
            ),
          ),
      ],
      betweenBarsData: bandGraphDataList.isNotEmpty
          ? [
              BetweenBarsData(
                fromIndex: 0,
                toIndex: 1,
                color: IHSGraphStyle.mainColor.withOpacity(0.1),
              ),
            ]
          : null,
    );
  }

  /// 縦軸(左)のタイトル
  Widget _leftTitleWidgets(double value, TitleMeta meta) {
    final index = value.toInt();
    final titleInt = index * yInterval + startY;
    return Text(
      titleInt.toString(),
      style: IHSTextStyle.xSmall.copyWith(
        color: IHSGraphStyle.mainColor,
      ),
      textAlign: TextAlign.center,
    );
  }

  // 平均をプロット
  List<FlSpot> _buildHeadPlot({
    required bool isUpper,
  }) {
    final list = <FlSpot>[];
    bandGraphDataList.asMap().forEach((index, data) {
      final head = isUpper ? data.mixHead : data.minHead;
      // y軸上の数値を計算
      final posY = (head - startY) / yInterval;
      final spot = FlSpot(
        IHSGraphStyle.getPosX(
          data.date,
          period: period,
          birthday: birthDay,
        ),
        posY,
      );
      list.add(spot);
    });
    return list;
  }

  // 頭位をプロット
  List<FlSpot> _buildSpotList() {
    final list = <FlSpot>[];
    growthGraphDataList.asMap().forEach((index, record) {
      if (record.head != null) {
        final posY = (record.head! - startY) / yInterval;
        final spot = FlSpot(
          IHSGraphStyle.getPosX(
            record.measurementDate,
            period: period,
            birthday: birthDay,
          ),
          posY,
        );
        list.add(spot);
      }
    });
    return list;
  }
}

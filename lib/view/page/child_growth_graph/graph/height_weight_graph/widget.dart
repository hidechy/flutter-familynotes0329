import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../data/model/child_growth_record_graph/model.dart';
import '../../../../style/text_style.dart';
import '../../state.dart';
import '../style.dart';

/// 身体発育曲線(身長・体重)グラフ
class ChildHeightWeightGraph extends StatelessWidget {
  const ChildHeightWeightGraph({
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
  int get yCount {
    switch (period) {
      case ChildGrapthPreriod.first:
        return 15;
      case ChildGrapthPreriod.second:
      case ChildGrapthPreriod.third:
        return 13;
    }
  }

  /// 身長のY軸の始点
  int get heightStartY {
    switch (period) {
      case ChildGrapthPreriod.first:
        return 10;
      case ChildGrapthPreriod.second:
      case ChildGrapthPreriod.third:
        return 5;
    }
  }

  /// 身長のY軸のインターバル
  int get heightYInterval {
    switch (period) {
      case ChildGrapthPreriod.first:
        return 5;
      case ChildGrapthPreriod.second:
      case ChildGrapthPreriod.third:
        return 10;
    }
  }

  /// 体重のY座標の始点
  int get weightStartY {
    switch (period) {
      case ChildGrapthPreriod.first:
        return 0;
      case ChildGrapthPreriod.second:
      case ChildGrapthPreriod.third:
        return 6;
    }
  }

  /// 体重のY座標のインターバル
  int get weightYInterval {
    switch (period) {
      case ChildGrapthPreriod.first:
        return 1;
      case ChildGrapthPreriod.second:
      case ChildGrapthPreriod.third:
        return 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 4),
            Text(
              '身長(cm)',
              style:
                  IHSTextStyle.xSmall.copyWith(color: IHSGraphStyle.mainColor),
              textAlign: TextAlign.center,
            ),
            Expanded(child: Container()),
            Text(
              '体重(kg)',
              style:
                  IHSTextStyle.xSmall.copyWith(color: IHSGraphStyle.subColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: 8),
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
            interval: 1,
            getTitlesWidget: _rightTitleWidgets,
            reservedSize: 32,
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
          // 平均身長
          LineChartBarData(
            spots: _buildHeightPlot(isUpper: true),
            isCurved: true,
            barWidth: 0,
            color: IHSGraphStyle.mainColor,
            dotData: FlDotData(
              show: false,
            ),
          ),
          LineChartBarData(
            spots: _buildHeightPlot(isUpper: false),
            isCurved: true,
            barWidth: 0,
            color: IHSGraphStyle.mainColor,
            dotData: FlDotData(
              show: false,
            ),
          ),
          // 平均体重
          LineChartBarData(
            spots: _buildWeightPlot(isUpper: true),
            isCurved: true,
            barWidth: 0,
            color: IHSGraphStyle.subColor,
            dotData: FlDotData(
              show: false,
            ),
          ),
          LineChartBarData(
            spots: _buildWeightPlot(isUpper: false),
            isCurved: true,
            barWidth: 0,
            color: IHSGraphStyle.subColor,
            dotData: FlDotData(
              show: false,
            ),
          ),
        ],
        if (growthGraphDataList.isNotEmpty) ...[
          // 身長の記録
          LineChartBarData(
            spots: _buildHeightSpotList(),
            isCurved: false,
            barWidth: 1,
            color: IHSGraphStyle.mainColor,
            isStrokeCapRound: true,
            dotData: IHSGraphStyle.mainDotLayout,
          ),
          // 体重の記録
          LineChartBarData(
            spots: _buildWeightSpotList(),
            isCurved: false,
            barWidth: 1,
            color: IHSGraphStyle.subColor,
            isStrokeCapRound: true,
            dotData: IHSGraphStyle.subDotLayout,
          ),
        ],
      ],
      betweenBarsData: bandGraphDataList.isNotEmpty
          ? [
              BetweenBarsData(
                fromIndex: 0,
                toIndex: 1,
                color: IHSGraphStyle.mainColor.withOpacity(0.1),
              ),
              BetweenBarsData(
                fromIndex: 2,
                toIndex: 3,
                color: IHSGraphStyle.subColor.withOpacity(0.1),
              )
            ]
          : null,
    );
  }

  /// 縦軸(左)のタイトル
  Widget _leftTitleWidgets(double value, TitleMeta meta) {
    final index = value.toInt();
    final titleInt = index * heightYInterval + heightStartY;
    return Text(
      titleInt.toString(),
      style: IHSTextStyle.xSmall.copyWith(
        color: IHSGraphStyle.mainColor,
      ),
      textAlign: TextAlign.center,
    );
  }

  /// 縦軸(右)のタイトル
  Widget _rightTitleWidgets(double value, TitleMeta meta) {
    final index = value.toInt();
    final titleInt = index * weightYInterval + weightStartY;
    return Text(
      titleInt.toString(),
      style: IHSTextStyle.xSmall.copyWith(
        color: IHSGraphStyle.subColor,
      ),
      textAlign: TextAlign.center,
    );
  }

  // 身長の平均値をプロット
  List<FlSpot> _buildHeightPlot({
    required bool isUpper,
  }) {
    final list = <FlSpot>[];
    bandGraphDataList.asMap().forEach((index, data) {
      final height = isUpper ? data.maxHeight : data.minHeight;
      // y軸上の数値を計算
      final posY = (height - heightStartY) / heightYInterval;
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

  // 体重の平均値をプロット
  List<FlSpot> _buildWeightPlot({
    required bool isUpper,
  }) {
    final list = <FlSpot>[];
    bandGraphDataList.asMap().forEach((index, data) {
      final weight = isUpper ? data.maxWeight : data.minWeight;
      // y軸上の数値を計算
      final posY = (weight / 1000 - weightStartY) / weightYInterval;
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

  // 身長をプロット
  List<FlSpot> _buildHeightSpotList() {
    final list = <FlSpot>[];
    growthGraphDataList.asMap().forEach((index, record) {
      if (record.height != null) {
        final posX = IHSGraphStyle.getPosX(
          record.measurementDate,
          period: period,
          birthday: birthDay,
        );
        final posY = (record.height! - heightStartY) / heightYInterval;
        final spot = FlSpot(
          posX,
          posY,
        );
        list.add(spot);
      }
    });
    return list;
  }

  // 体重をプロット
  List<FlSpot> _buildWeightSpotList() {
    final list = <FlSpot>[];
    growthGraphDataList.asMap().forEach((index, record) {
      if (record.weight != null) {
        final posY = (record.weight! / 1000 - weightStartY) / weightYInterval;
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

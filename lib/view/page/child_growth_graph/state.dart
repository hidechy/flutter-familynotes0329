import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/child_growth_record_graph/model.dart';

part 'state.freezed.dart';

/// 身体発育曲線画面の状態
@freezed
class ChildWeightGraphState with _$ChildWeightGraphState {
  const factory ChildWeightGraphState({
    // 身体記録リスト
    @Default([]) List<GrowthGraphData> growthGraphDataList,
    // 成長曲線データリスト
    @Default([]) List<BandGraphData> bandGraphDataList,
    // 選択中のグラフ種別
    @Default(ChildGraphType.heightAndWeight) ChildGraphType selectedGraphType,
    // 選択中の対象期間
    @Default(ChildGrapthPreriod.first)
        ChildGrapthPreriod selectedChildGrapthPreriod,
    @Default(false) bool showPeriodPulldown,
  }) = _ChildWeightGraphState;
}

/// グラフ種別
enum ChildGraphType {
  /// 身長・体重
  heightAndWeight(label: '身長・体重'),

  /// 頭囲
  head(label: '頭囲'),

  /// 胸囲
  chest(label: '胸囲');

  const ChildGraphType({required this.label});
  final String label;
}

// グラフの対象期間
enum ChildGrapthPreriod {
  /// 乳児（0~12か月）
  first(
    label: '乳児身体発育曲線',
    periodLabel: '（0か月-12か月）',
    categoryId: 1,
  ),

  /// 幼児（1~2歳）
  second(
    label: '幼児身体発育曲線',
    periodLabel: '（1歳-2歳）',
    categoryId: 2,
  ),

  /// 幼児（2~6歳）
  third(
    label: '幼児身体発育曲線',
    periodLabel: '（2歳-6歳）',
    categoryId: 3,
  );

  const ChildGrapthPreriod({
    required this.label,
    required this.periodLabel,
    required this.categoryId,
  });

  final String label;
  final String periodLabel;
  final int categoryId;

  /// [生年月日]と[現在日]の[差分の日数]からグラフの対象期間種類の取得
  static ChildGrapthPreriod getTypeFromDiffrenceBirthdayAndToday(
    int days,
  ) {
    if (days <= 365) {
      return ChildGrapthPreriod.first;
    }

    if (days >= 366 && days <= 730) {
      return ChildGrapthPreriod.second;
    }

    return ChildGrapthPreriod.third;
  }
}

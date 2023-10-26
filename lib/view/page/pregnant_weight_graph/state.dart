import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/pregnant_weight_record_graph/model.dart';

part 'state.freezed.dart';

/// 体重グラフ画面の状態
@freezed
class PregnantWeightGraphState with _$PregnantWeightGraphState {
  const factory PregnantWeightGraphState.loading() =
      PregnantWeightGraphStateLoading;

  const factory PregnantWeightGraphState.loaded({
    // 体重記録リスト
    @Default([]) List<WeightGraphData> weightGraphDataList,
  }) = PregnantWeightGraphStateLoaded;
}

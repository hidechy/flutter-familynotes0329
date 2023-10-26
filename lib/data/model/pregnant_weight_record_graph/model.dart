import 'package:family_notes/data/model/converter/datetime.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 妊婦体重フラグ曲線データ取得APIから返却されるデータモデル
@freezed
class PregnantWeightRecordGraphModel with _$PregnantWeightRecordGraphModel {
  const factory PregnantWeightRecordGraphModel({
    @Default([]) List<WeightGraphData> list,
  }) = _PregnantWeightRecordGraphModel;

  factory PregnantWeightRecordGraphModel.fromJson(Map<String, dynamic> json) =>
      _$PregnantWeightRecordGraphModelFromJson(json);
}

@freezed
class WeightGraphData with _$WeightGraphData {
  const factory WeightGraphData({
    @DateTimeConverter()
    @JsonKey(name: 'measurement_date')
        required DateTime measurementDate,
    required double weight,
  }) = _WeightGraphData;

  factory WeightGraphData.fromJson(Map<String, dynamic> json) =>
      _$WeightGraphDataFromJson(json);
}

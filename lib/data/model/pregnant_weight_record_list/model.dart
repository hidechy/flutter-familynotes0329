import 'package:freezed_annotation/freezed_annotation.dart';

import '../converter/datetime.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 体重グラフ記録一覧から返されるデータモデル
@freezed
class PregnantWeightRecordListModel with _$PregnantWeightRecordListModel {
  const factory PregnantWeightRecordListModel({
    required List<PregnantWeightRecord> list,
  }) = _ChildPregnantWeightRecordListModel;

  factory PregnantWeightRecordListModel.fromJson(Map<String, dynamic> json) =>
      _$PregnantWeightRecordListModelFromJson(json);
}

@freezed
class PregnantWeightRecord with _$PregnantWeightRecord {
  const factory PregnantWeightRecord({
    @JsonKey(name: 'mother_weight_record_id') required int recordId,
    @DateTimeConverter()
    @JsonKey(name: 'measurement_date')
        required DateTime date,
    required int weight,
  }) = _ChildPregnantWeightRecord;

  factory PregnantWeightRecord.fromJson(Map<String, dynamic> json) =>
      _$PregnantWeightRecordFromJson(json);
}

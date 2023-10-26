import 'package:freezed_annotation/freezed_annotation.dart';

import '../converter/datetime.dart';

part 'model.freezed.dart';

part 'model.g.dart';

/// 乳幼児身体記録一覧から返されるデータモデル
@freezed
class ChildGrowthRecordListModel with _$ChildGrowthRecordListModel {
  const factory ChildGrowthRecordListModel({
    required List<ChildGrowthRecord> list,
  }) = _ChildChildGrowthRecordListModel;

  factory ChildGrowthRecordListModel.fromJson(Map<String, dynamic> json) =>
      _$ChildGrowthRecordListModelFromJson(json);
}

@freezed
class ChildGrowthRecord with _$ChildGrowthRecord {
  const factory ChildGrowthRecord({
    @JsonKey(name: 'child_body_record_id') required int recordId,
    @DateTimeConverter()
    @JsonKey(name: 'measurement_date')
        required DateTime date,
    required double? height,
    required int? weight,
    @JsonKey(name: 'head_measurement') required double? head,
    @JsonKey(name: 'chest_measurement') required double? chest,
  }) = _ChildChildGrowthRecord;

  factory ChildGrowthRecord.fromJson(Map<String, dynamic> json) =>
      _$ChildGrowthRecordFromJson(json);
}

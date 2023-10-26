import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';

part 'request.g.dart';

/// 乳幼児身体記録保存（新規or更新）のリクエスト
@freezed
class ChildGrowthRecordSaveRequest with _$ChildGrowthRecordSaveRequest {
  const factory ChildGrowthRecordSaveRequest({
    @JsonKey(name: 'child_body_record_id') int? recordId, // 新規の場合はnull
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'measurement_date') required String date,
    required double? height,
    required double? weight,
    @JsonKey(name: 'head_measurement') required double? head,
    @JsonKey(name: 'chest_measurement') required double? chest,
  }) = _ChildGrowthRecordSaveRequest;

  factory ChildGrowthRecordSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$ChildGrowthRecordSaveRequestFromJson(json);
}

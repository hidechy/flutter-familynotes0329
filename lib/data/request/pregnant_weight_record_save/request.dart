import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// 妊婦体重記録保存（新規or更新）のリクエスト
@freezed
class PregnantWeightRecordSaveRequest with _$PregnantWeightRecordSaveRequest {
  const factory PregnantWeightRecordSaveRequest({
    @JsonKey(name: 'mother_weight_record_id') int? recordId, // 新規の場合はnull
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'measurement_date') required String date,
    required double weight,
  }) = _PregnantWeightRecordSaveRequest;

  factory PregnantWeightRecordSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$PregnantWeightRecordSaveRequestFromJson(json);
}

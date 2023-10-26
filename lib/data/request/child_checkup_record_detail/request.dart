import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';

part 'request.g.dart';

/// 乳幼児健診詳細取得のリクエスト
@freezed
class ChildCheckupRecordDetailRequest with _$ChildCheckupRecordDetailRequest {
  const factory ChildCheckupRecordDetailRequest({
    @JsonKey(name: 'child_checkup_record_id') required int recordId,
    @JsonKey(name: 'child_id') required int childId,
  }) = _ChildCheckupRecordDetailRequest;

  factory ChildCheckupRecordDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$ChildCheckupRecordDetailRequestFromJson(json);
}

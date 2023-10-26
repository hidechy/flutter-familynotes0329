import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// お子さま作成（更新）のリクエスト
@freezed
class CheckupRecordSaveRequest with _$CheckupRecordSaveRequest {
  const factory CheckupRecordSaveRequest({
    @JsonKey(name: 'mother_checkup_record_id') int? checkupId, // 新規ならnull
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'checkup_day') required String checkupDay,
    @JsonKey(name: 'gestational_week') int? gestationalWeek,
    @JsonKey(name: 'gestational_week_day') int? gestationalWeekDay,
    double? weight,
    @JsonKey(name: 'is_normal') String? isNormal,
    @JsonKey(name: 'is_ta') String? isTa,
    @JsonKey(name: 'is_pih') String? isPih,
    @JsonKey(name: 'is_gdm') String? isGdm,
    @JsonKey(name: 'is_anemia') String? isAnemia,
    @JsonKey(name: 'is_other_disease') String? isOtherDisease,
    String? note,
  }) = _ChildCheckupRecordSaveRequest;

  factory CheckupRecordSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckupRecordSaveRequestFromJson(json);
}

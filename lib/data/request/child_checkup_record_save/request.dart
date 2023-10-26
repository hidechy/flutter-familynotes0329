import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';

part 'request.g.dart';

/// 乳幼児健診登録・更新のリクエスト
@freezed
class ChildCheckupRecordSaveRequest with _$ChildCheckupRecordSaveRequest {
  const factory ChildCheckupRecordSaveRequest({
    @JsonKey(name: 'child_checkup_record_id') int? recordId, // 新規ならnull
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'child_checkup_type_id') required int childCheckupTypeId,
    @JsonKey(name: 'checkup_day') required String checkupDay,
    double? height,
    int? weight,
    @JsonKey(name: 'head_measurement') double? head,
    @JsonKey(name: 'chest_measurement') double? chest,
    @JsonKey(name: 'is_normal') String? isNormal,
    @JsonKey(name: 'is_observation') String? isObservation,
    @JsonKey(name: 'is_detailed_examination') String? isDetailedExamination,
    @JsonKey(name: 'is_treatment') String? isTreatment,
    @JsonKey(name: 'teeth_num') int? teethNum,
    @JsonKey(name: 'is_bad_tooth') String? isBadTooth,
    @JsonKey(name: 'bad_tooth_num') int? badToothNum,
    @JsonKey(name: 'baby_bad_tooth_num') int? babyBadToothNum,
    @JsonKey(name: 'adult_bad_tooth_num') int? adultBadToothNum,
    @Default('') String note,
  }) = _ChildCheckupRecordSaveRequest;

  factory ChildCheckupRecordSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$ChildCheckupRecordSaveRequestFromJson(json);
}

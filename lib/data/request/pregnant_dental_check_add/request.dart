import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';

part 'request.g.dart';

/// 妊婦産後歯科健診入力保存のリクエスト
@freezed
class PregnantDentalCheckSaveRequest with _$PregnantDentalCheckSaveRequest {
  const factory PregnantDentalCheckSaveRequest({
    @JsonKey(name: 'mother_dental_checkup_record_id')
    @Default(null)
        int? motherDentalCheckupRecordId,
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'gestational_week') @Default(null) int? gestationalWeek,
    @JsonKey(name: 'checkup_day') required String checkupDay,
    @JsonKey(name: 'is_childbirth') required String isChildbirth,
    @JsonKey(name: 'is_normal') required String isNormal,
    @JsonKey(name: 'is_tbi') required String isTbi,
    @JsonKey(name: 'is_treatment') required String isTreatment,
    @JsonKey(name: 'note') required String note,
  }) = _PregnantDentalCheckSaveRequest;

  factory PregnantDentalCheckSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$PregnantDentalCheckSaveRequestFromJson(json);
}

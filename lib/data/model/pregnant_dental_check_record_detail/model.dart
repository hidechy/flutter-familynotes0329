import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 妊婦産後歯科健診記録詳細から返却されるデータモデル
@freezed
class PregnantDentalCheckRecordDetailModel
    with _$PregnantDentalCheckRecordDetailModel {
  const factory PregnantDentalCheckRecordDetailModel({
    @JsonKey(name: 'mother_dental_checkup_record_id')
        required int motherDentalCheckupRecordId,
    @JsonKey(name: 'checkup_day') required String checkupDay,
    @JsonKey(name: 'gestational_week') required int? gestationalWeek,
    @JsonKey(name: 'is_childbirth') required String isChildBirth,
    @JsonKey(name: 'is_normal') required String isNormal,
    @JsonKey(name: 'is_tbi') required String isTbi,
    @JsonKey(name: 'is_treatment') required String isTreatment,
    @JsonKey(name: 'note') required String? note,
  }) = _PregnantDentalCheckRecordDetailModel;

  factory PregnantDentalCheckRecordDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PregnantDentalCheckRecordDetailModelFromJson(json);
}

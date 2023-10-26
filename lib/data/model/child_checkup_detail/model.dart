import 'package:freezed_annotation/freezed_annotation.dart';

import '../converter/datetime.dart';

part 'model.freezed.dart';

part 'model.g.dart';

/// 乳幼児健診記録詳細から返却されるデータモデル
@freezed
class ChildCheckupDetailModel with _$ChildCheckupDetailModel {
  const factory ChildCheckupDetailModel({
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'child_checkup_type_id') required int childCheckupTypeId,
    @DateTimeConverter()
    @JsonKey(name: 'checkup_day')
        required DateTime checkupDay,
    double? height,
    int? weight,
    @JsonKey(name: 'head_measurement') double? headMeasurement,
    @JsonKey(name: 'chest_measurement') double? chestMeasurement,
    @JsonKey(name: 'is_normal') required String isNormal,
    @JsonKey(name: 'is_observation') required String isObservation,
    @JsonKey(name: 'is_detailed_examination')
        required String isDetailedExamination,
    @JsonKey(name: 'is_treatment') required String isTreatment,
    @JsonKey(name: 'teeth_num') int? teethNum,
    @JsonKey(name: 'is_bad_tooth') required String isBadTooth,
    @JsonKey(name: 'bad_tooth_num') int? badToothNum,
    @JsonKey(name: 'baby_bad_tooth_num') int? babyBadToothNum,
    @JsonKey(name: 'adult_bad_tooth_num') int? adultBadToothNum,
    String? note,
  }) = _ChildCheckupDetailModel;

  factory ChildCheckupDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ChildCheckupDetailModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

part 'model.g.dart';

/// 子ども取得APIから返却されるデータモデル
@freezed
class ChildModel with _$ChildModel {
  const factory ChildModel({
    @JsonKey(name: 'baby_id') required int? babyId,
    @JsonKey(name: 'child_nickname') required String? childNickname,
    int? gender,
    String? birthday,
    @JsonKey(name: 'month_from_birth') int? monthFromBirth,
    double? height,
    int? weight,
    @JsonKey(name: 'head_measurement') double? headMeasurement,
    @JsonKey(name: 'chest_measurement') double? chestMeasurement,
    @JsonKey(name: 'birth_place') String? birthPlace,
    @JsonKey(name: 'birth_doctor') String? birthDoctor,
    @JsonKey(name: 'mother_father_feeling') String? motherFatherFeeling,
    String? message,
    String? comment,
    @JsonKey(name: 'baby_nickname') String? babyNickname,
    @JsonKey(name: 'birth_schedule_date') String? birthScheduleDate,
    @JsonKey(name: 'gestational_week') int? gestationalWeek,
    @JsonKey(name: 'gestational_week_day') int? gestationalWeekDay,
  }) = _ChildModel;

  factory ChildModel.fromJson(Map<String, dynamic> json) =>
      _$ChildModelFromJson(json);
}

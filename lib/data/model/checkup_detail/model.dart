import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 妊婦健診一覧詳細から返されるデータモデル
@freezed
class CheckupDetailModel with _$CheckupDetailModel {
  /// default constructor
  const factory CheckupDetailModel({
    @JsonKey(name: 'mother_checkup_record_id') required int checkupId,
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
  }) = _CheckupDetailModel;

  factory CheckupDetailModel.fromJson(Map<String, dynamic> json) =>
      _$CheckupDetailModelFromJson(json);
}

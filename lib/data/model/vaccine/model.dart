import 'package:freezed_annotation/freezed_annotation.dart';

import '../converter/datetime.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 予防接種一覧取得apiから返却されるデータモデル
@freezed
class VaccineListModel with _$VaccineListModel {
  @JsonSerializable(explicitToJson: true)
  const factory VaccineListModel({
    @Default([]) List<VaccineDetailModel> list,
  }) = _VaccineListModel;

  factory VaccineListModel.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineListModelFromJson(json);
}

@freezed
class VaccineDetailModel with _$VaccineDetailModel {
  @JsonSerializable(explicitToJson: true)
  const factory VaccineDetailModel({
    @JsonKey(name: 'vaccine_type_id') required int vaccineId, // ワクチンId
    @JsonKey(name: 'vaccine_type_name') required String vaccineName, // ワクチン名
    @JsonKey(name: 'vaccine_style') required int vaccineStyle, //
    @JsonKey(name: 'apply_type') required int applyType, // 0=定期, 1=任意
    @JsonKey(name: 'way_of_apply') required String wayOfApply, // 経口とか
    @JsonKey(name: 'max_apply_times') required int neededTimes, // 必要回数
    @JsonKey(name: 'apply_gender') required int applyGender,
    @JsonKey(name: 'sub_types')
        required List<VaccineSubTypeModel> subTypeList, // １価とか
    @JsonKey(name: 'status_reserved')
        required List<VaccineInoculationModel> reservedList,
    @JsonKey(name: 'status_applied')
        required List<VaccineInoculationModel> appliedList,
  }) = _VaccineDetailModel;

  factory VaccineDetailModel.fromJson(Map<String, dynamic> json) =>
      _$VaccineDetailModelFromJson(json);
}

@freezed
class VaccineSubTypeModel with _$VaccineSubTypeModel {
  const factory VaccineSubTypeModel({
    @JsonKey(name: 'vaccine_sub_type_name') required String subTypeName,
    @JsonKey(name: 'vaccine_sub_type_id') required int subTypeId,
  }) = _VaccineSubTypeModel;

  factory VaccineSubTypeModel.fromJson(Map<String, dynamic> json) =>
      _$VaccineSubTypeModelFromJson(json);
}

@freezed
class VaccineInoculationModel with _$VaccineInoculationModel {
  const factory VaccineInoculationModel({
    @JsonKey(name: 'vaccine_sub_type_id') required int? vaccineSubTypeId,
    @JsonKey(name: 'what_time') required int whatTime, // x回目
    @JsonKey(name: 'status') required String status, // "Y" or "R"
    @DateTimeConverter()
    @JsonKey(name: 'set_at')
        required DateTime? setAt, // "2022-11-10 00:00:00"
    @JsonKey(name: 'vaccine_status_id') required int? statusId,
    @JsonKey(name: 'what_time_string') required String? whatTimeName,
  }) = _VaccineInoculationModel;

  factory VaccineInoculationModel.fromJson(Map<String, dynamic> json) =>
      _$VaccineInoculationModelFromJson(json);
}

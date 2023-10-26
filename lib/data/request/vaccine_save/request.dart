import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@freezed
class VaccineSaveRequest with _$VaccineSaveRequest {
  /// default constructor
  const factory VaccineSaveRequest({
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'vaccine_type_id') required int vaccineTypeId,
    @JsonKey(name: 'vaccine_sub_type_id') required int vaccineSubTypeId,
    @JsonKey(name: 'what_time') required int whatTime,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'set_at') required String setAt,
  }) = _VaccineSaveRequest;

  factory VaccineSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$VaccineSaveRequestFromJson(json);
}

@freezed
class VaccineSaveListRequest with _$VaccineSaveListRequest {
  /// default constructor
  @JsonSerializable(explicitToJson: true)
  const factory VaccineSaveListRequest({
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'vaccine_type_id') required int vaccineTypeId,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'list') required List<VaccineSaveItem> saveList,
  }) = _VaccineSaveListRequest;

  factory VaccineSaveListRequest.fromJson(Map<String, dynamic> json) =>
      _$VaccineSaveListRequestFromJson(json);
}

@freezed
class VaccineSaveItem with _$VaccineSaveItem {
  const factory VaccineSaveItem({
    @JsonKey(name: 'vaccine_sub_type_id') required int vaccineSubTypeId,
    @JsonKey(name: 'what_time') required int whatTime,
    @JsonKey(name: 'set_at') required String setAt,
  }) = _VaccineSaveItem;

  factory VaccineSaveItem.fromJson(Map<String, dynamic> json) =>
      _$VaccineSaveItemFromJson(json);
}

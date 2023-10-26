import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 乳幼児健診マスタ取得から返されるデータモデル
@freezed
class ChildCheckupTypesModel with _$ChildCheckupTypesModel {
  /// default constructor
  @JsonSerializable(explicitToJson: true)
  const factory ChildCheckupTypesModel({
    @Default([]) List<ChildCheckupType> list,
  }) = _ChildCheckupTypesModel;

  factory ChildCheckupTypesModel.fromJson(Map<String, dynamic> json) =>
      _$ChildCheckupTypesModelFromJson(json);
}

@freezed
class ChildCheckupType with _$ChildCheckupType {
  /// default constructor
  const factory ChildCheckupType({
    @JsonKey(name: 'child_checkup_type_id') required int? childCheckupTypeId,
    @JsonKey(name: 'checkup_name') required String? checkUpName,
    @JsonKey(name: 'checkup_short_name') required String? checkUpShortName,
  }) = _ChildCheckupType;

  factory ChildCheckupType.fromJson(Map<String, dynamic> json) =>
      _$ChildCheckupTypeFromJson(json);
}

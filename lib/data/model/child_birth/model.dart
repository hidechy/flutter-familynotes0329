import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 誕生時子供化APIから返却されるデータモデル
@freezed
class ChildBirthListModel with _$ChildBirthListModel {
  @JsonSerializable(explicitToJson: true)
  const factory ChildBirthListModel({
    @Default([]) List<ChildBirthModel> list,
  }) = _ChildBirthListModel;

  factory ChildBirthListModel.fromJson(Map<String, dynamic> json) =>
      _$ChildBirthListModelFromJson(json);
}

@freezed
class ChildBirthModel with _$ChildBirthModel {
  const factory ChildBirthModel({
    @JsonKey(name: 'child_id') required int id,
    @Default('') String nickname,
  }) = _ChildBirthModel;

  factory ChildBirthModel.fromJson(Map<String, dynamic> json) =>
      _$ChildBirthModelFromJson(json);
}

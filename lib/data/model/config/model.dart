import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

part 'model.g.dart';

/// コンフィグ用のデータモデル
@freezed
class ConfigModel with _$ConfigModel {
  @JsonSerializable(explicitToJson: true)
  const factory ConfigModel({
    @Default([]) List<ConfigItemModel> list,
  }) = _ConfigModel;

  factory ConfigModel.fromJson(Map<String, dynamic> json) =>
      _$ConfigModelFromJson(json);
}

@freezed
class ConfigItemModel with _$ConfigItemModel {
  const factory ConfigItemModel({
    required String key,
    required String value,
  }) = _ConfigItemModel;

  factory ConfigItemModel.fromJson(Map<String, dynamic> json) =>
      _$ConfigItemModelFromJson(json);
}

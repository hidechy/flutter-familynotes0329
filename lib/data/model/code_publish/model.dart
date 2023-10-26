import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// コード発行（サインアップ時）APIから返却されるデータモデル
@freezed
class CodePublishModel with _$CodePublishModel {
  const factory CodePublishModel({
    @JsonKey(name: 'auth_code') required String authCode,

  }) = _CodePublishModel;

  factory CodePublishModel.fromJson(Map<String, dynamic> json) =>
      _$CodePublishModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// ログインAPIから返却されるデータモデル
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'user_id') required int userId,
    String? nickname,
    String? email,
    String? birthday,
    int? gender,
    @JsonKey(name: 'postal_code') String? postalCode,
    @JsonKey(name: 'access_token') required String accessToken,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

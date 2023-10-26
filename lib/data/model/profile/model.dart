import 'package:freezed_annotation/freezed_annotation.dart';

import '../converter/datetime.dart';

part 'model.freezed.dart';

part 'model.g.dart';

/// プロフィール取得apiから返却されるデータモデル
@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required String? nickname,
    required String? email,
    @DateTimeConverter() DateTime? birthday,
    int? gender,
    @JsonKey(name: 'postal_code') String? postalCode,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

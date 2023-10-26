import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';

part 'request.g.dart';

/// プロフィール情報更新のリクエスト
@freezed
class ProfileEditRequest with _$ProfileEditRequest {
  /// default constructor
  const factory ProfileEditRequest({
    required String? nickname,
    required String? birthday,
    required int? gender, // 男:1, 女:2,
    @JsonKey(name: 'postal_code') required String? postalCode,
  }) = _ProfileEditRequest;

  factory ProfileEditRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileEditRequestFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// サインアップのリクエスト
@freezed
class SignUpRequest with _$SignUpRequest {
  /// default constructor
  const factory SignUpRequest.baby({
    @JsonKey(name: 'auth_code') required String authCode,
    required String nickname,
    required String email,
    required String password,
    required String birthday,
    required int gender, // 男:1, 女:2,
    @JsonKey(name: 'postal_code') required String postalCode,
    // 同意したプラポリのID
    @JsonKey(name: 'privacy_policy_consent_id')
        required int privacyPolicyConsentId,
    // 同意した利用規約のID
    @JsonKey(name: 'service_terms_consent_id')
        required int serviceTermsConsentId,
    @Default('baby') type,
    @JsonKey(name: 'baby_nickname') required String babyNickname,
    @JsonKey(name: 'birth_schedule_date') required String birthScheduleDate,
  }) = BabySignUpRequest;

  const factory SignUpRequest.child({
    @JsonKey(name: 'auth_code') required String authCode,
    required String nickname,
    required String email,
    required String password,
    required String birthday,
    required int gender, // 男:1, 女:2,
    @JsonKey(name: 'postal_code') required String postalCode,
    // 同意したプラポリのID
    @JsonKey(name: 'privacy_policy_consent_id')
        required int privacyPolicyConsentId,
    // 同意した利用規約のID
    @JsonKey(name: 'service_terms_consent_id')
        required int serviceTermsConsentId,
    @Default('child') type,
    @JsonKey(name: 'child_nickname') required String childNickname,
    @JsonKey(name: 'child_gender') required int childGender,
    @JsonKey(name: 'child_birthday') required String childBirthday,
  }) = ChildSignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
}

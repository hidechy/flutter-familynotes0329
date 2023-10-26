// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BabySignUpRequest _$$BabySignUpRequestFromJson(Map<String, dynamic> json) =>
    _$BabySignUpRequest(
      authCode: json['auth_code'] as String,
      nickname: json['nickname'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      birthday: json['birthday'] as String,
      gender: json['gender'] as int,
      postalCode: json['postal_code'] as String,
      privacyPolicyConsentId: json['privacy_policy_consent_id'] as int,
      serviceTermsConsentId: json['service_terms_consent_id'] as int,
      type: json['type'] ?? 'baby',
      babyNickname: json['baby_nickname'] as String,
      birthScheduleDate: json['birth_schedule_date'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BabySignUpRequestToJson(_$BabySignUpRequest instance) =>
    <String, dynamic>{
      'auth_code': instance.authCode,
      'nickname': instance.nickname,
      'email': instance.email,
      'password': instance.password,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'postal_code': instance.postalCode,
      'privacy_policy_consent_id': instance.privacyPolicyConsentId,
      'service_terms_consent_id': instance.serviceTermsConsentId,
      'type': instance.type,
      'baby_nickname': instance.babyNickname,
      'birth_schedule_date': instance.birthScheduleDate,
      'runtimeType': instance.$type,
    };

_$ChildSignUpRequest _$$ChildSignUpRequestFromJson(Map<String, dynamic> json) =>
    _$ChildSignUpRequest(
      authCode: json['auth_code'] as String,
      nickname: json['nickname'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      birthday: json['birthday'] as String,
      gender: json['gender'] as int,
      postalCode: json['postal_code'] as String,
      privacyPolicyConsentId: json['privacy_policy_consent_id'] as int,
      serviceTermsConsentId: json['service_terms_consent_id'] as int,
      type: json['type'] ?? 'child',
      childNickname: json['child_nickname'] as String,
      childGender: json['child_gender'] as int,
      childBirthday: json['child_birthday'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ChildSignUpRequestToJson(
        _$ChildSignUpRequest instance) =>
    <String, dynamic>{
      'auth_code': instance.authCode,
      'nickname': instance.nickname,
      'email': instance.email,
      'password': instance.password,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'postal_code': instance.postalCode,
      'privacy_policy_consent_id': instance.privacyPolicyConsentId,
      'service_terms_consent_id': instance.serviceTermsConsentId,
      'type': instance.type,
      'child_nickname': instance.childNickname,
      'child_gender': instance.childGender,
      'child_birthday': instance.childBirthday,
      'runtimeType': instance.$type,
    };

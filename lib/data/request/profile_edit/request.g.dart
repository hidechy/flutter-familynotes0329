// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileEditRequest _$$_ProfileEditRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileEditRequest(
      nickname: json['nickname'] as String?,
      birthday: json['birthday'] as String?,
      gender: json['gender'] as int?,
      postalCode: json['postal_code'] as String?,
    );

Map<String, dynamic> _$$_ProfileEditRequestToJson(
        _$_ProfileEditRequest instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'postal_code': instance.postalCode,
    };

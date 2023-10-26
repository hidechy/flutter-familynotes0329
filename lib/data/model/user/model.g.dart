// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      userId: json['user_id'] as int,
      nickname: json['nickname'] as String?,
      email: json['email'] as String?,
      birthday: json['birthday'] as String?,
      gender: json['gender'] as int?,
      postalCode: json['postal_code'] as String?,
      accessToken: json['access_token'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'nickname': instance.nickname,
      'email': instance.email,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'postal_code': instance.postalCode,
      'access_token': instance.accessToken,
    };

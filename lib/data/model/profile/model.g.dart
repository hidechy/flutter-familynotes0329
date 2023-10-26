// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      nickname: json['nickname'] as String?,
      email: json['email'] as String?,
      birthday: _$JsonConverterFromJson<String, DateTime>(
          json['birthday'], const DateTimeConverter().fromJson),
      gender: json['gender'] as int?,
      postalCode: json['postal_code'] as String?,
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'email': instance.email,
      'birthday': _$JsonConverterToJson<String, DateTime>(
          instance.birthday, const DateTimeConverter().toJson),
      'gender': instance.gender,
      'postal_code': instance.postalCode,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

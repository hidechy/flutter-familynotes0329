// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IHSResponse<T> _$IHSResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    IHSResponse<T>(
      status: $enumDecode(_$ResponseStatusEnumMap, json['status']),
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      code: json['code'] as String?,
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$IHSResponseToJson<T>(
  IHSResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': _$ResponseStatusEnumMap[instance.status]!,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'code': instance.code,
      'msg': instance.msg,
    };

const _$ResponseStatusEnumMap = {
  ResponseStatus.success: 'success',
  ResponseStatus.failure: 'failure',
  ResponseStatus.unknown: 'unknown',
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

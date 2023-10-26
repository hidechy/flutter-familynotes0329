// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConfigModel _$$_ConfigModelFromJson(Map<String, dynamic> json) =>
    _$_ConfigModel(
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => ConfigItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ConfigModelToJson(_$_ConfigModel instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };

_$_ConfigItemModel _$$_ConfigItemModelFromJson(Map<String, dynamic> json) =>
    _$_ConfigItemModel(
      key: json['key'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_ConfigItemModelToJson(_$_ConfigItemModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

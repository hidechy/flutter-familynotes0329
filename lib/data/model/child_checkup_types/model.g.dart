// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildCheckupTypesModel _$$_ChildCheckupTypesModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChildCheckupTypesModel(
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => ChildCheckupType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ChildCheckupTypesModelToJson(
        _$_ChildCheckupTypesModel instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };

_$_ChildCheckupType _$$_ChildCheckupTypeFromJson(Map<String, dynamic> json) =>
    _$_ChildCheckupType(
      childCheckupTypeId: json['child_checkup_type_id'] as int?,
      checkUpName: json['checkup_name'] as String?,
      checkUpShortName: json['checkup_short_name'] as String?,
    );

Map<String, dynamic> _$$_ChildCheckupTypeToJson(_$_ChildCheckupType instance) =>
    <String, dynamic>{
      'child_checkup_type_id': instance.childCheckupTypeId,
      'checkup_name': instance.checkUpName,
      'checkup_short_name': instance.checkUpShortName,
    };

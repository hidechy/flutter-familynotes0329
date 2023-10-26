// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccineSaveRequest _$$_VaccineSaveRequestFromJson(
        Map<String, dynamic> json) =>
    _$_VaccineSaveRequest(
      childId: json['child_id'] as int,
      vaccineTypeId: json['vaccine_type_id'] as int,
      vaccineSubTypeId: json['vaccine_sub_type_id'] as int,
      whatTime: json['what_time'] as int,
      status: json['status'] as String,
      setAt: json['set_at'] as String,
    );

Map<String, dynamic> _$$_VaccineSaveRequestToJson(
        _$_VaccineSaveRequest instance) =>
    <String, dynamic>{
      'child_id': instance.childId,
      'vaccine_type_id': instance.vaccineTypeId,
      'vaccine_sub_type_id': instance.vaccineSubTypeId,
      'what_time': instance.whatTime,
      'status': instance.status,
      'set_at': instance.setAt,
    };

_$_VaccineSaveListRequest _$$_VaccineSaveListRequestFromJson(
        Map<String, dynamic> json) =>
    _$_VaccineSaveListRequest(
      childId: json['child_id'] as int,
      vaccineTypeId: json['vaccine_type_id'] as int,
      status: json['status'] as String,
      saveList: (json['list'] as List<dynamic>)
          .map((e) => VaccineSaveItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VaccineSaveListRequestToJson(
        _$_VaccineSaveListRequest instance) =>
    <String, dynamic>{
      'child_id': instance.childId,
      'vaccine_type_id': instance.vaccineTypeId,
      'status': instance.status,
      'list': instance.saveList.map((e) => e.toJson()).toList(),
    };

_$_VaccineSaveItem _$$_VaccineSaveItemFromJson(Map<String, dynamic> json) =>
    _$_VaccineSaveItem(
      vaccineSubTypeId: json['vaccine_sub_type_id'] as int,
      whatTime: json['what_time'] as int,
      setAt: json['set_at'] as String,
    );

Map<String, dynamic> _$$_VaccineSaveItemToJson(_$_VaccineSaveItem instance) =>
    <String, dynamic>{
      'vaccine_sub_type_id': instance.vaccineSubTypeId,
      'what_time': instance.whatTime,
      'set_at': instance.setAt,
    };

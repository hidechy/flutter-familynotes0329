// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccineListModel _$$_VaccineListModelFromJson(Map<String, dynamic> json) =>
    _$_VaccineListModel(
      list: (json['list'] as List<dynamic>?)
              ?.map(
                  (e) => VaccineDetailModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_VaccineListModelToJson(_$_VaccineListModel instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };

_$_VaccineDetailModel _$$_VaccineDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_VaccineDetailModel(
      vaccineId: json['vaccine_type_id'] as int,
      vaccineName: json['vaccine_type_name'] as String,
      vaccineStyle: json['vaccine_style'] as int,
      applyType: json['apply_type'] as int,
      wayOfApply: json['way_of_apply'] as String,
      neededTimes: json['max_apply_times'] as int,
      applyGender: json['apply_gender'] as int,
      subTypeList: (json['sub_types'] as List<dynamic>)
          .map((e) => VaccineSubTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      reservedList: (json['status_reserved'] as List<dynamic>)
          .map((e) =>
              VaccineInoculationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      appliedList: (json['status_applied'] as List<dynamic>)
          .map((e) =>
              VaccineInoculationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VaccineDetailModelToJson(
        _$_VaccineDetailModel instance) =>
    <String, dynamic>{
      'vaccine_type_id': instance.vaccineId,
      'vaccine_type_name': instance.vaccineName,
      'vaccine_style': instance.vaccineStyle,
      'apply_type': instance.applyType,
      'way_of_apply': instance.wayOfApply,
      'max_apply_times': instance.neededTimes,
      'apply_gender': instance.applyGender,
      'sub_types': instance.subTypeList.map((e) => e.toJson()).toList(),
      'status_reserved': instance.reservedList.map((e) => e.toJson()).toList(),
      'status_applied': instance.appliedList.map((e) => e.toJson()).toList(),
    };

_$_VaccineSubTypeModel _$$_VaccineSubTypeModelFromJson(
        Map<String, dynamic> json) =>
    _$_VaccineSubTypeModel(
      subTypeName: json['vaccine_sub_type_name'] as String,
      subTypeId: json['vaccine_sub_type_id'] as int,
    );

Map<String, dynamic> _$$_VaccineSubTypeModelToJson(
        _$_VaccineSubTypeModel instance) =>
    <String, dynamic>{
      'vaccine_sub_type_name': instance.subTypeName,
      'vaccine_sub_type_id': instance.subTypeId,
    };

_$_VaccineInoculationModel _$$_VaccineInoculationModelFromJson(
        Map<String, dynamic> json) =>
    _$_VaccineInoculationModel(
      vaccineSubTypeId: json['vaccine_sub_type_id'] as int?,
      whatTime: json['what_time'] as int,
      status: json['status'] as String,
      setAt: _$JsonConverterFromJson<String, DateTime>(
          json['set_at'], const DateTimeConverter().fromJson),
      statusId: json['vaccine_status_id'] as int?,
      whatTimeName: json['what_time_string'] as String?,
    );

Map<String, dynamic> _$$_VaccineInoculationModelToJson(
        _$_VaccineInoculationModel instance) =>
    <String, dynamic>{
      'vaccine_sub_type_id': instance.vaccineSubTypeId,
      'what_time': instance.whatTime,
      'status': instance.status,
      'set_at': _$JsonConverterToJson<String, DateTime>(
          instance.setAt, const DateTimeConverter().toJson),
      'vaccine_status_id': instance.statusId,
      'what_time_string': instance.whatTimeName,
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccineDeleteRequest _$$_VaccineDeleteRequestFromJson(
        Map<String, dynamic> json) =>
    _$_VaccineDeleteRequest(
      childId: json['child_id'] as int,
      vaccineTypeId: json['vaccine_type_id'] as int,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_VaccineDeleteRequestToJson(
        _$_VaccineDeleteRequest instance) =>
    <String, dynamic>{
      'child_id': instance.childId,
      'vaccine_type_id': instance.vaccineTypeId,
      'status': instance.status,
    };

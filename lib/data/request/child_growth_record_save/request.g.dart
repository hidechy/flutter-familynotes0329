// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildGrowthRecordSaveRequest _$$_ChildGrowthRecordSaveRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ChildGrowthRecordSaveRequest(
      recordId: json['child_body_record_id'] as int?,
      childId: json['child_id'] as int,
      date: json['measurement_date'] as String,
      height: (json['height'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      head: (json['head_measurement'] as num?)?.toDouble(),
      chest: (json['chest_measurement'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ChildGrowthRecordSaveRequestToJson(
        _$_ChildGrowthRecordSaveRequest instance) =>
    <String, dynamic>{
      'child_body_record_id': instance.recordId,
      'child_id': instance.childId,
      'measurement_date': instance.date,
      'height': instance.height,
      'weight': instance.weight,
      'head_measurement': instance.head,
      'chest_measurement': instance.chest,
    };

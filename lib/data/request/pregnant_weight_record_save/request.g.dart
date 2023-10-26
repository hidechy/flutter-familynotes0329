// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PregnantWeightRecordSaveRequest _$$_PregnantWeightRecordSaveRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PregnantWeightRecordSaveRequest(
      recordId: json['mother_weight_record_id'] as int?,
      childId: json['child_id'] as int,
      date: json['measurement_date'] as String,
      weight: (json['weight'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PregnantWeightRecordSaveRequestToJson(
        _$_PregnantWeightRecordSaveRequest instance) =>
    <String, dynamic>{
      'mother_weight_record_id': instance.recordId,
      'child_id': instance.childId,
      'measurement_date': instance.date,
      'weight': instance.weight,
    };

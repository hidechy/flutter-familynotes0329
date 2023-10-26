// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildCheckupRecordDetailRequest _$$_ChildCheckupRecordDetailRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ChildCheckupRecordDetailRequest(
      recordId: json['child_checkup_record_id'] as int,
      childId: json['child_id'] as int,
    );

Map<String, dynamic> _$$_ChildCheckupRecordDetailRequestToJson(
        _$_ChildCheckupRecordDetailRequest instance) =>
    <String, dynamic>{
      'child_checkup_record_id': instance.recordId,
      'child_id': instance.childId,
    };

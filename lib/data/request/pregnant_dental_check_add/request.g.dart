// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PregnantDentalCheckSaveRequest _$$_PregnantDentalCheckSaveRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PregnantDentalCheckSaveRequest(
      motherDentalCheckupRecordId:
          json['mother_dental_checkup_record_id'] as int? ?? null,
      childId: json['child_id'] as int,
      gestationalWeek: json['gestational_week'] as int? ?? null,
      checkupDay: json['checkup_day'] as String,
      isChildbirth: json['is_childbirth'] as String,
      isNormal: json['is_normal'] as String,
      isTbi: json['is_tbi'] as String,
      isTreatment: json['is_treatment'] as String,
      note: json['note'] as String,
    );

Map<String, dynamic> _$$_PregnantDentalCheckSaveRequestToJson(
        _$_PregnantDentalCheckSaveRequest instance) =>
    <String, dynamic>{
      'mother_dental_checkup_record_id': instance.motherDentalCheckupRecordId,
      'child_id': instance.childId,
      'gestational_week': instance.gestationalWeek,
      'checkup_day': instance.checkupDay,
      'is_childbirth': instance.isChildbirth,
      'is_normal': instance.isNormal,
      'is_tbi': instance.isTbi,
      'is_treatment': instance.isTreatment,
      'note': instance.note,
    };

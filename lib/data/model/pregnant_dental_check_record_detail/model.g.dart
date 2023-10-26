// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PregnantDentalCheckRecordDetailModel
    _$$_PregnantDentalCheckRecordDetailModelFromJson(
            Map<String, dynamic> json) =>
        _$_PregnantDentalCheckRecordDetailModel(
          motherDentalCheckupRecordId:
              json['mother_dental_checkup_record_id'] as int,
          checkupDay: json['checkup_day'] as String,
          gestationalWeek: json['gestational_week'] as int?,
          isChildBirth: json['is_childbirth'] as String,
          isNormal: json['is_normal'] as String,
          isTbi: json['is_tbi'] as String,
          isTreatment: json['is_treatment'] as String,
          note: json['note'] as String?,
        );

Map<String, dynamic> _$$_PregnantDentalCheckRecordDetailModelToJson(
        _$_PregnantDentalCheckRecordDetailModel instance) =>
    <String, dynamic>{
      'mother_dental_checkup_record_id': instance.motherDentalCheckupRecordId,
      'checkup_day': instance.checkupDay,
      'gestational_week': instance.gestationalWeek,
      'is_childbirth': instance.isChildBirth,
      'is_normal': instance.isNormal,
      'is_tbi': instance.isTbi,
      'is_treatment': instance.isTreatment,
      'note': instance.note,
    };

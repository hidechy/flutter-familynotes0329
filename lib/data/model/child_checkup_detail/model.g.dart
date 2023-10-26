// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildCheckupDetailModel _$$_ChildCheckupDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChildCheckupDetailModel(
      childId: json['child_id'] as int,
      childCheckupTypeId: json['child_checkup_type_id'] as int,
      checkupDay:
          const DateTimeConverter().fromJson(json['checkup_day'] as String),
      height: (json['height'] as num?)?.toDouble(),
      weight: json['weight'] as int?,
      headMeasurement: (json['head_measurement'] as num?)?.toDouble(),
      chestMeasurement: (json['chest_measurement'] as num?)?.toDouble(),
      isNormal: json['is_normal'] as String,
      isObservation: json['is_observation'] as String,
      isDetailedExamination: json['is_detailed_examination'] as String,
      isTreatment: json['is_treatment'] as String,
      teethNum: json['teeth_num'] as int?,
      isBadTooth: json['is_bad_tooth'] as String,
      badToothNum: json['bad_tooth_num'] as int?,
      babyBadToothNum: json['baby_bad_tooth_num'] as int?,
      adultBadToothNum: json['adult_bad_tooth_num'] as int?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$_ChildCheckupDetailModelToJson(
        _$_ChildCheckupDetailModel instance) =>
    <String, dynamic>{
      'child_id': instance.childId,
      'child_checkup_type_id': instance.childCheckupTypeId,
      'checkup_day': const DateTimeConverter().toJson(instance.checkupDay),
      'height': instance.height,
      'weight': instance.weight,
      'head_measurement': instance.headMeasurement,
      'chest_measurement': instance.chestMeasurement,
      'is_normal': instance.isNormal,
      'is_observation': instance.isObservation,
      'is_detailed_examination': instance.isDetailedExamination,
      'is_treatment': instance.isTreatment,
      'teeth_num': instance.teethNum,
      'is_bad_tooth': instance.isBadTooth,
      'bad_tooth_num': instance.badToothNum,
      'baby_bad_tooth_num': instance.babyBadToothNum,
      'adult_bad_tooth_num': instance.adultBadToothNum,
      'note': instance.note,
    };

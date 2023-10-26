// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildModel _$$_ChildModelFromJson(Map<String, dynamic> json) =>
    _$_ChildModel(
      babyId: json['baby_id'] as int?,
      childNickname: json['child_nickname'] as String?,
      gender: json['gender'] as int?,
      birthday: json['birthday'] as String?,
      monthFromBirth: json['month_from_birth'] as int?,
      height: (json['height'] as num?)?.toDouble(),
      weight: json['weight'] as int?,
      headMeasurement: (json['head_measurement'] as num?)?.toDouble(),
      chestMeasurement: (json['chest_measurement'] as num?)?.toDouble(),
      birthPlace: json['birth_place'] as String?,
      birthDoctor: json['birth_doctor'] as String?,
      motherFatherFeeling: json['mother_father_feeling'] as String?,
      message: json['message'] as String?,
      comment: json['comment'] as String?,
      babyNickname: json['baby_nickname'] as String?,
      birthScheduleDate: json['birth_schedule_date'] as String?,
      gestationalWeek: json['gestational_week'] as int?,
      gestationalWeekDay: json['gestational_week_day'] as int?,
    );

Map<String, dynamic> _$$_ChildModelToJson(_$_ChildModel instance) =>
    <String, dynamic>{
      'baby_id': instance.babyId,
      'child_nickname': instance.childNickname,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'month_from_birth': instance.monthFromBirth,
      'height': instance.height,
      'weight': instance.weight,
      'head_measurement': instance.headMeasurement,
      'chest_measurement': instance.chestMeasurement,
      'birth_place': instance.birthPlace,
      'birth_doctor': instance.birthDoctor,
      'mother_father_feeling': instance.motherFatherFeeling,
      'message': instance.message,
      'comment': instance.comment,
      'baby_nickname': instance.babyNickname,
      'birth_schedule_date': instance.birthScheduleDate,
      'gestational_week': instance.gestationalWeek,
      'gestational_week_day': instance.gestationalWeekDay,
    };

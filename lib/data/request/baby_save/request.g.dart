// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BabyBabySaveRequest _$$_BabyBabySaveRequestFromJson(
        Map<String, dynamic> json) =>
    _$_BabyBabySaveRequest(
      childId: json['child_id'] as int?,
      nickname: json['baby_nickname'] as String,
      birthScheduleDate: json['birth_schedule_date'] as String,
    );

Map<String, dynamic> _$$_BabyBabySaveRequestToJson(
        _$_BabyBabySaveRequest instance) =>
    <String, dynamic>{
      'child_id': instance.childId,
      'baby_nickname': instance.nickname,
      'birth_schedule_date': instance.birthScheduleDate,
    };

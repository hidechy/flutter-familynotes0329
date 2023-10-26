// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BabyChildListItemModel _$$BabyChildListItemModelFromJson(
        Map<String, dynamic> json) =>
    _$BabyChildListItemModel(
      type: json['type'] as String,
      childId: json['child_id'] as int,
      babyNickname: json['baby_nickname'] as String?,
      birthScheduleDate: json['birth_schedule_date'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BabyChildListItemModelToJson(
        _$BabyChildListItemModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'child_id': instance.childId,
      'baby_nickname': instance.babyNickname,
      'birth_schedule_date': instance.birthScheduleDate,
      'runtimeType': instance.$type,
    };

_$ChildChildListItemModel _$$ChildChildListItemModelFromJson(
        Map<String, dynamic> json) =>
    _$ChildChildListItemModel(
      type: json['type'] as String,
      childId: json['child_id'] as int,
      childNickname: json['child_nickname'] as String?,
      gender: json['gender'] as int?,
      birthday: json['birthday'] as String?,
      monthFromBirth: json['month_from_birth'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ChildChildListItemModelToJson(
        _$ChildChildListItemModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'child_id': instance.childId,
      'child_nickname': instance.childNickname,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'month_from_birth': instance.monthFromBirth,
      'runtimeType': instance.$type,
    };

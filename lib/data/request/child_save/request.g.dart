// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildChildSaveRequest _$$_ChildChildSaveRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ChildChildSaveRequest(
      childId: json['child_id'] as int?,
      nickname: json['child_nickname'] as String,
      gender: json['gender'] as int,
      birthday: json['birthday'] as String,
    );

Map<String, dynamic> _$$_ChildChildSaveRequestToJson(
        _$_ChildChildSaveRequest instance) =>
    <String, dynamic>{
      'child_id': instance.childId,
      'child_nickname': instance.nickname,
      'gender': instance.gender,
      'birthday': instance.birthday,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildBirthRequest _$$_ChildBirthRequestFromJson(Map<String, dynamic> json) =>
    _$_ChildBirthRequest(
      childId: json['child_id'] as int?,
      childBirthData: (json['child_birthData'] as List<dynamic>?)
              ?.map(
                  (e) => ChildBirthDataItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      gestationalWeek: json['gestational_week'] as String?,
      gestationalDay: json['gestational_week_day'] as String?,
      birthPlace: json['birth_place'] as String?,
      birthDoctor: json['birth_doctor'] as String?,
      motherFatherFeeling: json['mother_father_feeling'] as String?,
      message: json['message'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$_ChildBirthRequestToJson(
        _$_ChildBirthRequest instance) =>
    <String, dynamic>{
      'child_id': instance.childId,
      'child_birthData':
          instance.childBirthData.map((e) => e.toJson()).toList(),
      'gestational_week': instance.gestationalWeek,
      'gestational_week_day': instance.gestationalDay,
      'birth_place': instance.birthPlace,
      'birth_doctor': instance.birthDoctor,
      'mother_father_feeling': instance.motherFatherFeeling,
      'message': instance.message,
      'comment': instance.comment,
    };

_$_ChildBirthDataItem _$$_ChildBirthDataItemFromJson(
        Map<String, dynamic> json) =>
    _$_ChildBirthDataItem(
      birthday: json['birthday'] as String,
      nickname: json['nickname'] as String?,
      gender: json['gender'] as int?,
      height: (json['height'] as num?)?.toDouble(),
      weight: json['weight'] as int?,
      head: (json['head_measurement'] as num?)?.toDouble(),
      chest: (json['chest_measurement'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ChildBirthDataItemToJson(
        _$_ChildBirthDataItem instance) =>
    <String, dynamic>{
      'birthday': instance.birthday,
      'nickname': instance.nickname,
      'gender': instance.gender,
      'height': instance.height,
      'weight': instance.weight,
      'head_measurement': instance.head,
      'chest_measurement': instance.chest,
    };

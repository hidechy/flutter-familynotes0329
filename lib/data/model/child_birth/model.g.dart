// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildBirthListModel _$$_ChildBirthListModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChildBirthListModel(
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => ChildBirthModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ChildBirthListModelToJson(
        _$_ChildBirthListModel instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };

_$_ChildBirthModel _$$_ChildBirthModelFromJson(Map<String, dynamic> json) =>
    _$_ChildBirthModel(
      id: json['child_id'] as int,
      nickname: json['nickname'] as String? ?? '',
    );

Map<String, dynamic> _$$_ChildBirthModelToJson(_$_ChildBirthModel instance) =>
    <String, dynamic>{
      'child_id': instance.id,
      'nickname': instance.nickname,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildCheckupListModel _$$_ChildCheckupListModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChildCheckupListModel(
      list: (json['list'] as List<dynamic>)
          .map((e) => CheckupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChildCheckupListModelToJson(
        _$_ChildCheckupListModel instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$_ChildCheckupModel _$$_ChildCheckupModelFromJson(Map<String, dynamic> json) =>
    _$_ChildCheckupModel(
      checkupId: json['mother_checkup_record_id'] as int?,
      childId: json['child_id'] as int,
      checkupDay: json['checkup_day'] as String,
    );

Map<String, dynamic> _$$_ChildCheckupModelToJson(
        _$_ChildCheckupModel instance) =>
    <String, dynamic>{
      'mother_checkup_record_id': instance.checkupId,
      'child_id': instance.childId,
      'checkup_day': instance.checkupDay,
    };

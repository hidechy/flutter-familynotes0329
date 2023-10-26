// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildCheckupListModel _$$_ChildCheckupListModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChildCheckupListModel(
      list: (json['list'] as List<dynamic>?)
              ?.map(
                  (e) => ChildCheckupModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ChildCheckupListModelToJson(
        _$_ChildCheckupListModel instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$_ChildCheckupModel _$$_ChildCheckupModelFromJson(Map<String, dynamic> json) =>
    _$_ChildCheckupModel(
      childCheckupId: json['child_checkup_record_id'] as int,
      childId: json['child_id'] as int,
      childCheckUpType: json['child_checkup_type_id'] as int,
      checkupDay:
          const DateTimeConverter().fromJson(json['checkup_day'] as String),
      checkUpShortName: json['checkup_short_name'] as String,
    );

Map<String, dynamic> _$$_ChildCheckupModelToJson(
        _$_ChildCheckupModel instance) =>
    <String, dynamic>{
      'child_checkup_record_id': instance.childCheckupId,
      'child_id': instance.childId,
      'child_checkup_type_id': instance.childCheckUpType,
      'checkup_day': const DateTimeConverter().toJson(instance.checkupDay),
      'checkup_short_name': instance.checkUpShortName,
    };

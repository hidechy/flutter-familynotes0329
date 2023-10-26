// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildChildGrowthRecordListModel _$$_ChildChildGrowthRecordListModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChildChildGrowthRecordListModel(
      list: (json['list'] as List<dynamic>)
          .map((e) => ChildGrowthRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChildChildGrowthRecordListModelToJson(
        _$_ChildChildGrowthRecordListModel instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$_ChildChildGrowthRecord _$$_ChildChildGrowthRecordFromJson(
        Map<String, dynamic> json) =>
    _$_ChildChildGrowthRecord(
      recordId: json['child_body_record_id'] as int,
      date: const DateTimeConverter()
          .fromJson(json['measurement_date'] as String),
      height: (json['height'] as num?)?.toDouble(),
      weight: json['weight'] as int?,
      head: (json['head_measurement'] as num?)?.toDouble(),
      chest: (json['chest_measurement'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ChildChildGrowthRecordToJson(
        _$_ChildChildGrowthRecord instance) =>
    <String, dynamic>{
      'child_body_record_id': instance.recordId,
      'measurement_date': const DateTimeConverter().toJson(instance.date),
      'height': instance.height,
      'weight': instance.weight,
      'head_measurement': instance.head,
      'chest_measurement': instance.chest,
    };

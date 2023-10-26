// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildPregnantWeightRecordListModel
    _$$_ChildPregnantWeightRecordListModelFromJson(Map<String, dynamic> json) =>
        _$_ChildPregnantWeightRecordListModel(
          list: (json['list'] as List<dynamic>)
              .map((e) =>
                  PregnantWeightRecord.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_ChildPregnantWeightRecordListModelToJson(
        _$_ChildPregnantWeightRecordListModel instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$_ChildPregnantWeightRecord _$$_ChildPregnantWeightRecordFromJson(
        Map<String, dynamic> json) =>
    _$_ChildPregnantWeightRecord(
      recordId: json['mother_weight_record_id'] as int,
      date: const DateTimeConverter()
          .fromJson(json['measurement_date'] as String),
      weight: json['weight'] as int,
    );

Map<String, dynamic> _$$_ChildPregnantWeightRecordToJson(
        _$_ChildPregnantWeightRecord instance) =>
    <String, dynamic>{
      'mother_weight_record_id': instance.recordId,
      'measurement_date': const DateTimeConverter().toJson(instance.date),
      'weight': instance.weight,
    };

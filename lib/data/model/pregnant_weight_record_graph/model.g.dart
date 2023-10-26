// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PregnantWeightRecordGraphModel _$$_PregnantWeightRecordGraphModelFromJson(
        Map<String, dynamic> json) =>
    _$_PregnantWeightRecordGraphModel(
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => WeightGraphData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PregnantWeightRecordGraphModelToJson(
        _$_PregnantWeightRecordGraphModel instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$_WeightGraphData _$$_WeightGraphDataFromJson(Map<String, dynamic> json) =>
    _$_WeightGraphData(
      measurementDate: const DateTimeConverter()
          .fromJson(json['measurement_date'] as String),
      weight: (json['weight'] as num).toDouble(),
    );

Map<String, dynamic> _$$_WeightGraphDataToJson(_$_WeightGraphData instance) =>
    <String, dynamic>{
      'measurement_date':
          const DateTimeConverter().toJson(instance.measurementDate),
      'weight': instance.weight,
    };

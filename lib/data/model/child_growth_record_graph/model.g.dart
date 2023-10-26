// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildGrowthRecordGraphModel _$$_ChildGrowthRecordGraphModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChildGrowthRecordGraphModel(
      growthGraphData: (json['growthGraphData'] as List<dynamic>?)
              ?.map((e) => GrowthGraphData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bandGraphData: (json['bandGraphData'] as List<dynamic>?)
              ?.map((e) => BandGraphData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ChildGrowthRecordGraphModelToJson(
        _$_ChildGrowthRecordGraphModel instance) =>
    <String, dynamic>{
      'growthGraphData': instance.growthGraphData,
      'bandGraphData': instance.bandGraphData,
    };

_$_GrowthGraphData _$$_GrowthGraphDataFromJson(Map<String, dynamic> json) =>
    _$_GrowthGraphData(
      measurementDate: const DateTimeConverter()
          .fromJson(json['measurement_date'] as String),
      height: (json['height'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      head: (json['head_measurement'] as num?)?.toDouble(),
      chest: (json['chest_measurement'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_GrowthGraphDataToJson(_$_GrowthGraphData instance) =>
    <String, dynamic>{
      'measurement_date':
          const DateTimeConverter().toJson(instance.measurementDate),
      'height': instance.height,
      'weight': instance.weight,
      'head_measurement': instance.head,
      'chest_measurement': instance.chest,
    };

_$_BandGraphData _$$_BandGraphDataFromJson(Map<String, dynamic> json) =>
    _$_BandGraphData(
      minHeight: (json['min_height'] as num).toDouble(),
      maxHeight: (json['max_height'] as num).toDouble(),
      minWeight: (json['min_weight'] as num).toDouble(),
      maxWeight: (json['max_weight'] as num).toDouble(),
      minHead: (json['min_head_measurement'] as num).toDouble(),
      mixHead: (json['max_head_measurement'] as num).toDouble(),
      minChest: (json['min_chest_measurement'] as num).toDouble(),
      maxChest: (json['max_chest_measurement'] as num).toDouble(),
      date: const DateTimeConverter().fromJson(json['month_of_age'] as String),
    );

Map<String, dynamic> _$$_BandGraphDataToJson(_$_BandGraphData instance) =>
    <String, dynamic>{
      'min_height': instance.minHeight,
      'max_height': instance.maxHeight,
      'min_weight': instance.minWeight,
      'max_weight': instance.maxWeight,
      'min_head_measurement': instance.minHead,
      'max_head_measurement': instance.mixHead,
      'min_chest_measurement': instance.minChest,
      'max_chest_measurement': instance.maxChest,
      'month_of_age': const DateTimeConverter().toJson(instance.date),
    };

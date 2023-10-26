// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoticeListModel _$$_NoticeListModelFromJson(Map<String, dynamic> json) =>
    _$_NoticeListModel(
      list: (json['list'] as List<dynamic>?)
              ?.map((e) =>
                  NoticeListItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_NoticeListModelToJson(_$_NoticeListModel instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$_NoticeListItemModel _$$_NoticeListItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_NoticeListItemModel(
      noticeReadId: json['notice_read_id'] as int,
      title: json['title'] as String? ?? '',
      deliveryAt:
          const DateTimeConverter().fromJson(json['delivery_at'] as String),
      readAt: _$JsonConverterFromJson<String, DateTime>(
          json['read_at'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$_NoticeListItemModelToJson(
        _$_NoticeListItemModel instance) =>
    <String, dynamic>{
      'notice_read_id': instance.noticeReadId,
      'title': instance.title,
      'delivery_at': const DateTimeConverter().toJson(instance.deliveryAt),
      'read_at': _$JsonConverterToJson<String, DateTime>(
          instance.readAt, const DateTimeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

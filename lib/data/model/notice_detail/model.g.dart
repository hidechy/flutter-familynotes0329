// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoticeDetailModel _$$_NoticeDetailModelFromJson(Map<String, dynamic> json) =>
    _$_NoticeDetailModel(
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      deliveryAt:
          const DateTimeConverter().fromJson(json['delivery_at'] as String),
    );

Map<String, dynamic> _$$_NoticeDetailModelToJson(
        _$_NoticeDetailModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'delivery_at': const DateTimeConverter().toJson(instance.deliveryAt),
    };

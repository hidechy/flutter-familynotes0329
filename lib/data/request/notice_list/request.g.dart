// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoticeListRequest _$$_NoticeListRequestFromJson(Map<String, dynamic> json) =>
    _$_NoticeListRequest(
      categoryId: json['notice_category_id'] as int?,
      page: json['page'] as int,
    );

Map<String, dynamic> _$$_NoticeListRequestToJson(
        _$_NoticeListRequest instance) =>
    <String, dynamic>{
      'notice_category_id': instance.categoryId,
      'page': instance.page,
    };

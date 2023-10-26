// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryListModel _$$_CategoryListModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryListModel(
      list: (json['list'] as List<dynamic>?)
              ?.map(
                  (e) => CategoryItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CategoryListModelToJson(
        _$_CategoryListModel instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$_CategoryItemModel _$$_CategoryItemModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryItemModel(
      categoryId: json['notice_category_id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CategoryItemModelToJson(
        _$_CategoryItemModel instance) =>
    <String, dynamic>{
      'notice_category_id': instance.categoryId,
      'name': instance.name,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckSheetSupportModel _$$_CheckSheetSupportModelFromJson(
        Map<String, dynamic> json) =>
    _$_CheckSheetSupportModel(
      largeCategoryList: (json['list'] as List<dynamic>)
          .map((e) => CheckSheetSupportLargeCategoryModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CheckSheetSupportModelToJson(
        _$_CheckSheetSupportModel instance) =>
    <String, dynamic>{
      'list': instance.largeCategoryList,
    };

_$_CheckSheetSupportLargeCategoryModel
    _$$_CheckSheetSupportLargeCategoryModelFromJson(
            Map<String, dynamic> json) =>
        _$_CheckSheetSupportLargeCategoryModel(
          id: json['large_category_id'] as int,
          name: json['large_category'] as String,
          smallCategoryList: (json['small_categories'] as List<dynamic>)
              .map((e) => CheckSheetSupportSmallCategoryModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_CheckSheetSupportLargeCategoryModelToJson(
        _$_CheckSheetSupportLargeCategoryModel instance) =>
    <String, dynamic>{
      'large_category_id': instance.id,
      'large_category': instance.name,
      'small_categories': instance.smallCategoryList,
    };

_$_CheckSheetSupportSmallCategoryModel
    _$$_CheckSheetSupportSmallCategoryModelFromJson(
            Map<String, dynamic> json) =>
        _$_CheckSheetSupportSmallCategoryModel(
          id: json['small_category_id'] as int,
          name: json['small_category'] as String,
          detailList: (json['details'] as List<dynamic>)
              .map((e) =>
                  SupportQuestionModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_CheckSheetSupportSmallCategoryModelToJson(
        _$_CheckSheetSupportSmallCategoryModel instance) =>
    <String, dynamic>{
      'small_category_id': instance.id,
      'small_category': instance.name,
      'details': instance.detailList,
    };

_$_SupportQuestionModel _$$_SupportQuestionModelFromJson(
        Map<String, dynamic> json) =>
    _$_SupportQuestionModel(
      id: json['support_check_sheet_id'] as int?,
      questionId: json['support_check_sheet_question_id'] as int,
      question: json['question'] as String,
      example: json['example'] as String,
      isCheck: json['is_check'] as String,
      note: json['note'] as String? ?? '',
    );

Map<String, dynamic> _$$_SupportQuestionModelToJson(
        _$_SupportQuestionModel instance) =>
    <String, dynamic>{
      'support_check_sheet_id': instance.id,
      'support_check_sheet_question_id': instance.questionId,
      'question': instance.question,
      'example': instance.example,
      'is_check': instance.isCheck,
      'note': instance.note,
    };

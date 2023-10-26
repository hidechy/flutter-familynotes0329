// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckSheetGrowthModel _$$_CheckSheetGrowthModelFromJson(
        Map<String, dynamic> json) =>
    _$_CheckSheetGrowthModel(
      list: (json['list'] as List<dynamic>)
          .map((e) =>
              GrowthDetailCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CheckSheetGrowthModelToJson(
        _$_CheckSheetGrowthModel instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$_GrowthDetailCategoryModel _$$_GrowthDetailCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_GrowthDetailCategoryModel(
      id: json['category_id'] as int,
      category: json['category'] as String,
      details: (json['details'] as List<dynamic>)
          .map((e) => GrowthQuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GrowthDetailCategoryModelToJson(
        _$_GrowthDetailCategoryModel instance) =>
    <String, dynamic>{
      'category_id': instance.id,
      'category': instance.category,
      'details': instance.details,
    };

_$_GrowthQuestionModel _$$_GrowthQuestionModelFromJson(
        Map<String, dynamic> json) =>
    _$_GrowthQuestionModel(
      id: json['growth_check_sheet_id'] as int?,
      questionId: json['growth_check_sheet_question_id'] as int,
      question: json['question'] as String,
      isCheck: json['is_check'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$_GrowthQuestionModelToJson(
        _$_GrowthQuestionModel instance) =>
    <String, dynamic>{
      'growth_check_sheet_id': instance.id,
      'growth_check_sheet_question_id': instance.questionId,
      'question': instance.question,
      'is_check': instance.isCheck,
      'note': instance.note,
    };

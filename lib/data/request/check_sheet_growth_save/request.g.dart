// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckSheetGrowthSaveRequest _$$_CheckSheetGrowthSaveRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CheckSheetGrowthSaveRequest(
      childId: json['child_id'] as int,
      answerList: (json['answers'] as List<dynamic>)
          .map((e) =>
              GrowthQustionAnswerRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CheckSheetGrowthSaveRequestToJson(
        _$_CheckSheetGrowthSaveRequest instance) =>
    <String, dynamic>{
      'child_id': instance.childId,
      'answers': instance.answerList.map((e) => e.toJson()).toList(),
    };

_$_GrowthQustionAnswerRequest _$$_GrowthQustionAnswerRequestFromJson(
        Map<String, dynamic> json) =>
    _$_GrowthQustionAnswerRequest(
      growthCheckSheetId: json['growth_check_sheet_id'] as int?,
      growthCheckSheetQuestionId: json['growth_check_sheet_question_id'] as int,
      isCheck: json['is_check'] as int,
      note: json['note'] as String,
    );

Map<String, dynamic> _$$_GrowthQustionAnswerRequestToJson(
        _$_GrowthQustionAnswerRequest instance) =>
    <String, dynamic>{
      'growth_check_sheet_id': instance.growthCheckSheetId,
      'growth_check_sheet_question_id': instance.growthCheckSheetQuestionId,
      'is_check': instance.isCheck,
      'note': instance.note,
    };

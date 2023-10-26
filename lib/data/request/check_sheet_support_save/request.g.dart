// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckSheetSupportSaveRequest _$$_CheckSheetSupportSaveRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CheckSheetSupportSaveRequest(
      childId: json['child_id'] as int,
      answerList: (json['answers'] as List<dynamic>)
          .map((e) =>
              SupportQustionAnswerRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CheckSheetSupportSaveRequestToJson(
        _$_CheckSheetSupportSaveRequest instance) =>
    <String, dynamic>{
      'child_id': instance.childId,
      'answers': instance.answerList.map((e) => e.toJson()).toList(),
    };

_$_SupportQustionAnswerRequest _$$_SupportQustionAnswerRequestFromJson(
        Map<String, dynamic> json) =>
    _$_SupportQustionAnswerRequest(
      supportCheckSheetId: json['support_check_sheet_id'] as int?,
      supportCheckSheetQuestionId:
          json['support_check_sheet_question_id'] as int,
      isCheck: json['is_check'] as int,
      note: json['note'] as String,
    );

Map<String, dynamic> _$$_SupportQustionAnswerRequestToJson(
        _$_SupportQustionAnswerRequest instance) =>
    <String, dynamic>{
      'support_check_sheet_id': instance.supportCheckSheetId,
      'support_check_sheet_question_id': instance.supportCheckSheetQuestionId,
      'is_check': instance.isCheck,
      'note': instance.note,
    };

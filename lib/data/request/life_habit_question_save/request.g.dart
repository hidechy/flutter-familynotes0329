// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LifeHabitQuestionSaveRequest _$$_LifeHabitQuestionSaveRequestFromJson(
        Map<String, dynamic> json) =>
    _$_LifeHabitQuestionSaveRequest(
      childId: json['child_id'] as int,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => AnswerRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LifeHabitQuestionSaveRequestToJson(
        _$_LifeHabitQuestionSaveRequest instance) =>
    <String, dynamic>{
      'child_id': instance.childId,
      'answers': instance.answers.map((e) => e.toJson()).toList(),
    };

_$_AnswerRequest _$$_AnswerRequestFromJson(Map<String, dynamic> json) =>
    _$_AnswerRequest(
      questionId: json['question_id'] as int,
      choiceId: json['choice_id'] as int,
    );

Map<String, dynamic> _$$_AnswerRequestToJson(_$_AnswerRequest instance) =>
    <String, dynamic>{
      'question_id': instance.questionId,
      'choice_id': instance.choiceId,
    };

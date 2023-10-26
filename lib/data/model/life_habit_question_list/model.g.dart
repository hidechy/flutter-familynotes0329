// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LifeHabitQuestionModel _$$_LifeHabitQuestionModelFromJson(
        Map<String, dynamic> json) =>
    _$_LifeHabitQuestionModel(
      id: json['question_id'] as int,
      title: json['title'] as String,
      hint: json['hint'] as String? ?? '',
      content: json['question'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChoiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LifeHabitQuestionModelToJson(
        _$_LifeHabitQuestionModel instance) =>
    <String, dynamic>{
      'question_id': instance.id,
      'title': instance.title,
      'hint': instance.hint,
      'question': instance.content,
      'choices': instance.choices,
    };

_$_ChoiceModel _$$_ChoiceModelFromJson(Map<String, dynamic> json) =>
    _$_ChoiceModel(
      id: json['choice_id'] as int,
      content: json['choice'] as String,
    );

Map<String, dynamic> _$$_ChoiceModelToJson(_$_ChoiceModel instance) =>
    <String, dynamic>{
      'choice_id': instance.id,
      'choice': instance.content,
    };

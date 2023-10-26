// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LifeHabitQuestionAnswerResultListModel
    _$$_LifeHabitQuestionAnswerResultListModelFromJson(
            Map<String, dynamic> json) =>
        _$_LifeHabitQuestionAnswerResultListModel(
          list: (json['results'] as List<dynamic>)
              .map((e) =>
                  QuestionAnswerResultModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          otherComments: OtherCommentsModel.fromJson(
              json['other_comments'] as Map<String, dynamic>),
          generalComments: GeneralCommentsModel.fromJson(
              json['general_comments'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_LifeHabitQuestionAnswerResultListModelToJson(
        _$_LifeHabitQuestionAnswerResultListModel instance) =>
    <String, dynamic>{
      'results': instance.list,
      'other_comments': instance.otherComments,
      'general_comments': instance.generalComments,
    };

_$_QuestionAnswerResultModel _$$_QuestionAnswerResultModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionAnswerResultModel(
      id: json['question_id'] as int,
      title: json['title'] as String,
      hint: json['hint'] as String? ?? '',
      content: json['question'] as String,
      answer: json['answer'] as int,
      point: json['point'] as int,
      comment: json['comment'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChoiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionAnswerResultModelToJson(
        _$_QuestionAnswerResultModel instance) =>
    <String, dynamic>{
      'question_id': instance.id,
      'title': instance.title,
      'hint': instance.hint,
      'question': instance.content,
      'answer': instance.answer,
      'point': instance.point,
      'comment': instance.comment,
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

_$_GeneralCommentsModel _$$_GeneralCommentsModelFromJson(
        Map<String, dynamic> json) =>
    _$_GeneralCommentsModel(
      perfectComment: json['perfect_comment'] as String,
      categoryList: (json['categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GeneralCommentsModelToJson(
        _$_GeneralCommentsModel instance) =>
    <String, dynamic>{
      'perfect_comment': instance.perfectComment,
      'categories': instance.categoryList,
    };

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      id: json['category_id'] as int,
      name: json['category_name'] as String,
      commentList: (json['comments'] as List<dynamic>)
          .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'category_id': instance.id,
      'category_name': instance.name,
      'comments': instance.commentList,
    };

_$_CommentModel _$$_CommentModelFromJson(Map<String, dynamic> json) =>
    _$_CommentModel(
      content: json['comment'] as String,
    );

Map<String, dynamic> _$$_CommentModelToJson(_$_CommentModel instance) =>
    <String, dynamic>{
      'comment': instance.content,
    };

_$_OtherCommentsModel _$$_OtherCommentsModelFromJson(
        Map<String, dynamic> json) =>
    _$_OtherCommentsModel(
      categoryList: (json['categories'] as List<dynamic>)
          .map((e) => OtherCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OtherCommentsModelToJson(
        _$_OtherCommentsModel instance) =>
    <String, dynamic>{
      'categories': instance.categoryList,
    };

_$_OtherCategoryModel _$$_OtherCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_OtherCategoryModel(
      name: json['category_name'] as String,
      commentList: (json['comments'] as List<dynamic>)
          .map((e) => OtherCommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OtherCategoryModelToJson(
        _$_OtherCategoryModel instance) =>
    <String, dynamic>{
      'category_name': instance.name,
      'comments': instance.commentList,
    };

_$_OtherCommentModel _$$_OtherCommentModelFromJson(Map<String, dynamic> json) =>
    _$_OtherCommentModel(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['comment'] as String,
    );

Map<String, dynamic> _$$_OtherCommentModelToJson(
        _$_OtherCommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'comment': instance.content,
    };

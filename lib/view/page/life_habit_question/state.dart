import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/life_habit_question_list/model.dart';
import 'question_type.dart';

part 'state.freezed.dart';

@freezed
class LifeHabitQuestionState with _$LifeHabitQuestionState {
  const factory LifeHabitQuestionState.loading() =
      LifeHabitQuestionStateLoading;

  const factory LifeHabitQuestionState.loaded({
    @Default(<QuestionState>[]) List<QuestionState> list,

    /// 入力内容
    @Default(LifeHabitQuestionInputData())
        LifeHabitQuestionInputData inputData,
  }) = LifeHabitQuestionStateLoaded;
}

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState({
    required String title,
    required String content,
    required int id,
    required String hint,
    required String assetName,
    required List<ChoiceState> choices,
  }) = _QuestionState;

  factory QuestionState.fromModel(LifeHabitQuestionModel model) {
    final assetName = QuestionType.values
        .firstWhere((element) => element.id == model.id)
        .assetName;

    return QuestionState(
      title: model.title,
      content: model.content,
      id: model.id,
      hint: model.hint,
      assetName: assetName,
      choices: model.choices.map(ChoiceState.fromModel).toList(),
    );
  }
}

@freezed
class ChoiceState with _$ChoiceState {
  const factory ChoiceState({
    required int id,
    required String content,
  }) = _ChoiceState;

  factory ChoiceState.fromModel(ChoiceModel model) {
    final content = model.content == '不明' ? '' : model.content;

    return ChoiceState(
      id: model.id,
      content: content,
    );
  }
}

@freezed
class LifeHabitQuestionInputData with _$LifeHabitQuestionInputData {
  const factory LifeHabitQuestionInputData({
    /// 現在の設問index
    @Default(0) int currentQuestionIndex,

    /// 現在の設問で選択中の選択肢id
    /// 未回答状態の場合はnull
    int? currentChoiceId,
    
    /// 前の設問id
    @Default(0) int previousQuestionId,

    /// 回答内容一覧
    @Default(<AnswerState>[]) List<AnswerState> answers,
  }) = _LifeHabitQuestionInputData;
}

/// 回答内容
@freezed
class AnswerState with _$AnswerState {
  const factory AnswerState({
    /// 設問id
    required int questionId,

    /// 選択肢id
    required int choiceId,
  }) = _AnsewerState;
}

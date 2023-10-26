import 'package:family_notes/data/model/life_habit_question_answer_history_list/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../extension/string.dart';

part 'state.freezed.dart';

@freezed
class LifeHabitCheckWorkSheetState with _$LifeHabitCheckWorkSheetState {
  const factory LifeHabitCheckWorkSheetState.loading() =
      LifeHabitCheckWorkSheetStateLoading;

  const factory LifeHabitCheckWorkSheetState.loaded({
    required List<QuestionAnswerHistoryState> list,
  }) = LifeHabitCheckWorkSheetStateLoaded;
}

@freezed
class QuestionAnswerHistoryState with _$QuestionAnswerHistoryState {
  const factory QuestionAnswerHistoryState({
    /// 識別子
    required int answerHeaderId,

    /// 日付
    required DateTime answerDate,
  }) = _QuestionAnswerHistoryState;

  factory QuestionAnswerHistoryState.fromModel(
    QuestionAnswerHistoryModel model,
  ) {
    final date = model.answerDate.toDateTime(DateFormatType.yyyymmddLine);

    return QuestionAnswerHistoryState(
      answerHeaderId: model.answerHeaderId,
      answerDate: date,
    );
  }
}

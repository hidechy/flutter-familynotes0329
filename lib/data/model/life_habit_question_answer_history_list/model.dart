import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 生活習慣設問回答履歴取得から返却されるデータモデル
@freezed
class LifeHabitQuestionAnswerHistoryListModel
    with _$LifeHabitQuestionAnswerHistoryListModel {
  const factory LifeHabitQuestionAnswerHistoryListModel({
    required List<QuestionAnswerHistoryModel> list,
  }) = _LifeHabitQuestionAnswerHistoryListModel;

  factory LifeHabitQuestionAnswerHistoryListModel.fromJson(
    Map<String, dynamic> json,
  ) {
    final results = json['list'] as List<dynamic>;
    final list = results.map((e) {
      final result = e as Map<String, dynamic>;
      return QuestionAnswerHistoryModel.fromJson(result);
    }).toList();

    return LifeHabitQuestionAnswerHistoryListModel(list: list);
  }
}

@freezed
class QuestionAnswerHistoryModel with _$QuestionAnswerHistoryModel {
  const factory QuestionAnswerHistoryModel({
    @JsonKey(name: 'id') required int answerHeaderId,
    @JsonKey(name: 'answer_date') required String answerDate,
  }) = _QuestionAnswerHistoryModel;

  factory QuestionAnswerHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionAnswerHistoryModelFromJson(json);
}

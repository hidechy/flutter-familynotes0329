import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// 生活習慣回答内容保存のリクエスト
@freezed
class LifeHabitQuestionSaveRequest with _$LifeHabitQuestionSaveRequest {
  @JsonSerializable(explicitToJson: true)
  const factory LifeHabitQuestionSaveRequest({
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'answers') required List<AnswerRequest> answers,
  }) = _LifeHabitQuestionSaveRequest;

  factory LifeHabitQuestionSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$LifeHabitQuestionSaveRequestFromJson(json);
}

@freezed
class AnswerRequest with _$AnswerRequest {
  const factory AnswerRequest({
    @JsonKey(name: 'question_id') required int questionId,
    @JsonKey(name: 'choice_id') required int choiceId,
  }) = _AnswerRequest;

  factory AnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$AnswerRequestFromJson(json);
}

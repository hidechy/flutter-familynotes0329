import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 生活習慣設問回答保存から返却されるデータモデル
@freezed
class LifeHabitQuestionAnswerSaveModel with _$LifeHabitQuestionAnswerSaveModel {
  const factory LifeHabitQuestionAnswerSaveModel({
    @JsonKey(name: 'lifehabit_answer_header_id') required int answerHeaderId,
  }) = _LifeHabitQuestionAnswerSaveModel;

  factory LifeHabitQuestionAnswerSaveModel.fromJson(
          Map<String, dynamic> json) =>
      _$LifeHabitQuestionAnswerSaveModelFromJson(json);
}

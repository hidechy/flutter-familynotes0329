import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 生活習慣設問取得から返却されるデータモデル
@freezed
class LifeHabitQuestionListModel with _$LifeHabitQuestionListModel {
  const factory LifeHabitQuestionListModel({
    required List<LifeHabitQuestionModel> list,
  }) = _LifeHabitQuestionListModel;

  factory LifeHabitQuestionListModel.fromJson(
    Map<String, dynamic> json,
  ) {
    final recordList = json['list'] as List<dynamic>;
    final list = recordList.map((e) {
      final record = e as Map<String, dynamic>;
      return LifeHabitQuestionModel.fromJson(record);
    }).toList();

    return LifeHabitQuestionListModel(list: list);
  }
}

@freezed
class LifeHabitQuestionModel with _$LifeHabitQuestionModel {
  const factory LifeHabitQuestionModel({
    @JsonKey(name: 'question_id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'hint') @Default('') String hint,
    @JsonKey(name: 'question') required String content,
    @JsonKey(name: 'choices') required List<ChoiceModel> choices,
  }) = _LifeHabitQuestionModel;

  factory LifeHabitQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$LifeHabitQuestionModelFromJson(json);
}

@freezed
class ChoiceModel with _$ChoiceModel {
  const factory ChoiceModel({
    @JsonKey(name: 'choice_id') required int id,
    @JsonKey(name: 'choice') required String content,
  }) = _ChoiceModel;

  factory ChoiceModel.fromJson(Map<String, dynamic> json) =>
      _$ChoiceModelFromJson(json);
}

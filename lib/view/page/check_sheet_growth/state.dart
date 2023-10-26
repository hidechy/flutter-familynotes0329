import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/check_sheet_growth_detail/model.dart';

part 'state.freezed.dart';

@freezed
class CheckSheetGrowthState with _$CheckSheetGrowthState {
  const factory CheckSheetGrowthState.loading() = CheckSheetGrowthStateLoading;

  const factory CheckSheetGrowthState.loaded({
    required List<GrowthDetailCategoryState> list,

    /// 未回答のみの質問の表示/全ての質問表示の制御
    /// true:　未回答のみ表示
    /// false:　全て表示
    @Default(false) bool isShowOnlyUnAnswered,
  }) = CheckSheetGrowthStateLoaded;
}

@freezed
class GrowthDetailCategoryState with _$GrowthDetailCategoryState {
  const factory GrowthDetailCategoryState({
    required int id,
    required String category,
    required List<GrowthQuestionState> questionList,

    /// カテゴリーの表示/非表示の制御
    /// true:　表示
    /// false:　非表示
    @Default(true) bool isShowQuestionCategoryArea,
  }) = _GrowthDetailCategoryState;

  factory GrowthDetailCategoryState.fromModel(GrowthDetailCategoryModel model) {
    return GrowthDetailCategoryState(
      id: model.id,
      category: model.category,
      questionList: model.details.map(GrowthQuestionState.fromModel).toList(),
    );
  }
}

@freezed
class GrowthQuestionState with _$GrowthQuestionState {
  const factory GrowthQuestionState({
    required int? id,
    required int questionId,
    required String question,
    required int isCheck,
    required String note,
    required TextEditingController noteController,
    required FocusNode focusNode,

    /// 質問の表示/非表示の制御
    /// true:　表示
    /// false:　非表示
    @Default(true) bool isShowQuestionArea,
  }) = _GrowthQuestionState;

  factory GrowthQuestionState.fromModel(GrowthQuestionModel model) {
    final note = model.note ?? '';
    final isCheck = int.parse(model.isCheck);

    return GrowthQuestionState(
      id: model.id,
      questionId: model.questionId,
      question: model.question,
      isCheck: isCheck,
      note: note,
      noteController: TextEditingController(text: note),
      focusNode: FocusNode()
    );
  }
}

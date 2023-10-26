import 'package:family_notes/data/model/check_sheet_support_detail/model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class CheckSheetSupportState with _$CheckSheetSupportState {
  const factory CheckSheetSupportState.loading() =
      CheckSheetSupportStateLoading;

  const factory CheckSheetSupportState.loaded({
    required List<CheckSheetSupportLargeCategoryState> largeCategoryList,

    /// 回答済みのみの質問の表示/全ての質問表示の制御
    /// true:　回答済みのみ表示
    /// false:　全て表示
    @Default(false) bool isShowOnlyAnswered,
  }) = CheckSheetSupportStateLoaded;
}

@freezed
class CheckSheetSupportLargeCategoryState
    with _$CheckSheetSupportLargeCategoryState {
  const factory CheckSheetSupportLargeCategoryState({
    required int id,
    required String name,
    required List<CheckSheetSupportSmallCategoryState> smallCategoryList,

    /// 大カテゴリーの表示/非表示の制御
    /// true:　表示
    /// false:　非表示
    @Default(true) bool isShowLargeCategoryArea,
  }) = _CheckSheetSupportLargeCategoryState;

  factory CheckSheetSupportLargeCategoryState.fromModel(
    CheckSheetSupportLargeCategoryModel model,
  ) {
    return CheckSheetSupportLargeCategoryState(
      id: model.id,
      name: model.name,
      smallCategoryList: model.smallCategoryList
          .map(CheckSheetSupportSmallCategoryState.fromModel)
          .toList(),
    );
  }
}

@freezed
class CheckSheetSupportSmallCategoryState
    with _$CheckSheetSupportSmallCategoryState {
  const factory CheckSheetSupportSmallCategoryState({
    required int id,
    required String name,
    required List<SupportQuestionState> questionList,

    /// 小カテゴリーの表示/非表示の制御
    /// true:　表示
    /// false:　非表示
    @Default(true) bool isShowSmallCategoryArea,
  }) = _CheckSheetSupportSmallCategoryState;

  factory CheckSheetSupportSmallCategoryState.fromModel(
    CheckSheetSupportSmallCategoryModel model,
  ) {
    return CheckSheetSupportSmallCategoryState(
      id: model.id,
      name: model.name,
      questionList:
          model.detailList.map(SupportQuestionState.fromModel).toList(),
    );
  }
}

@freezed
class SupportQuestionState with _$SupportQuestionState {
  const factory SupportQuestionState({
    required int? id,
    required int questionId,
    required String question,
    required String example,
    required int isCheck,
    required String note,
    required TextEditingController noteController,
    required FocusNode focusNode,

    /// 質問の表示/非表示の制御
    /// true:　表示
    /// false:　非表示
    @Default(true) bool isShowQuestionArea,
  }) = _SupportQuestionState;

  factory SupportQuestionState.fromModel(SupportQuestionModel model) {
    final isCheck = int.parse(model.isCheck);

    return SupportQuestionState(
      id: model.id,
      questionId: model.questionId,
      question: model.question,
      example: model.example,
      isCheck: isCheck,
      note: model.note,
      noteController: TextEditingController(text: model.note),
      focusNode: FocusNode(),
    );
  }
}

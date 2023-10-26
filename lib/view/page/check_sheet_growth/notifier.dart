import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/model/response/model.dart';
import '../../../data/repository/check_sheet_growth.dart';
import '../../../data/request/check_sheet_growth_save/request.dart';
import '../../../provider/user/notifier.dart';
import '../../../util/util.dart';
import '../../style/texts.dart';
import 'state.dart';
import 'status.dart';

final checkSheetGrowthProvider =
    AutoDisposeStateNotifierProvider<CheckSheetGrowthNotifier, CheckSheetGrowthState>((ref) {
  final childId = ref.watch(userStateProvider).mapOrNull(authenticated: (value) => value.selectedChildId);

  return CheckSheetGrowthNotifier(
    ref: ref,
    childId: childId,
    checkSheetGrowthRepository: ref.watch(checkSheetGrowthRepositoryProvider),
  );
});

class CheckSheetGrowthNotifier extends StateNotifier<CheckSheetGrowthState> {
  CheckSheetGrowthNotifier({
    required this.ref,
    required this.childId,
    required this.checkSheetGrowthRepository,
  }) : super(const CheckSheetGrowthState.loading()) {
    fetchDetails();
  }

  final Ref ref;
  final int? childId;
  final CheckSheetGrowthRepository checkSheetGrowthRepository;
  final questionCheckOk = GrowthQuestionCheckStatus.ok.value;
  final questionCheckNo = GrowthQuestionCheckStatus.no.value;

  CheckSheetGrowthStateLoaded get _getLoaded => state as CheckSheetGrowthStateLoaded;

  /// 発達チェックシート取得
  Future<void> fetchDetails() async {
    if (childId == null) {
      _showError(IHSTexts.error);
      return;
    }

    await checkSheetGrowthRepository.fetchDetails(childId: childId!).then((response) {
      final data = response.data;
      if (ResponseStatus.failure == response.status || data == null) {
        _showError(response.msg ?? IHSTexts.error);
        return;
      }

      final list = data.list.map((e) {
        return GrowthDetailCategoryState.fromModel(e);
      }).toList();

      state = CheckSheetGrowthState.loaded(list: list);
    }).catchError((_) {});
  }

  /// 未回答のみの質問の表示/全ての質問表示
  void onChangedIsShowOnlyUnAnswered({required bool value}) {
    final loadedState = _getLoaded;
    state = loadedState.copyWith(isShowOnlyUnAnswered: value);
  }

  /// カテゴリーの表示/非表示
  void onChangedIsShowQuestionCategoryArea() {
    final loadedState = _getLoaded;
    final isShowOnlyUnAnswered = loadedState.isShowOnlyUnAnswered;
    final newCategoryList = loadedState.list.map((category) {
      final checkList = category.questionList
          .map(
            (question) => question.isCheck,
          )
          .toList();
      final isShowQuestionCategoryArea =
          !isShowOnlyUnAnswered || (isShowOnlyUnAnswered && checkList.contains(questionCheckNo));

      return category.copyWith(isShowQuestionCategoryArea: isShowQuestionCategoryArea);
    }).toList();

    state = loadedState.copyWith(list: newCategoryList);
  }

  /// 質問の表示/非表示
  void onChangedIsShowQuestionArea() {
    final loadedState = _getLoaded;
    final isShowOnlyUnAnswered = loadedState.isShowOnlyUnAnswered;
    final newCategoryList = loadedState.list.map((category) {
      final newQuestionList = category.questionList.map((question) {
        final isShowQuestionArea =
            !isShowOnlyUnAnswered || (questionCheckNo == question.isCheck && isShowOnlyUnAnswered);

        return question.copyWith(isShowQuestionArea: isShowQuestionArea);
      }).toList();

      return category.copyWith(questionList: newQuestionList);
    }).toList();

    state = loadedState.copyWith(list: newCategoryList);
  }

  /// 質問に該当しているかチェック
  void onTapCheck({
    required int categoryId,
    required int questionId,
  }) {
    final loadedState = _getLoaded;
    final category = loadedState.list.firstWhere((category) => category.id == categoryId);
    final newQuestionList = category.questionList.map((question) {
      return question.questionId == questionId
          ? question.copyWith(isCheck: questionCheckNo == question.isCheck ? questionCheckOk : questionCheckNo)
          : question;
    }).toList();

    final newCategoryList = loadedState.list.map((category) {
      return category.id == categoryId ? category.copyWith(questionList: newQuestionList) : category;
    }).toList();

    state = loadedState.copyWith(list: newCategoryList);
  }

  Future<void> onTapSave({
    required Function(int result) onSuccess,
    required Function() onFailure,
  }) async {
    final request = _setRequest();
    debugPrint(request.toJson().toString());
    await checkSheetGrowthRepository.save(request: request).then(
      (response) {
        final data = response.data;
        if (ResponseStatus.failure == response.status || data == null) {
          _showError(response.msg ?? IHSTexts.error);
          return;
        }

        onSuccess(data.result);
      },
    ).catchError((_) {
      onFailure();
    });
  }

  CheckSheetGrowthSaveRequest _setRequest() {
    final answeredList = <GrowthQuestionState>[];
    _getLoaded.list.forEach((category) {
      answeredList.addAll(category.questionList);
    });

    return CheckSheetGrowthSaveRequest(
      childId: childId!,
      answerList: answeredList.map((e) {
        return GrowthQustionAnswerRequest(
          growthCheckSheetId: e.id,
          growthCheckSheetQuestionId: e.questionId,
          isCheck: e.isCheck,
          note: e.noteController.text,
        );
      }).toList(),
    );
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}

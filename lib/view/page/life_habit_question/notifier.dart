import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/model/response/model.dart';
import '../../../data/repository/life_habit_repository.dart';
import '../../../data/request/life_habit_question_save/request.dart';
import '../../../provider/user/notifier.dart';
import '../../../util/util.dart';
import '../../style/texts.dart';
import 'state.dart';

/// 生活習慣設問プロバイダー
final lifeHabitQuestionStateProvider = AutoDisposeStateNotifierProvider<
    LifeHabitQuestionStateNotifier, LifeHabitQuestionState>((ref) {
  final childId = ref
      .watch(userStateProvider)
      .mapOrNull(authenticated: (value) => value.selectedChildId);

  return LifeHabitQuestionStateNotifier(
    ref: ref,
    childId: childId,
    lifeHabitRepository: ref.watch(lifeHabitRepositoryProvider),
  );
});

class LifeHabitQuestionStateNotifier
    extends StateNotifier<LifeHabitQuestionState> {
  LifeHabitQuestionStateNotifier({
    required this.ref,
    required this.childId,
    required this.lifeHabitRepository,
  }) : super(const LifeHabitQuestionState.loading()) {
    _fetchList();
  }

  final Ref ref;
  final int? childId;
  final LifeHabitRepository lifeHabitRepository;

  LifeHabitQuestionStateLoaded get _getLoaded =>
      state as LifeHabitQuestionStateLoaded;

  /// 生活習慣設問取得
  Future<void> _fetchList() async {
    if (childId == null) {
      _showError(IHSTexts.error);
      return;
    }

    await lifeHabitRepository
        .fetchQuestionList(childId: childId!)
        .then((response) {
      final data = response.data;
      if (ResponseStatus.failure == response.status || data == null) {
        _showError(response.msg ?? IHSTexts.error);
        return;
      }

      final list = data.list.map((e) {
        return QuestionState.fromModel(e);
      }).toList();
      state = LifeHabitQuestionState.loaded(list: list);
    }).catchError((_) {});
  }

  /// 前の設問を表示させるため、前の設問番号の保持
  void setPreviousQuestionIndex() {
    final currentIndex = _getLoaded.inputData.currentQuestionIndex;
    state = _getLoaded.copyWith(
      inputData: _getLoaded.inputData.copyWith(
        currentQuestionIndex: currentIndex - 1,
      ),
    );
  }

  /// 次の設問を表示させるため、次の設問番号の保持
  void setNextQuestionIndex() {
    final currentIndex = _getLoaded.inputData.currentQuestionIndex;
    state = _getLoaded.copyWith(
      inputData: _getLoaded.inputData.copyWith(
        currentQuestionIndex: currentIndex + 1,
      ),
    );
  }

  /// 前の設問idの保持
  void setPreviousQuestionId() {
    // 前の設問番号から設問の特定
    final previousQuestionId =
        _getLoaded.list[_getLoaded.inputData.currentQuestionIndex].id;
    state = _getLoaded.copyWith(
      inputData: _getLoaded.inputData.copyWith(
        previousQuestionId: previousQuestionId,
      ),
    );
  }

  /// 設問選択肢idの保持
  void onChangedCurrentChoiceId(int id) {
    state = _getLoaded.copyWith(
      inputData: _getLoaded.inputData.copyWith(
        currentChoiceId: id,
      ),
    );
  }

  /// 「前へ」ボタン押下時、前の設問選択肢を選択中状態にするため、前の設問の選択肢idの保持
  void setPreviousChoiceId() {
    // 回答済み内容から前の設問idを基に、選択肢idの取得
    final previousChoiceId = _getAnswerdChoiceId(
      _getLoaded.inputData.previousQuestionId,
    );
    state = _getLoaded.copyWith(
      inputData: _getLoaded.inputData.copyWith(
        currentChoiceId: previousChoiceId,
      ),
    );
  }

  /// 次の設問移動時に回答状態を未回答状態とするため、設問未回答状態の保持
  void setNextQuestionNoAnswerChoiceId() {
    state = _getLoaded.copyWith(
      inputData: _getLoaded.inputData.copyWith(currentChoiceId: null),
    );
  }

  /// 次の設問の回答済みの選択肢idの保持
  void setNextQuestionAnswerdChoiceId() {
    final nextQuestion = getNextQuestion();
    final answerdChoiceId = _getAnswerdChoiceId(nextQuestion.id);
    state = _getLoaded.copyWith(
      inputData: _getLoaded.inputData.copyWith(
        currentChoiceId: answerdChoiceId,
      ),
    );
  }

  /// 回答内容の保持
  void setAnswer({required int questionId}) {
    final currentChoiceId = _getLoaded.inputData.currentChoiceId;
    if (currentChoiceId == null) {
      assert(currentChoiceId == null, 'CurrentChoiceId is null');
      _showError(IHSTexts.error);
      return;
    }

    final answers = _getLoaded.inputData.answers.map((e) => e).toList();
    final answer = AnswerState(
      questionId: questionId,
      choiceId: currentChoiceId,
    );
    // 前設問に戻り、再度回答後、次の設問に移動した際に、その回答を保持したいので、同じ設問の既存の回答を削除
    answers.removeWhere((element) => element.questionId == questionId);
    final newAnswers = [answer, ...answers];
    state = _getLoaded.copyWith(
      inputData: _getLoaded.inputData.copyWith(
        answers: newAnswers,
      ),
    );
  }

  /// 保存
  Future<void> onTapSave({
    required Function(int) onSuccess,
    required Function(String) onFailure,
  }) async {
    log(_getLoaded.mapOrNull(loaded: (value) => value.inputData).toString());
    final request = _setRequest();
    await lifeHabitRepository.save(request: request).then((response) {
      final data = response.data;
      if (response.status == ResponseStatus.failure || data == null) {
        onFailure(response.msg ?? IHSTexts.error);
        return;
      }

      final answerHeaderId = data.answerHeaderId;
      onSuccess(answerHeaderId);
    }).catchError((_) {
      onFailure('');
    });
  }

  /// リクエストの保持
  LifeHabitQuestionSaveRequest _setRequest() {
    final answers = _getLoaded.inputData.answers
        .map((e) {
          return AnswerRequest(
            questionId: e.questionId,
            choiceId: e.choiceId,
          );
        })
        .toList()
        .reversed
        .toList();

    return LifeHabitQuestionSaveRequest(childId: childId!, answers: answers);
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }

  /// 回答済みの設問か確認
  bool isQuestionAnswerd(int questionId) {
    var isAnswerd = false;
    _getLoaded.inputData.answers.forEach((element) {
      if (questionId == element.questionId) {
        isAnswerd = true;
      }
    });

    return isAnswerd;
  }

  /// 次の設問の取得
  QuestionState getNextQuestion() {
    final nextQuestionIndex = _getLoaded.inputData.currentQuestionIndex;
    return _getLoaded.list[nextQuestionIndex];
  }

  /// 回答済み内容から選択肢idの取得
  int _getAnswerdChoiceId(int questionId) {
    return _getLoaded.inputData.answers
        .firstWhere((element) => element.questionId == questionId)
        .choiceId;
  }
}

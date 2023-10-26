import 'package:family_notes/data/model/response/model.dart';
import 'package:family_notes/data/repository/life_habit_repository.dart';
import 'package:family_notes/view/page/life_habit_question_result/state.dart';
import 'package:family_notes/view/style/texts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../util/util.dart';

/// 設問回答結果画面状態プロバイダー
final lifeHabitQuestionResultStateProvider =
    AutoDisposeStateNotifierProvider.family<
        LifeHabitQuestionResultStateNotifier,
        LifeHabitQuestionResultState,
        int>((ref, answerHeaderId) {
  return LifeHabitQuestionResultStateNotifier(
    answerHeaderid: answerHeaderId,
    ref: ref,
    lifeHabitRepository: ref.watch(lifeHabitRepositoryProvider),
  );
});

class LifeHabitQuestionResultStateNotifier
    extends StateNotifier<LifeHabitQuestionResultState> {
  LifeHabitQuestionResultStateNotifier({
    required int answerHeaderid,
    required this.ref,
    required this.lifeHabitRepository,
  }) : super(const LifeHabitQuestionResultState.loading()) {
    _fetchList(answerHeaderid);
  }

  final Ref ref;
  final LifeHabitRepository lifeHabitRepository;

  /// 設問回答結果取得
  Future<void> _fetchList(int answerHeaderId) async {
    await lifeHabitRepository
        .fetchAnswerResultList(
      answerHeaderId: answerHeaderId,
    )
        .then((response) {
      final data = response.data;

      if (ResponseStatus.failure == response.status || data == null) {
        _showError(response.msg ?? IHSTexts.error);
        return;
      }

      final list = data.list.map((e) {
        return QuestionAnswerResultState.fromModel(e);
      }).toList();
      final otherComments = OtherCommentsState.fromModel(data.otherComments);
      final generalComment = GeneralCommentsState.fromModel(
        data.generalComments,
      );

      state = LifeHabitQuestionResultState.loaded(
        list: list,
        otherComments: otherComments,
        generalComments: generalComment,
      );
    }).catchError((_) {});
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}

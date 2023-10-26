import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/repository/life_habit_repository.dart';
import '../../../provider/user/notifier.dart';
import '../../../util/util.dart';
import '../../style/texts.dart';
import 'state.dart';

/// 生活習慣改善チェックシート画面状態プロバイダー
final lifeHabitCheckWorkSheetStatusProvider =
    AutoDisposeStateNotifierProvider<LifeHabitCheckWorkSheetNotifier, LifeHabitCheckWorkSheetState>((ref) {
  final childId = ref.watch(userStateProvider).mapOrNull(authenticated: (value) => value.selectedChildId);

  return LifeHabitCheckWorkSheetNotifier(
    childId: childId,
    ref: ref,
    lifeHabitRepository: ref.watch(lifeHabitRepositoryProvider),
  );
});

class LifeHabitCheckWorkSheetNotifier extends StateNotifier<LifeHabitCheckWorkSheetState> {
  LifeHabitCheckWorkSheetNotifier({
    required int? childId,
    required this.ref,
    required this.lifeHabitRepository,
  }) : super(const LifeHabitCheckWorkSheetState.loading()) {
    _fetchList(childId);
  }

  final Ref ref;
  final LifeHabitRepository lifeHabitRepository;

  /// 生活習慣設問回答履歴一覧取得
  Future<void> _fetchList(int? childId) async {
    await lifeHabitRepository.fetchAnswerHistoryList(childId: childId!).then((response) {
      final data = response.data;
      if (response.isFailure || data == null) {
        _showError(response.msg ?? IHSTexts.error);
        return;
      }

      final list = data.list.map((e) {
        return QuestionAnswerHistoryState.fromModel(e);
      }).toList();

      state = LifeHabitCheckWorkSheetStateLoaded(list: list);
    }).catchError((_) {});
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/repository/child_growth_record.dart';
import '/provider/child/notifier.dart';
import '/util/util.dart';
import 'state.dart';

/// 乳幼児身体記録選択画面の状態を管理するプロバイダー
final childGrowthRecordSelectProvider = AutoDisposeStateNotifierProvider<
    ChilgGrowthRecordSelectNotifier, ChildGrowthRecordSelectState>((ref) {
  return ChilgGrowthRecordSelectNotifier(
    ref: ref,
    repository: ref.watch(childGrowthRecordRepositoryProvider),
    childId: ref.watch(selectedChildStateProvider).mapOrNull(
          loaded: (state) => state.childId,
        ),
  );
});

class ChilgGrowthRecordSelectNotifier
    extends StateNotifier<ChildGrowthRecordSelectState> {
  ChilgGrowthRecordSelectNotifier({
    required this.ref,
    required this.repository,
    required this.childId,
  }) : super(const ChildGrowthRecordSelectState()) {
    fetch();
  }

  final AutoDisposeStateNotifierProviderRef ref;
  final ChildGrowthRecordRepository repository;
  final int? childId;

  Future<void> fetch() async {
    if (childId == null) {
      _showError('予期せぬエラーが発生しました');
      return;
    }

    await repository.fetchList(childId: childId!).then(
      (response) {
        if (!mounted) {
          return;
        }

        final data = response.data;

        if (response.isFailure || data == null) {
          _showError(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        state = state.copyWith(recordList: data);
      },
    ).catchError(
      (_) {},
    );
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/provider/child/notifier.dart';
import '/util/util.dart';
import '../../../data/repository/pregnant_weight_record.dart';
import 'state.dart';

/// 妊婦体重記録選択画面の状態を管理するプロバイダー
final pregnantWeightRecordSelectProvider = AutoDisposeStateNotifierProvider<
    PregnantWeightRecordSelectNotifier, PregnantWeightRecordSelectState>((ref) {
  return PregnantWeightRecordSelectNotifier(
    ref: ref,
    repository: ref.watch(pregnantWeightRecordRepositoryProvider),
    childId: ref.watch(selectedChildStateProvider).mapOrNull(
          loaded: (state) => state.childId,
        ),
  );
});

class PregnantWeightRecordSelectNotifier
    extends StateNotifier<PregnantWeightRecordSelectState> {
  PregnantWeightRecordSelectNotifier({
    required this.ref,
    required this.repository,
    required this.childId,
  }) : super(const PregnantWeightRecordSelectState()) {
    fetch();
  }

  final AutoDisposeStateNotifierProviderRef ref;
  final PregnantWeightRecordRepository repository;
  final int? childId;

  Future<void> fetch() async {
    if (childId == null) {
      _showError('予期せぬエラーが発生しました');
      return;
    }

    await repository.fetchList(childId: childId!).then(
      (response) {
        final data = response.data;
        if (!mounted) {
          return;
        }

        if (response.isFailure || data == null) {
          _showError(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        state = state.copyWith(recordList: data);
      },
    ).catchError((_) {});
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}

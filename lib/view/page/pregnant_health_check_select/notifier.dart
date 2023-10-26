import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/repository/pregnant.dart';
import '/provider/child/notifier.dart';
import '../../../util/util.dart';
import 'state.dart';

/// 妊婦健診選択画面の状態を管理するプロバイダー
final pregnantHealthCheckSelectProvider = AutoDisposeStateNotifierProvider<
    PregnantHealthCheckSelectNotifier, PregnantHealthCheckSelectState>((ref) {
  return PregnantHealthCheckSelectNotifier(
    ref: ref,
    repository: ref.watch(pregnantRepositoryProvider),
    childId: ref.watch(selectedChildStateProvider).mapOrNull(
          loaded: (state) => state.childId,
        ),
  );
});

class PregnantHealthCheckSelectNotifier
    extends StateNotifier<PregnantHealthCheckSelectState> {
  PregnantHealthCheckSelectNotifier({
    required this.ref,
    required this.repository,
    required this.childId,
  }) : super(const PregnantHealthCheckSelectState()) {
    fetch();
  }

  final AutoDisposeStateNotifierProviderRef ref;
  final PregnantRepository repository;
  final int? childId;

  Future<void> fetch() async {
    if (childId == null) {
      _showError('予期せぬエラーが発生しました');
      return;
    }

    await repository.fetchcheckupRecords(childId: childId!).then(
      (response) {
        final data = response.data;

        if (response.isFailure || data == null) {
          _showError(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        state = state.copyWith(checkupList: data);
      },
    ).catchError(
      (_) {},
    );
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}

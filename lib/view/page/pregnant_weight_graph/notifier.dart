import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/data/repository/pregnant_weight_record.dart';
import '/provider/child/notifier.dart';
import '/util/util.dart';
import '../../style/texts.dart';
import 'state.dart';

/// 体重グラフ画面の状態を管理するプロバイダー
final pregnantWeightGraphStateProvider = AutoDisposeStateNotifierProvider<
    PregnantWeightGraphNotifier, PregnantWeightGraphState>((ref) {
  return PregnantWeightGraphNotifier(
    ref: ref,
    repository: ref.watch(pregnantWeightRecordRepositoryProvider),
  );
});

class PregnantWeightGraphNotifier
    extends StateNotifier<PregnantWeightGraphState> {
  PregnantWeightGraphNotifier({
    required this.ref,
    required this.repository,
  }) : super(const PregnantWeightGraphStateLoading()) {
    fetchRecords();
  }

  final Ref ref;
  final PregnantWeightRecordRepository repository;

  Future<void> fetchRecords() async {
    final childId = ref
        .read(selectedChildStateProvider)
        .mapOrNull(loaded: (state) => state.childId);
    if (childId == null) {
      _showError('予期せぬエラーが発生しました');
      return;
    }

    await repository.fetchGraphData(childId: childId).then(
      (response) {
        final data = response.data;

        if (response.isFailure || data == null) {
          _showError(response.msg ?? IHSTexts.error);
          return;
        }

        state = PregnantWeightGraphState.loaded(weightGraphDataList: data.list);
      },
    ).catchError((_) {});
  }

  void setLoading() {
    state = const PregnantWeightGraphState.loading();
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}

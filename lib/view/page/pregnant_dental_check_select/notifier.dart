import 'package:family_notes/data/repository/pregnant_dental_check.dart';
import 'package:family_notes/provider/user/notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../util/util.dart';
import '../../style/texts.dart';
import 'state.dart';

/// 妊婦歯科健診選択画面を管理するプロバイダー
final pregnantDentalCheckSelectProvider = AutoDisposeStateNotifierProvider<
    PregnantDentalCheckSelectNotifier, PregnantDentalCheckSelectState>((ref) {
  final childId =
      ref.watch(userStateProvider).mapOrNull(authenticated: (value) {
    return value.selectedChildId;
  });

  return PregnantDentalCheckSelectNotifier(
    childId: childId,
    ref: ref,
    pregnantDentalCheckRepository:
        ref.watch(pregnantDentalCheckRepositoryProvider),
  );
});

class PregnantDentalCheckSelectNotifier
    extends StateNotifier<PregnantDentalCheckSelectState> {
  PregnantDentalCheckSelectNotifier({
    required int? childId,
    required this.ref,
    required this.pregnantDentalCheckRepository,
  }) : super(const PregnantDentalCheckSelectState.loading()) {
    fetchList(childId);
  }

  final Ref ref;
  final PregnantDentalCheckRepository pregnantDentalCheckRepository;

  /// 記録一覧取得
  void fetchList(int? childId) {
    if (childId == null) {
      state = const PregnantDentalCheckSelectState.loaded(list: []);
      _showError(IHSTexts.error);
      return;
    }

    pregnantDentalCheckRepository.fetchList(childId: childId).then((response) {
      final data = response.data;
      if (response.isFailure || data == null) {
        _showError(response.msg ?? IHSTexts.error);
        return;
      }

      final list = data.list.map((e) {
        return PregnantDentalCheckRecordState.fromModel(e);
      }).toList();

      state = PregnantDentalCheckSelectState.loaded(list: list);
    }).catchError((_) {
      state = const PregnantDentalCheckSelectState.loaded(list: []);
    });
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}

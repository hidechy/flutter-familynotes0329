import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/model/pregnant_weight_record_list/model.dart';
import '/data/repository/pregnant_weight_record.dart';
import '/view/page/pregnant_weight_record_input/converter.dart';
import '/view/page/pregnant_weight_record_select/notifier.dart';
import '../../../data/model/response/model.dart';
import '../../../extension//string.dart';
import '../../../provider/child/notifier.dart';
import '../../../util/util.dart';
import '../pregnant_weight_graph/notifier.dart';
import 'state.dart';

/// 体重入力の状態を管理するプロバイダー
final pregnantWeightGraphInputStateProvider =
    AutoDisposeStateNotifierProvider.family<PregnantWeightRecordInputNotifier,
        PregnantWeightRecordInputState, PregnantWeightRecord?>((ref, record) {
  return PregnantWeightRecordInputNotifier(
    record: record,
    ref: ref,
    repository: ref.watch(pregnantWeightRecordRepositoryProvider),
  );
});

class PregnantWeightRecordInputNotifier
    extends StateNotifier<PregnantWeightRecordInputState> {
  PregnantWeightRecordInputNotifier({
    required PregnantWeightRecord? record,
    required this.ref,
    required this.repository,
  }) : super(const PregnantWeightRecordInputState()) {
    _setup(record);
  }

  final AutoDisposeStateNotifierProviderRef ref;
  final PregnantWeightRecordRepository repository;

  void _setup(PregnantWeightRecord? record) {
    if (record != null) {
      state = state.copyWith(
        inputData: PregnantWeightInputData(
          date: record.date,
          weight: record.weight.toString().toKiloGram(),
        ),
      );
    }
  }

  // 測定日
  void onChangedDateField(DateTime? date) {
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        date: date,
      ),
    );
  }

  // 体重
  void onChangedWeightField(String weight) {
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        weight: weight,
      ),
    );
  }

  // 削除
  void onTapDelete({
    required int recordId,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    final childState = ref.read(selectedChildStateProvider);
    final childId = childState.mapOrNull(loaded: (state) => state.childId);

    if (childId == null) {
      _showError('予期せぬエラーが発生しました');
      return;
    }

    repository.delete(childId: childId, recordId: recordId).then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        // 一覧の更新を依頼
        ref.read(pregnantWeightRecordSelectProvider.notifier).fetch();
        // グラフの更新を依頼
        ref.read(pregnantWeightGraphStateProvider.notifier).fetchRecords();
        onSuccess();
      },
    ).catchError(
      (_) {
        onFailure('');
      },
    );
  }

  // 登録
  void onTapRegister({
    required int? recordId,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    final childState = ref.read(selectedChildStateProvider);
    final childId = childState.mapOrNull(loaded: (state) => state.childId);

    if (childId == null) {
      _showError('予期せぬエラーが発生しました');
      return;
    }

    final request = PregnantWeightRecordSaveRequestConverter.convertFrom(
      recordId: recordId,
      childId: childId,
      inputData: state.inputData,
    );

    repository.save(request: request).then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        // 一覧の更新を依頼
        ref.read(pregnantWeightRecordSelectProvider.notifier).fetch();
        onSuccess();
      },
    ).catchError((_) {
      onFailure('');
    });
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}

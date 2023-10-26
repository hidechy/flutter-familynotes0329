import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/model/checkup_list/model.dart';
import '/extension/string.dart';
import '../../../data/model/response/model.dart';
import '../../../data/repository/pregnant.dart';
import '../../../provider/child/notifier.dart';
import '../../../util/util.dart';
import '../pregnant_health_check_select/notifier.dart';
import 'converter.dart';
import 'page_status.dart';
import 'state.dart';

/// 妊婦健診の入力の状態を管理するプロバイダー
final pregnantHealthCheckInputStateProvider = AutoDisposeStateNotifierProvider.family<PregnantHealthCheckInputNotifier,
    PregnantHealthCheckInputPageStatus, CheckupModel?>((ref, checkupModel) {
  return PregnantHealthCheckInputNotifier(
    checkupModel: checkupModel,
    ref: ref,
    repository: ref.watch(pregnantRepositoryProvider),
  );
});

class PregnantHealthCheckInputNotifier extends StateNotifier<PregnantHealthCheckInputPageStatus> {
  PregnantHealthCheckInputNotifier({
    required CheckupModel? checkupModel,
    required this.ref,
    required this.repository,
  }) : super(const PregnantHealthCheckInputPageStatus.init()) {
    setup(checkupModel);
  }

  final AutoDisposeStateNotifierProviderRef ref;
  final PregnantRepository repository;

  void setup(CheckupModel? checkupModel) {
    // 更新なら詳細情報を取得
    if (checkupModel != null) {
      _fetchDetail(checkupModel.checkupId!);
      return;
    }

    state = PregnantHealthCheckInputPageStatus.loaded(
      data: PregnantHealthCheckInputState(
        inputData: const PregnantHealthCheckInputData().copyWith(
          memoController: TextEditingController(text: ''),
        ),
      ),
    );
  }

  Future<void> _fetchDetail(int recordId) async {
    if (state is PregnantHealthCheckInputPageStatusLoading) {
      return;
    }

    state = const PregnantHealthCheckInputPageStatus.init();

    await repository.fetchCheckupRecordDetail(motherCheckupRecordId: recordId).then(
      (response) {
        final checkupDetail = response.data;

        if (response.status == ResponseStatus.failure || checkupDetail == null) {
          _showError(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        final kgWeight = checkupDetail.weight?.floor().toString().toKiloGram() ?? '';

        state = PregnantHealthCheckInputPageStatus.loaded(
          data: PregnantHealthCheckInputState(
            inputData: PregnantHealthCheckInputData(
              date: checkupDetail.checkupDay.toDateTime(DateFormatType.yyyymmddLine),
              week: checkupDetail.gestationalWeek?.toString() ?? '',
              day: checkupDetail.gestationalWeekDay?.toString() ?? '',
              weight: kgWeight,
              selectedItem: {
                PregnantHealthCheckInputListItemType.noProblem: checkupDetail.isNormal == '1',
                PregnantHealthCheckInputListItemType.threatenedMiscarriage: checkupDetail.isTa == '1',
                PregnantHealthCheckInputListItemType.hyperTensionSyndrome: checkupDetail.isPih == '1',
                PregnantHealthCheckInputListItemType.gestationalDiabetes: checkupDetail.isGdm == '1',
                PregnantHealthCheckInputListItemType.anemia: checkupDetail.isAnemia == '1',
                PregnantHealthCheckInputListItemType.others: checkupDetail.isOtherDisease == '1',
              },
              memo: checkupDetail.note ?? '',
              memoController: TextEditingController(
                text: checkupDetail.note ?? '',
              ),
            ),
          ),
        );
      },
    ).catchError(
      (_) {
        state = const PregnantHealthCheckInputPageStatus.loaded();
      },
    );
  }

  // 健診日
  void onChangedDateField(DateTime? date) {
    final loadedState = state as PregnantHealthCheckInputPageStatusLoaded;
    state = loadedState.copyWith(
      data: loadedState.data.copyWith(
        inputData: loadedState.data.inputData.copyWith(
          date: date,
        ),
      ),
    );
  }

  // 妊娠週数-週
  void onChangedWeekField(String week) {
    final loadedState = state as PregnantHealthCheckInputPageStatusLoaded;
    state = loadedState.copyWith(
      data: loadedState.data.copyWith(
        inputData: loadedState.data.inputData.copyWith(
          week: week,
        ),
      ),
    );
  }

  // 妊娠週数-日
  void onChangedDayField(String day) {
    final loadedState = state as PregnantHealthCheckInputPageStatusLoaded;
    state = loadedState.copyWith(
      data: loadedState.data.copyWith(
        inputData: loadedState.data.inputData.copyWith(
          day: day,
        ),
      ),
    );
  }

  // 体重
  void onChangedWeightField(String weight) {
    final loadedState = state as PregnantHealthCheckInputPageStatusLoaded;
    state = loadedState.copyWith(
      data: loadedState.data.copyWith(
        inputData: loadedState.data.inputData.copyWith(
          weight: weight,
        ),
      ),
    );
  }

  // 健診結果（チェック項目）
  void onChangedSelectedItem(
    PregnantHealthCheckInputListItemType type, {
    required bool value,
  }) {
    final loadedState = state as PregnantHealthCheckInputPageStatusLoaded;
    final selectedItem = {...loadedState.data.inputData.selectedItem};
    if (type == PregnantHealthCheckInputListItemType.noProblem) {
      final keys = selectedItem.keys;
      for (final key in keys) {
        selectedItem[key] = false;
      }
      selectedItem[type] = value;
    }

    if (type != PregnantHealthCheckInputListItemType.noProblem) {
      selectedItem[PregnantHealthCheckInputListItemType.noProblem] = false;
      selectedItem[type] = value;
    }

    state = loadedState.copyWith(
      data: loadedState.data.copyWith(
        inputData: loadedState.data.inputData.copyWith(
          selectedItem: selectedItem,
        ),
      ),
    );
  }

  // メモ
  void onChangedMemoField(String memo) {
    final loadedState = state as PregnantHealthCheckInputPageStatusLoaded;
    state = loadedState.copyWith(
      data: loadedState.data.copyWith(
        inputData: loadedState.data.inputData.copyWith(
          memo: memo,
        ),
      ),
    );
  }

  // 登録
  void onTapRegister({
    required int? checkupId,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    final childState = ref.read(selectedChildStateProvider);
    final childId = childState.mapOrNull(loaded: (state) => state.childId);
    final loadedState = state as PregnantHealthCheckInputPageStatusLoaded;

    if (childId == null) {
      _showError('予期せぬエラーが発生しました');
      return;
    }

    final request = CheckupRecordSaveRequestConverter.convertFrom(
      checkupId: checkupId,
      childId: childId,
      inputData: loadedState.data.inputData,
    );

    repository.saveCheckupRecord(request: request).then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        // 一覧の更新を依頼
        ref.read(pregnantHealthCheckSelectProvider.notifier).fetch();
        onSuccess();
      },
    ).catchError(
      (_) {},
    );
  }

  // 削除
  void onTapDelete({
    required int? checkupId,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    if (checkupId == null) {
      _showError('予期せぬエラーが発生しました');
      return;
    }

    repository.deleteCheckupRecord(motherCheckupRecordId: checkupId).then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        // 一覧の更新を依頼
        ref.read(pregnantHealthCheckSelectProvider.notifier).fetch();
        onSuccess();
      },
    ).catchError(
      (_) {},
    );
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }
}

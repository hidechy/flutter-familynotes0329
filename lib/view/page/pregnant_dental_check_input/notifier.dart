import 'package:family_notes/data/repository/pregnant_dental_check.dart';
import 'package:family_notes/extension/date_time.dart';
import 'package:family_notes/provider/user/notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/model/response/model.dart';
import '../../../data/request/pregnant_dental_check_add/request.dart';
import '../../../util/util.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/validation.dart';
import '../../style/texts.dart';
import '../pregnant_dental_check_select/notifier.dart';
import '../pregnant_dental_check_select/type.dart';
import 'state.dart';
import 'status.dart';
import 'type.dart';

/// 歯科健診入力の状態を管理するプロバイダー
final pregnantDentalCheckInputProvider =
    AutoDisposeStateNotifierProvider.family<
        PregnantDentalCheckInputNotifier,
        PregnantDentalCheckInputState,
        PregnantDentalCheckInputType>((ref, type) {
  final childId = ref.watch(userStateProvider).mapOrNull(
    authenticated: (value) {
      return value.selectedChildId;
    },
  );

  return PregnantDentalCheckInputNotifier(
    type: type,
    childId: childId,
    ref: ref,
    pregnantDentalCheckRepository:
        ref.read(pregnantDentalCheckRepositoryProvider),
  );
});

class PregnantDentalCheckInputNotifier
    extends StateNotifier<PregnantDentalCheckInputState> {
  PregnantDentalCheckInputNotifier({
    required PregnantDentalCheckInputType type,
    required this.childId,
    required this.ref,
    required this.pregnantDentalCheckRepository,
  }) : super(const PregnantDentalCheckInputLoading()) {
    _setup(type);
  }

  final int? childId;
  final Ref ref;
  final PregnantDentalCheckRepository pregnantDentalCheckRepository;

  void _setup(PregnantDentalCheckInputType type) {
    // 新規登録
    if (type is PregnantDentalCheckInputNew) {
      final _dateController = getController(
        type: ValidateTextFieldType.date,
        value: '',
      );
      final _weekController = getController(
        type: ValidateTextFieldType.week,
        isRequired: false,
        value: '',
        validator: NumValidationType.week.numValid,
      );
      state = PregnantDentalCheckInputState.loaded(
        dateController: _dateController,
        weekController: _weekController,
        inputData: const PregnantDentalCheckInputData().copyWith(
          memoController: TextEditingController(text: ''),
        ),
      );
      return;
    }

    /// 編集
    if (type is PregnantDentalCheckInputEdit) {
      _fetchDetail(type.motherDentalCheckupRecordId);
    }
  }

  /// 詳細取得
  void _fetchDetail(int motherDentalCheckupRecordId) {
    pregnantDentalCheckRepository
        .fetchDetail(motherDentalCheckupRecordId: motherDentalCheckupRecordId)
        .then((response) {
      final data = response.data;
      if (ResponseStatus.failure == response.status || data == null) {
        _showError(response.msg ?? IHSTexts.error);
        return;
      }

      final inputData = PregnantDentalCheckInputData.fromModel(data);
      final date = inputData.date;
      final dateController = getController(
        type: ValidateTextFieldType.date,
        value: date != null ? date.yyyymmdd : '',
      );
      final weekController = getController(
        type: ValidateTextFieldType.week,
        isRequired: false,
        value: inputData.week ?? '',
        validator: NumValidationType.week.numValid,
      );
      state = PregnantDentalCheckInputState.loaded(
        inputData: inputData,
        dateController: dateController,
        weekController: weekController,
      );
    }).catchError((_) {});
  }

  // 健診日
  void onChangedDateField(DateTime? date) {
    final loadedState = state as PregnantDentalCheckInputLoaded;
    loadedState.dateController!.updateValue(date?.yyyymmdd);
    state = loadedState.copyWith(
      inputData: loadedState.inputData.copyWith(date: date),
    );
  }

  // 妊娠週数
  void onChangedWeekField(String week) {
    final loadedState = state as PregnantDentalCheckInputLoaded;
    loadedState.weekController!.updateValue(week);
    state = loadedState.copyWith(
      inputData: loadedState.inputData.copyWith(
        week: week,
      ),
    );
  }

  void onChangedPostpartem({required bool isAfterBirth}) {
    final loadedState = state as PregnantDentalCheckInputLoaded;
    state = loadedState.copyWith(
      inputData: loadedState.inputData.copyWith(
        isAfterBirth: isAfterBirth,
      ),
    );
  }

  // チェック項目
  void onChangedSelectedItem(PregnantDentalCheckInputListItemType type) {
    final loadedState = state as PregnantDentalCheckInputLoaded;
    state = loadedState.copyWith(
      inputData: loadedState.inputData.copyWith(
        type: type,
      ),
    );
  }

  // メモ
  void onChangedMemoField(String memo) {
    final loadedState = state as PregnantDentalCheckInputLoaded;
    state = loadedState.copyWith(
      inputData: loadedState.inputData.copyWith(
        memo: memo,
      ),
    );
  }

  /// 保存
  Future<void> onTapSave({
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) async {
    final loadedState = state as PregnantDentalCheckInputLoaded;
    debugPrint(state.mapOrNull(loaded: (value) => value.toString()));
    final request = _setRequest(loadedState);
    await pregnantDentalCheckRepository.save(request: request).then((response) {
      if (response.status == ResponseStatus.failure) {
        onFailure(response.msg ?? IHSTexts.error);
        return;
      }

      // 一覧再取得
      ref.read(pregnantDentalCheckSelectProvider.notifier).fetchList(childId);
      onSuccess();
    }).catchError((_) {
      onFailure('');
    });
  }

  /// リクエストの保持
  PregnantDentalCheckSaveRequest _setRequest(
    PregnantDentalCheckInputLoaded loadedState,
  ) {
    final inputData = loadedState.inputData;
    final week = inputData.week == null || inputData.week!.isEmpty
        ? null
        : int.parse(inputData.week!);
    final type = loadedState.inputData.type;
    final isChildbirth = _getBirthValueToRequest(inputData.isAfterBirth);
    final isNormal = _getProbremValueToRequest(type);
    final isTbi = _getGuidanceValueToRequest(type);
    final isTreatment = _getTreatmentValueToRequest(type);

    return PregnantDentalCheckSaveRequest(
      motherDentalCheckupRecordId: inputData.motherDentalCheckupRecordId,
      childId: childId!,
      gestationalWeek: week,
      checkupDay: loadedState.inputData.date!.yyyymmdd,
      isChildbirth: isChildbirth,
      isNormal: isNormal,
      isTbi: isTbi,
      isTreatment: isTreatment,
      note: loadedState.inputData.memo ?? '',
    );
  }

  String _getBirthValueToRequest(bool isAfterBirth) {
    return isAfterBirth
        ? BirthStatus.after.apiValue
        : BirthStatus.before.apiValue;
  }

  String _getProbremValueToRequest(PregnantDentalCheckInputListItemType type) {
    return type == PregnantDentalCheckInputListItemType.noProblem
        ? ProbremStatus.yes.apiValue
        : ProbremStatus.no.apiValue;
  }

  String _getGuidanceValueToRequest(PregnantDentalCheckInputListItemType type) {
    return type == PregnantDentalCheckInputListItemType.neededGuidance
        ? NeededGuidanceStatus.yes.apiValue
        : NeededGuidanceStatus.no.apiValue;
  }

  String _getTreatmentValueToRequest(
    PregnantDentalCheckInputListItemType type,
  ) {
    return type == PregnantDentalCheckInputListItemType.neededTreatment
        ? TreatmentStatus.yes.apiValue
        : TreatmentStatus.no.apiValue;
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }

  /// 削除
  Future<void> onTapDelete({
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) async {
    final loadedState = state as PregnantDentalCheckInputLoaded;
    debugPrint(state.mapOrNull(loaded: (value) => value.toString()));
    final recordId = loadedState.inputData.motherDentalCheckupRecordId!;
    await pregnantDentalCheckRepository
        .delete(motherDentalCheckupRecordId: recordId)
        .then((response) {
      if (response.status == ResponseStatus.failure) {
        onFailure(response.msg ?? IHSTexts.error);
        return;
      }

      // 一覧再取得
      ref.read(pregnantDentalCheckSelectProvider.notifier).fetchList(childId);
      onSuccess();
    }).catchError((_) {
      onFailure('');
    });
  }
}

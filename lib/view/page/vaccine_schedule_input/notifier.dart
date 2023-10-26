import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/model/response/model.dart';
import '../../../data/repository/vaccine.dart';
import '../../../data/request/vaccine_delete/request.dart';
import '../../../data/request/vaccine_save/request.dart';
import '../../../provider/user/notifier.dart';
import '../../style/texts.dart';
import '../vaccine_schedule/type.dart';
import 'state.dart';

/// 予定日入力の状態を管理するプロバイダー
final vaccineScheduleInputProvider = AutoDisposeStateNotifierProvider<
    VaccineScheduleInputNotifier, VaccineScheduleInputState>((ref) {
  return VaccineScheduleInputNotifier(
    ref: ref,
    vaccineRepository: ref.read(vaccineRepositoryProvider),
    childId: ref.watch(userStateProvider
        .select((s) => s.mapOrNull(authenticated: (s) => s.selectedChildId))),
  );
});

class VaccineScheduleInputNotifier
    extends StateNotifier<VaccineScheduleInputState> {
  VaccineScheduleInputNotifier({
    required this.ref,
    required this.vaccineRepository,
    required this.childId,
  }) : super(const VaccineScheduleInputState());

  final AutoDisposeStateNotifierProviderRef<VaccineScheduleInputNotifier,
      VaccineScheduleInputState> ref;
  final VaccineRepository vaccineRepository;
  final int? childId;

  void setup(VaccineScheduleInputDate inputDate) {
    state = state.copyWith(
      inputDate: inputDate,
    );
  }

  // 削除
  Future<void> onTapDelete({
    required int vaccineTypeId,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) async {
    // 削除API
    //debugPrint(state.toString());
    if (childId == null) {
      onFailure(IHSTexts.error);
      return;
    }
    final request = VaccineDeleteRequest(
      childId: childId!,
      vaccineTypeId: vaccineTypeId,
      status: StatusType.reserved.status,
    );
    await vaccineRepository
        .deleteVaccineDate(request: request)
        .then((response) {
      if (response.status != ResponseStatus.success) {
        onFailure(response.msg ?? IHSTexts.error);
      } else {
        // API成功なので自クリア
        state = state.copyWith(
          inputDate: state.inputDate!.copyWith(dateList: <String>[]),
        );
        onSuccess();
      }
    }).catchError(
      (_) {
        onFailure('');
      },
    );
  }

  // 登録
  Future<void> onTapRegister({
    required int vaccineTypeId,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) async {
    // 保存API
    if (childId == null) {
      onFailure(IHSTexts.error);
      return;
    }

    const vaccineSubTypeId = 0; // 予定入力なのでSubTypeIdは無い
    final list = <VaccineSaveItem>[];
    final lpCnt = state.inputDate!.dateList.length;
    for (var idx = 0; idx < lpCnt; ++idx) {
      final setDate = state.inputDate!.dateList[idx];
      list.add(VaccineSaveItem(
          vaccineSubTypeId: vaccineSubTypeId,
          whatTime: idx + 1,
          setAt: setDate));
    }
    final request = VaccineSaveListRequest(
      childId: childId!,
      vaccineTypeId: vaccineTypeId,
      status: StatusType.reserved.status, // 予定入力なので"R"固定
      saveList: list,
    );

    await vaccineRepository
        .updateVaccineDateMulti(request: request)
        .then((response) {
      if (response.status != ResponseStatus.success) {
        onFailure(response.msg ?? IHSTexts.error);
      } else {
        onSuccess();
      }
    }).catchError(
      (_) {
        onFailure('');
      },
    );
  }

  // 予定日更新
  void onChangedDateList(List<String> list) {
    state = state.copyWith(
      inputDate: state.inputDate!.copyWith(dateList: list),
    );
  }
}

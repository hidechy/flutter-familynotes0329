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

/// 実績日入力の状態を管理するプロバイダー
final vaccineDoneInputProvider = AutoDisposeStateNotifierProvider<
    VaccineDoneInputNotifier, VaccineDoneInputState>((ref) {
  return VaccineDoneInputNotifier(
    ref: ref,
    vaccineRepository: ref.read(vaccineRepositoryProvider),
    childId: ref.watch(userStateProvider
        .select((s) => s.mapOrNull(authenticated: (s) => s.selectedChildId))),
  );
});

class VaccineDoneInputNotifier extends StateNotifier<VaccineDoneInputState> {
  VaccineDoneInputNotifier({
    required this.ref,
    required this.vaccineRepository,
    required this.childId,
  }) : super(const VaccineDoneInputState());

  final AutoDisposeStateNotifierProviderRef<VaccineDoneInputNotifier,
      VaccineDoneInputState> ref;
  final VaccineRepository vaccineRepository;
  final int? childId;

  Map<String, String> pDownIdMap = {};

  void setup(
    VaccineDoneInputDate inputDate,
    Map<String, String> pullMap,
  ) {
    pDownIdMap
      ..clear()
      ..addAll(pullMap);
    state = state.copyWith(inputDate: inputDate);
  }

  // 削除
  Future<void> onTapDelete({
    required int vaccineTypeId,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) async {
    if (childId == null) {
      onFailure(IHSTexts.error);
      return;
    }

    final request = VaccineDeleteRequest(
      childId: childId!,
      vaccineTypeId: vaccineTypeId,
      status: StatusType.done.status,
    );
    await vaccineRepository
        .deleteVaccineDate(request: request)
        .then((response) {
      if (response.status != ResponseStatus.success) {
        onFailure(response.msg ?? IHSTexts.error);
      } else {
        // API成功なので自クリア
        final dList = List.filled(state.inputDate!.dateList.length, '');
        final cList = (state.inputDate!.selectItemList.isNotEmpty)
            ? List.filled(state.inputDate!.selectItemList.length, '')
            : <String>[];
        state = state.copyWith(
          inputDate:
              state.inputDate!.copyWith(dateList: dList, selectItemList: cList),
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
    final list = <VaccineSaveItem>[];
    final lpCnt = state.inputDate!.dateList.length;
    for (var idx = 0; idx < lpCnt; ++idx) {
      final setDate = state.inputDate!.dateList[idx];
      final vaccineSubTypeIdStr = pDownIdMap.isEmpty
          ? '0'
          : state.inputDate!.selectItemList[idx].isEmpty
              ? '0'
              : pDownIdMap[state.inputDate!.selectItemList[idx]];
      list.add(VaccineSaveItem(
          vaccineSubTypeId: int.parse(vaccineSubTypeIdStr!),
          whatTime: idx + 1,
          setAt: setDate));
    }
    final request = VaccineSaveListRequest(
      childId: childId!,
      vaccineTypeId: vaccineTypeId,
      status: StatusType.done.status, // 実績入力なので"Y"固定
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

  // 実施日更新
  void onChangedDateList(List<String> list) {
    state = state.copyWith(
      inputDate: state.inputDate!.copyWith(
        dateList: list,
        selectItemList: state.inputDate!.selectItemList,
      ),
    );
  }

  /// [index]に紐づくサブタイプを空にする
  void makeEmptySelectItem(int index) {
    final list = state.inputDate!.selectItemList;
    final newList = <String>[];
    for (var i = 0; i < list.length; i++) {
      if (i == index) {
        newList.add('');
        continue;
      }

      newList.add(list[i]);
    }

    state = state.copyWith(
      inputDate: state.inputDate!.copyWith(
        selectItemList: newList,
      ),
    );
  }

  // selectItem更新
  void onChangedItem(int idx, int selectNum) {
    // 既に値が選択されている場合、値を消去するために、調整数を作成する
    final adjuster = (state.inputDate!.selectItemList[idx] != '') ? 1 : 0;
    final newList = state.inputDate!.selectItemList.toList()
      ..removeAt(idx)
      ..insert(
        idx,
        (adjuster == 1 && selectNum == 0)
            ? ''
            : pDownIdMap.keys.toList().elementAt(selectNum - adjuster),
      );

    state = state.copyWith(
      inputDate: state.inputDate!.copyWith(
        dateList: state.inputDate!.dateList,
        selectItemList: newList,
      ),
    );
  }

  // selectItem取得
  String getSelectItem(int index) {
    if (state.inputDate == null) {
      return '';
    }

    if (index >= state.inputDate!.selectItemList.length) {
      return '';
    }

    return state.inputDate!.selectItemList[index];
  }

  void changeExpanded(int flagNum) {
    state = state.copyWith(expandedNum: flagNum);
  }

  /// 登録可能か確認する
  bool confirmRegisterable() {
    final inputData = state.inputDate;
    if (inputData == null) {
      return false;
    }

    var isRegisterabel = true;
    final selectedDateList = inputData.dateList;
    final selectedItemList = inputData.selectItemList;
    for (var i = 0; i < selectedDateList.length; i++) {
      // 実施日は入力されていないが、サブタイプが入力されていた場合は登録不可
      if (selectedDateList[i].isEmpty && selectedItemList[i].isNotEmpty) {
        isRegisterabel = false;
        break;
      }

      continue;
    }

    return isRegisterabel;
  }
}

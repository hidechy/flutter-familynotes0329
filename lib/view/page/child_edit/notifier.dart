import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/model/response/model.dart';
import '../../../data/repository/child.dart';
import '../../../data/request/child_delete/request.dart';
import '../../../data/request/child_save/request.dart';
import '../../../extension/date_time.dart';
import '../../../provider/child/notifier.dart';
import '../../../provider/child/state.dart';
import '../../../type/gender.dart';
import '../../component/child_list_item/state.dart';
import '../../component/validate_text_field/child_gedner_type.dart';
import '../../component/validate_text_field/type.dart';
import '../child_book_select/notifier.dart';
import 'state.dart';

/// お子さま情報の入力の状態を管理するプロバイダー
final childInputStateProvider = AutoDisposeStateNotifierProvider.family<
    ChildEditNotifier,
    ChildEditState,
    ChildListItemDataChild?>((ref, inputData) {
  final selectedChildId =
      (ref.read(selectedChildStateProvider) as SelectedChildStateLoaded)
          .childId;

  return ChildEditNotifier(
    ref: ref,
    repository: ref.watch(childRepositoryProvider),
    inputData: inputData,
    selectedChildId: selectedChildId,
  );
});

class ChildEditNotifier extends StateNotifier<ChildEditState> {
  ChildEditNotifier({
    required this.ref,
    required this.repository,
    required this.inputData,
    required this.selectedChildId,
  }) : super(const ChildEditState()) {
    setup();
  }

  final AutoDisposeStateNotifierProviderRef ref;
  final ChildRepository repository;
  final ChildListItemDataChild? inputData;
  final int selectedChildId;

  void setup() {
    // 名前（ニックネーム）用
    final nameContoller = getController(
      type: ValidateTextFieldType.nickname,
      value: inputData?.name ?? '',
    );

    // 性別用
    final genderControl = ValidateChildGenderType.getController(
      value: inputData?.gender,
    );

    //生年月日
    final birthdayController = getController(
      type: ValidateTextFieldType.date,
      value: inputData?.birthday?.yyyymmdd ?? '',
    );

    state = state.copyWith(
      inputData: ChildEditData(
        name: inputData?.name ?? '',
        gender: inputData?.gender,
        birthday: inputData?.birthday,
      ),
      nameController: nameContoller,
      genderController: genderControl,
      birthdayController: birthdayController,
    );
  }

  // 名前（ニックネーム）
  void onChangedNameField(String name) {
    state.nameController!.updateValue(name);

    state = state.copyWith(
      inputData: state.inputData.copyWith(
        name: name,
      ),
    );
  }

  // 性別
  void onChangedGender(Gender gender) {
    state.genderController!.updateValue(gender);

    state = state.copyWith(
      inputData: state.inputData.copyWith(
        gender: gender,
      ),
    );
  }

  // 生年月日
  void onChangedDateField(DateTime? birthday) {
    state.birthdayController!.updateValue(birthday!.yyyymmdd);

    state = state.copyWith(
      inputData: state.inputData.copyWith(
        birthday: birthday,
      ),
    );
  }

// 登録(更新)
  void onTapRegister({
    int? childId,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    final inputData = state.inputData;
    final request = ChildSaveRequest(
      childId: childId,
      nickname: inputData.name,
      gender: inputData.gender!.num,
      birthday: inputData.birthday.toString(),
    );

    repository.saveChild(request: request).then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        // 子ども一覧の更新を依頼
        ref.read(childListStatusProvider.notifier).fetch();
        onSuccess();
      },
    ).catchError(
      (error, _) {
        onFailure('');
      },
    );
  }

  // 削除
  void onTapDelete({
    int? childId,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    if (selectedChildId == childId) {
      onFailure('選択中のお子さまは削除できません。');
      return;
    }

    final request = ChildDeleteRequest(childId: childId!);

    repository.deleteChild(request: request).then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        // 子ども一覧の更新を依頼
        ref.read(childListStatusProvider.notifier).fetch();
        onSuccess();
      },
    ).catchError(
      (_) {
        onFailure('');
      },
    );
  }

  void showGenderValidateMessage() {
    state = state.copyWith(isShowGenderValidateMessage: true);
  }

  void hideGenderValidateMessage() {
    state = state.copyWith(isShowGenderValidateMessage: false);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/model/response/model.dart';
import '../../../data/repository/baby.dart';
import '../../../data/request/baby_delete/request.dart';
import '../../../data/request/baby_save/request.dart';
import '../../../extension/date_time.dart';
import '../../../provider/child/notifier.dart';
import '../../../provider/child/state.dart';
import '../../component/child_list_item/state.dart';
import '../../component/validate_text_field/type.dart';
import '../child_book_select/notifier.dart';
import 'state.dart';

/// 胎児情報の入力の状態を管理するプロバイダー
final babyInputStateProvider = AutoDisposeStateNotifierProvider.family<
    BabyEditNotifier, BabyEditState, ChildListItemDataBaby?>((
  ref,
  inputData,
) {
  final selectedChildId =
      (ref.read(selectedChildStateProvider) as SelectedChildStateLoaded)
          .childId;

  return BabyEditNotifier(
    ref: ref,
    repository: ref.watch(babyRepositoryProvider),
    inputData: inputData,
    selectedChildId: selectedChildId,
  );
});

class BabyEditNotifier extends StateNotifier<BabyEditState> {
  BabyEditNotifier({
    required this.ref,
    required this.repository,
    required this.inputData,
    required this.selectedChildId,
  }) : super(const BabyEditState()) {
    setup(inputData);
  }

  final AutoDisposeStateNotifierProviderRef ref;
  final BabyRepository repository;
  final ChildListItemDataBaby? inputData;
  final int selectedChildId;

  void setup(ChildListItemDataBaby? babyItem) {
    final nameController = getController(
      type: ValidateTextFieldType.nickname,
      value: babyItem?.name ?? '',
    );

    final scheduledBirthdayController = getController(
      type: ValidateTextFieldType.date,
      value: babyItem != null ? babyItem.scheduledBirthday?.yyyymmdd ?? '' : '',
    );

    state = state.copyWith(
      inputData: BabyEditData(
        name: babyItem?.name ?? '',
        scheduledBirthday: babyItem?.scheduledBirthday,
      ),
      nameController: nameController,
      scheduledBirthdayController: scheduledBirthdayController,
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

  // 出産予定日
  void onChangedDateField(DateTime? scheduledBirthday) {
    state.scheduledBirthdayController!.updateValue(scheduledBirthday?.yyyymmdd);

    state = state.copyWith(
      inputData: state.inputData.copyWith(
        scheduledBirthday: scheduledBirthday,
      ),
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

    final request = BabyDeleteRequest(childId: childId!);

    repository.deleteBaby(request: request).then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        // 子ども一覧の更新を依頼
        ref.read(childListStatusProvider.notifier).fetch();
        onSuccess();
      },
    ).catchError((_) {});
  }

  // 登録(更新)
  void onTapRegister({
    int? childId,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    final inputData = state.inputData;
    final request = BabySaveRequest(
      childId: childId,
      nickname: inputData.name,
      birthScheduleDate: inputData.scheduledBirthday.toString(),
    );

    repository.saveBaby(request: request).then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        // 子ども一覧の更新を依頼
        ref.read(childListStatusProvider.notifier).fetch();
        onSuccess();
      },
    ).catchError((_) {});
  }
}

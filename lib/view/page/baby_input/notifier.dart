import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../extension/date_time.dart';
import '../../../provider/signup/notifier.dart';
import '../../../provider/user/notifier.dart';
import '../../component/validate_text_field/type.dart';
import 'state.dart';

/// 胎児情報の入力の状態を管理するプロバイダー
final babyInputStateProvider =
    AutoDisposeStateNotifierProvider<BabyInputNotifier, BabyInputState>((ref) {
  return BabyInputNotifier(ref: ref);
});

class BabyInputNotifier extends StateNotifier<BabyInputState> {
  BabyInputNotifier({
    required this.ref,
  }) : super(const BabyInputState()) {
    final nameController = getController(
      type: ValidateTextFieldType.nickname,
      value: state.inputData.name,
    );

    final scheduledBirthday = state.inputData.scheduledBirthday;
    final scheduledBirthdayController = getController(
      type: ValidateTextFieldType.date,
      value: scheduledBirthday != null ? scheduledBirthday.yyyymmdd : '',
    );

    state = state.copyWith(
      nameController: nameController,
      scheduledBirthdayController: scheduledBirthdayController,
    );
  }

  final AutoDisposeStateNotifierProviderRef ref;

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

  // 登録
  Future<void> onTapRegister({
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) async {
    final inputData = state.inputData;
    // トップレベルのstateを更新
    ref.read(signUpStateProvider.notifier).onInputBabyInfo(
          nickname: inputData.name,
          birthScheduledDate: inputData.scheduledBirthday.toString(),
        );

    await ref.read(signUpStateProvider.notifier).signUp(
      onSuccess: () async {
        ref.read(signUpStateProvider.notifier).reset();
        await ref
            .read(userStateProvider.notifier)
            .onSelectedFirstBookAfterSignUp(onFailure: onFailure);
        onSuccess();
      },
      onFailure: (msg) {
        onFailure(msg);
      },
    );
  }
}

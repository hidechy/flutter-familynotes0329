import 'package:family_notes/extension/date_time.dart';
import 'package:family_notes/provider/user/notifier.dart';
import 'package:family_notes/view/component/validate_text_field/type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/signup/notifier.dart';
import '../../../type/gender.dart';
import '../../component/validate_text_field/child_gedner_type.dart';
import 'state.dart';

/// お子さま情報の入力の状態を管理するプロバイダー
final childInputStateProvider =
    AutoDisposeStateNotifierProvider<ChildInputNotifier, ChildInputState>(
        (ref) {
  return ChildInputNotifier(ref: ref);
});

class ChildInputNotifier extends StateNotifier<ChildInputState> {
  ChildInputNotifier({
    required this.ref,
  }) : super(const ChildInputState()) {
    // 名前（ニックネーム）用
    final nameContoller = getController(
      type: ValidateTextFieldType.nickname,
      value: state.inputData.name,
    );
    // 性別用
    final genderControl = ValidateChildGenderType.getController(
      value: state.inputData.gender,
    );
    // 生年月日用
    final birthday = state.inputData.birthday;
    final birthdayContoller = getController(
      type: ValidateTextFieldType.date,
      value: birthday != null ? birthday.yyyymmdd : '',
    );

    state = state.copyWith(
      nameController: nameContoller,
      genderController: genderControl,
      birthdayController: birthdayContoller,
    );
  }

  final Ref ref;

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

  // 出産予定日
  void onChangedDateField(DateTime? birthday) {
    state.birthdayController!.updateValue(birthday?.yyyymmdd);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        birthday: birthday,
      ),
    );
  }

  void showGenderValidateMessage() {
    state = state.copyWith(isShowGenderValidateMessage: true);
  }

  void hideGenderValidateMessage() {
    state = state.copyWith(isShowGenderValidateMessage: false);
  }

  // 登録
  Future<void> onTapRegister({
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) async {
    final inputData = state.inputData;
    // トップレベルのstateを更新
    ref.read(signUpStateProvider.notifier).onInputChildInfo(
          nickname: inputData.name,
          gender: inputData.gender!.num,
          birthday: inputData.birthday.toString(),
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

  void onTapCancel() {
    ref.read(signUpStateProvider.notifier).resetChildInfo();
  }
}

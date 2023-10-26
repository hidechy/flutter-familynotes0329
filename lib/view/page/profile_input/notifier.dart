import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/provider/signup/notifier.dart';
import '../../../type/gender.dart';
import '../../component/validate_text_field/type.dart';
import 'state.dart';

/// プロフィール情報の入力の状態を管理するプロバイダー
final profileInputStateProvider =
    AutoDisposeStateNotifierProvider<ProfileInputNotifier, ProfileInputState>(
  (ref) {
    return ProfileInputNotifier(ref: ref);
  },
);

class ProfileInputNotifier extends StateNotifier<ProfileInputState> {
  ProfileInputNotifier({
    required this.ref,
  }) : super(const ProfileInputState()) {
    _init();
  }

  final AutoDisposeStateNotifierProviderRef ref;

  void _init() {
    final _nicknameController = getController(
      type: ValidateTextFieldType.parentNickname,
      value: '',
    );
    final _postalCodeController = getController(
      type: ValidateTextFieldType.postalCode,
      value: '',
    );
    state = state.copyWith(
      nicknameController: _nicknameController,
      postalCodeController: _postalCodeController,
    );
  }

  // 名前（ニックネーム）
  void onChangedNameField(String name) {
    state.nicknameController!.updateValue(name);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        name: name,
      ),
    );
  }

  // 生年月日
  void onChangedDateField(DateTime? birthday) {
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        birthday: birthday,
      ),
    );
  }

  // 性別
  void onChangedGenderField(Gender gender) {
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        gender: gender,
      ),
    );
  }

  // 郵便番号
  void onChangedPostalCodeField(String postalCode) {
    state.postalCodeController!.updateValue(postalCode);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        postalCode: postalCode,
      ),
    );
  }

  // プロフィール登録
  void onTapRegister({
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    final inputData = state.inputData;
    final birthday = inputData.birthday;
    // トップレベルのstateを更新
    ref.read(signUpStateProvider.notifier).onInputProfile(
          nickname: inputData.name,
          birthday: birthday == null ? '' : birthday.toString(),
          gender: inputData.gender.num,
          postalCode: inputData.postalCode.replaceAll('-', ''),
        );
    onSuccess();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/model/response/model.dart';
import '/data/repository/auth.dart';
import 'state.dart';

/// 新規登録の入力の状態を管理するプロバイダー
final settingPasswordResetStateProvider = AutoDisposeStateNotifierProvider<
    SettingPasswordResetNotifier, SettingPasswordResetState>((ref) {
  return SettingPasswordResetNotifier(
    ref: ref,
    authRepository: ref.watch(authRepositoryProvider),
  );
});

class SettingPasswordResetNotifier
    extends StateNotifier<SettingPasswordResetState> {
  SettingPasswordResetNotifier({
    required this.ref,
    required this.authRepository,
  }) : super(const SettingPasswordResetState());

  final AutoDisposeStateNotifierProviderRef<SettingPasswordResetNotifier,
      SettingPasswordResetState> ref;
  final AuthRepository authRepository;

  // メールアドレス
  void onChangedOldPassword(String oldPassword) {
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        oldPassword: oldPassword,
      ),
    );
  }

  // パスワード
  void onChangedPassword(String password) {
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        password: password,
      ),
    );
  }

  // パスワード（確認用）
  void onChangedConfirmPassword(String confirmPassword) {
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        confirmPassword: confirmPassword,
      ),
    );
  }

  // 登録
  void onTapRegister({
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    final inputData = state.inputData;
    authRepository
        .changePassword(
      oldPassword: inputData.oldPassword,
      newPassword: inputData.password,
    )
        .then(
      (IHSResponse<Empty> response) {
        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        onSuccess();
      },
    );
  }
}

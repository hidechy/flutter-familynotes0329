import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/model/response/model.dart';
import '/data/repository/auth.dart';
import '../../../data/model/code_publish/model.dart';
import 'state.dart';

/// パスワードリセット時のコード認証の入力の状態を管理するプロバイダー
final passwordResetCodeConfirmStateProvider = AutoDisposeStateNotifierProvider<
    PasswordResetCodeConfirmNotifier, PasswordResetCodeConfirmState>((ref) {
  return PasswordResetCodeConfirmNotifier(
    ref: ref,
    repository: ref.watch(authRepositoryProvider),
  );
});

class PasswordResetCodeConfirmNotifier
    extends StateNotifier<PasswordResetCodeConfirmState> {
  PasswordResetCodeConfirmNotifier({
    required this.ref,
    required this.repository,
  }) : super(const PasswordResetCodeConfirmState());

  final AutoDisposeStateNotifierProviderRef<PasswordResetCodeConfirmNotifier,
      PasswordResetCodeConfirmState> ref;
  final AuthRepository repository;

  // 認証コード
  void onChangedAuthCode(String authCode) {
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        authCode: authCode,
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
  void onChangedConfirmPassword(String password) {
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        confirmPassword: password,
      ),
    );
  }

  // 送信
  void onTappedSend({
    required String email,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    final inputData = state.inputData;

    if (inputData.authCode.isEmpty ||
        inputData.password.isEmpty ||
        inputData.confirmPassword.isEmpty) {
      // バリデーションを実施しているため通らない想定
      onFailure('未入力の項目があります');
      return;
    }

    repository
        .codeConfirmForPasswordChange(
      email: email,
      authCode: inputData.authCode,
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

  // 認証コード再送
  void onTappedCodeResend({
    required String email,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    repository.codePublishForPasswordChange(email: email).then(
      (IHSResponse<CodePublishModel> response) {
        final model = response.data;
        if (response.status == ResponseStatus.failure || model == null) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }
        onSuccess();
      },
    );
  }
}

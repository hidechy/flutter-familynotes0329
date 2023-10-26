import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/model/response/model.dart';
import '/data/repository/auth.dart';
import '/data/repository/common.dart';
import '../../../data/local/local_client.dart';
import '../../../data/model/code_publish/model.dart';
import 'state.dart';

/// パスワードリセットの入力の状態を管理するプロバイダー
final passwordResetStateProvider =
    AutoDisposeStateNotifierProvider<PasswordResetNotifier, PasswordResetState>(
        (ref) {
  return PasswordResetNotifier(
    ref: ref,
    localClient: ref.watch(localClientProvider),
    authRepository: ref.watch(authRepositoryProvider),
    commonRepository: ref.watch(commonRepositoryProvider),
  );
});

class PasswordResetNotifier extends StateNotifier<PasswordResetState> {
  PasswordResetNotifier({
    required this.ref,
    required this.localClient,
    required this.authRepository,
    required this.commonRepository,
  }) : super(const PasswordResetState());

  final AutoDisposeStateNotifierProviderRef<PasswordResetNotifier,
      PasswordResetState> ref;
  final AuthRepository authRepository;
  final CommonRepository commonRepository;
  final LocalClient localClient;

  // メールアドレス
  void onChangedEmail(String email) {
    state = state.copyWith(
      email: email,
    );
  }

  void onTapRegister({
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    authRepository.codePublishForPasswordChange(email: state.email).then(
      (IHSResponse<CodePublishModel> response) {
        final model = response.data;
        if (response.status == ResponseStatus.failure || model == null) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }
        onSuccess();
      },
    ).catchError(
      (error, _) {
        onFailure('');
      },
    );
  }
}

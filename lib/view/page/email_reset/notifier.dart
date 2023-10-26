import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/model/response/model.dart';
import '/data/repository/auth.dart';
import '/data/repository/common.dart';
import '../../../data/local/local_client.dart';
import '../../../data/model/code_publish/model.dart';
import 'state.dart';

/// メールリセットの入力の状態を管理するプロバイダー
final emailResetStateProvider =
    AutoDisposeStateNotifierProvider<EmailResetNotifier, EmailResetState>(
        (ref) {
  return EmailResetNotifier(
    ref: ref,
    localClient: ref.watch(localClientProvider),
    authRepository: ref.watch(authRepositoryProvider),
    commonRepository: ref.watch(commonRepositoryProvider),
  );
});

class EmailResetNotifier extends StateNotifier<EmailResetState> {
  EmailResetNotifier({
    required this.ref,
    required this.localClient,
    required this.authRepository,
    required this.commonRepository,
  }) : super(const EmailResetState());

  final AutoDisposeStateNotifierProviderRef<EmailResetNotifier, EmailResetState>
      ref;
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
    authRepository.codePublishForEmailChange(email: state.email).then(
      (IHSResponse<CodePublishModel> response) {
        final model = response.data;
        if (response.status == ResponseStatus.failure || model == null) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }
        onSuccess();
      },
    ).catchError(
      (_) {
        onFailure('予期せぬエラーが発生しました');
      },
    );
  }
}

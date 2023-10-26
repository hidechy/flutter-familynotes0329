import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/model/response/model.dart';
import '/data/repository/auth.dart';
import '/provider/signup/notifier.dart';
import '../../../data/model/code_publish/model.dart';
import 'state.dart';

/// メール再入力の状態を管理するプロバイダー
final emailResendStateProvider =
    AutoDisposeStateNotifierProvider<EmailResendNotifier, EmailResendState>(
        (ref) {
  return EmailResendNotifier(
    ref: ref,
    repository: ref.watch(authRepositoryProvider),
  );
});

class EmailResendNotifier extends StateNotifier<EmailResendState> {
  EmailResendNotifier({
    required this.ref,
    required this.repository,
  }) : super(const EmailResendState());

  final AutoDisposeStateNotifierProviderRef<EmailResendNotifier,
      EmailResendState> ref;
  final AuthRepository repository;

  // メールアドレス
  void onChangedEmail(String email) {
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        email: email,
      ),
    );
  }

  // 送信
  void onTappedSend({
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    if (state.sending) {
      return;
    }

    state = state.copyWith(sending: true);

    final inputData = state.inputData;
    repository.codePublish(email: inputData.email).then(
      (IHSResponse<CodePublishModel> response) {
        state = state.copyWith(sending: false);

        final model = response.data;
        if (response.status == ResponseStatus.failure || model == null) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        // トップレベルのstateを更新
        ref.read(signUpStateProvider.notifier).onResendEmail(
              email: inputData.email,
              authCode: model.authCode,
            );
        onSuccess();
      },
    ).catchError((_) {});
  }
}

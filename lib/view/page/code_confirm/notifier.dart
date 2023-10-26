import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/model/response/model.dart';
import '/data/repository/auth.dart';
import '../../../data/local/local_client.dart';
import '../../../data/model/code_publish/model.dart';
import '../code_remind/type.dart';
import 'state.dart';

/// コード認証（サインアップまたはメール変更時）の入力の状態を管理するプロバイダー
final condeConfirmStateProvider =
    AutoDisposeStateNotifierProvider<CodeConfirmNotifier, CodeConfirmState>(
        (ref) {
  return CodeConfirmNotifier(
    ref: ref,
    repository: ref.watch(authRepositoryProvider),
  );
});

class CodeConfirmNotifier extends StateNotifier<CodeConfirmState> {
  CodeConfirmNotifier({
    required this.ref,
    required this.repository,
  }) : super(const CodeConfirmState());

  final AutoDisposeStateNotifierProviderRef<CodeConfirmNotifier,
      CodeConfirmState> ref;
  final AuthRepository repository;

  // メールアドレス
  void onChangedAuthCode(String authCode) {
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        authCode: authCode,
      ),
    );
  }

  // 送信
  void onTappedSend({
    required String email,
    required EmailSendMode sendMode,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    final inputData = state.inputData;
    switch (sendMode) {
      case EmailSendMode.signUp:
        repository.codeConfirm(email: email, authCode: inputData.authCode).then(
          (IHSResponse<Empty> response) {
            if (response.status == ResponseStatus.failure) {
              onFailure(response.msg ?? '予期せぬエラーが発生しました');
              return;
            }

            _setAuthCode();
            onSuccess();
          },
        );
        break;
      case EmailSendMode.resetEmail:
        repository
            .codeConfirmForEmailChange(
          email: email,
          authCode: inputData.authCode,
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
        break;
      case EmailSendMode.forgettenPassword:
        // パスワードお忘れのコード認証は別画面で実施するため通らない想定
        break;
    }
  }

  void _setAuthCode() {
    final inputData = state.inputData;
    syncPrefString[LocalKeyType.authCode] = inputData.authCode;
  }

  // 認証コード再送
  void onTappedCodeResend({
    required EmailSendMode emailSendMode,
    required String email,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    switch (emailSendMode) {
      case EmailSendMode.signUp:
        repository.codePublish(email: email).then(
          (IHSResponse<CodePublishModel> response) {
            final model = response.data;
            if (response.status == ResponseStatus.failure || model == null) {
              onFailure(response.msg ?? '予期せぬエラーが発生しました');
              return;
            }
            onSuccess();
          },
        ).catchError((_) {});
        break;
      case EmailSendMode.resetEmail:
        repository.codePublishForEmailChange(email: email).then(
          (IHSResponse<CodePublishModel> response) {
            final model = response.data;
            if (response.status == ResponseStatus.failure || model == null) {
              onFailure(response.msg ?? '予期せぬエラーが発生しました');
              return;
            }
            onSuccess();
          },
        );
        break;
      case EmailSendMode.forgettenPassword:
        // 同上
        break;
    }
  }
}

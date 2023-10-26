import 'package:family_notes/data/model/consent/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/model/response/model.dart';
import '/data/repository/auth.dart';
import '/data/repository/common.dart';
import '/provider/signup/notifier.dart';
import '../../../data/local/local_client.dart';
import '../../../data/model/code_publish/model.dart';
import 'state.dart';

/// 新規登録の入力の状態を管理するプロバイダー
final signUpInputStateProvider =
    AutoDisposeStateNotifierProvider<SignUpInputNotifier, SignUpInputState>(
        (ref) {
  return SignUpInputNotifier(
    ref: ref,
    localClient: ref.watch(localClientProvider),
    authRepository: ref.watch(authRepositoryProvider),
    commonRepository: ref.watch(commonRepositoryProvider),
  );
});

class SignUpInputNotifier extends StateNotifier<SignUpInputState> {
  SignUpInputNotifier({
    required this.ref,
    required this.localClient,
    required this.authRepository,
    required this.commonRepository,
  }) : super(const SignUpInputState()) {
    _fetchConsentContents();
  }

  final AutoDisposeStateNotifierProviderRef<SignUpInputNotifier,
      SignUpInputState> ref;
  final AuthRepository authRepository;
  final CommonRepository commonRepository;
  final LocalClient localClient;

  bool get checkedAll {
    return state.hasCheckedPoricy && state.hasCheckedTerms;
  }

  // 規約取得
  Future<void> _fetchConsentContents() async {
    {
      await commonRepository.fetchConsentContents().then(
        (response) {
          state = state.copyWith(fetching: false);

          if (response.data == null) {
            return;
          }
          final consentList = response.data!;
          if (consentList.list.isNotEmpty) {
            final poricy =
                consentList.list.whereType<PoricyConsentModel>().first;
            final terms = consentList.list.whereType<TermsConsentModel>().first;
            state = state.copyWith(
              poricyConsent: poricy,
              termsConsent: terms,
            );
          }
        },
      ).catchError((_) {});
    }
  }

  // メールアドレス
  void onChangedEmail(String email) {
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        email: email,
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

    if (!checkedAll) {
      onFailure('未チェックの同意内容があります');

      return;
    }
    if (inputData.email.isEmpty ||
        inputData.password.isEmpty ||
        inputData.confirmPassword.isEmpty) {
      // バリデーションを実施しているため通らない想定
      onFailure('未入力の項目があります');

      return;
    }
    authRepository.codePublish(email: inputData.email).then(
      (IHSResponse<CodePublishModel> response) {
        final model = response.data;
        if (response.status == ResponseStatus.failure || model == null) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        // トップレベルのstateを更新
        ref.read(signUpStateProvider.notifier).onCodePublish(
              email: inputData.email,
              password: inputData.password,
              authCode: model.authCode,
              poricyId: state.poricyConsent!.id,
              termsId: state.termsConsent!.id,
            );
        onSuccess();
      },
    ).catchError((_) {});
  }

  void onChecked({
    required bool active,
    required ConsentModel model,
  }) {
    model.map(
      poricy: (_) {
        state = state.copyWith(hasCheckedPoricy: active);
      },
      terms: (_) {
        state = state.copyWith(hasCheckedTerms: active);
      },
    );
  }
}

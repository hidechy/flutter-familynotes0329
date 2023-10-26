import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/local/local_client.dart';
import '../../data/model/response/model.dart';
import '../../data/model/user/model.dart';
import '../../data/repository/auth.dart';
import '../../data/repository/common.dart';
import '../../data/request/sign_up/request.dart';
import '../user/notifier.dart';
import 'state.dart';

// 複数画面にまたがるサインアップの入力状態を管理するプロバイダ
final signUpStateProvider = StateNotifierProvider<SignUpStateNotifier, SignUpState>((ref) {
  return SignUpStateNotifier(
    ref: ref,
    commonRepository: ref.watch(commonRepositoryProvider),
    authRepository: ref.watch(authRepositoryProvider),
  );
});

class SignUpStateNotifier extends StateNotifier<SignUpState> {
  SignUpStateNotifier({
    required this.ref,
    required this.commonRepository,
    required this.authRepository,
  }) : super(const SignUpStateInit());

  final StateNotifierProviderRef ref;
  final CommonRepository commonRepository;
  final AuthRepository authRepository;

  // 認証コード発行時（新規登録最初のフロー）
  void onCodePublish({
    required String email,
    required String password,
    required String authCode,
    required int poricyId,
    required int termsId,
  }) {
    state = SignUpState.inProcess(
      email: email,
      password: password,
      privacyPolicyConsentId: poricyId,
      serviceTermsConsentId: termsId,
    );
  }

  // メール再入力時
  void onResendEmail({
    required String email,
    required String authCode,
  }) {
    state = (state as SignUpStateInProcess).copyWith(email: email);
  }

  // プロフィール入力時
  void onInputProfile({
    required String nickname,
    required String birthday,
    required int gender,
    required String postalCode,
  }) {
    state = (state as SignUpStateInProcess).copyWith(
      nickname: nickname,
      birthday: birthday,
      gender: gender,
      postalCode: postalCode,
    );
  }

  // 胎児情報入力時
  void onInputBabyInfo({
    required String nickname,
    required String birthScheduledDate,
  }) {
    state = (state as SignUpStateInProcess).copyWith(
      child: SignUpChild.baby(
        nickname: nickname,
        birthScheduledDate: birthScheduledDate,
      ),
    );
  }

  // お子さま情報入力時
  void onInputChildInfo({
    required String nickname,
    required String birthday,
    required int gender,
  }) {
    state = (state as SignUpStateInProcess).copyWith(
      child: SignUpChild.child(
        nickname: nickname,
        birthday: birthday,
        gender: gender,
      ),
    );
  }

  // サインアップ実施
  Future<void> signUp({
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) async {
    final authCode = syncPrefString[LocalKeyType.authCode] ?? '';
    final currentState = state as SignUpStateInProcess;
    final request = currentState.child!.map(
      baby: (baby) {
        return SignUpRequest.baby(
          authCode: authCode,
          nickname: currentState.nickname!,
          email: currentState.email!,
          password: currentState.password!,
          birthday: currentState.birthday!,
          gender: currentState.gender!,
          postalCode: currentState.postalCode!,
          privacyPolicyConsentId: currentState.privacyPolicyConsentId!,
          serviceTermsConsentId: currentState.serviceTermsConsentId!,
          babyNickname: baby.nickname,
          birthScheduleDate: baby.birthScheduledDate,
        );
      },
      child: (child) {
        return SignUpRequest.child(
          authCode: authCode,
          nickname: currentState.nickname!,
          email: currentState.email!,
          password: currentState.password!,
          birthday: currentState.birthday!,
          gender: currentState.gender!,
          postalCode: currentState.postalCode!,
          privacyPolicyConsentId: currentState.privacyPolicyConsentId!,
          serviceTermsConsentId: currentState.serviceTermsConsentId!,
          childNickname: child.nickname,
          childGender: child.gender,
          childBirthday: child.birthday,
        );
      },
    );

    await authRepository.signUp(request: request).then(
      (IHSResponse<UserModel> response) async {
        final user = response.data;
        if (response.status == ResponseStatus.failure || user == null) {
          onFailure(response.msg ?? '予期せぬエラーが発生しました');
          return;
        }

        await ref.read(userStateProvider.notifier).onSignedUp(user);
        syncPrefString[LocalKeyType.authCode] = '';
        onSuccess();
      },
    ).catchError((_) {});
  }

  // 子ども情報をリセット（胎児情報入力/お子さま情報入力から戻る時）
  void resetChildInfo() {
    state = (state as SignUpStateInProcess).copyWith(
      child: null,
    );
  }

  // リセット
  void reset() {
    state = const SignUpState.init();
  }
}

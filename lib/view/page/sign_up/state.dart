import 'package:freezed_annotation/freezed_annotation.dart';

import '/data/model/consent/model.dart';

part 'state.freezed.dart';

@freezed
class SignUpInputState with _$SignUpInputState {
  const factory SignUpInputState({
    // プラポリ同意済み
    @Default(false) bool hasCheckedPoricy,
    // 利用規約同意済み
    @Default(false) bool hasCheckedTerms,
    @Default(SignUpInputData()) SignUpInputData inputData,
    // 規約取得中
    @Default(true) bool fetching,
    @Default(false) bool saving,
    // 取得したプラポリ
    PoricyConsentModel? poricyConsent,
    // 取得した利用規約
    TermsConsentModel? termsConsent,
  }) = _SignUpInputState;
}

/// 入力中データ
@freezed
class SignUpInputData with _$SignUpInputData {
  const factory SignUpInputData({
    /// メールアドレス
    @Default('') String email,

    /// パスワード
    @Default('') String password,

    /// パスワード（確認用）
    @Default('') String confirmPassword,
  }) = _SignUpInputData;
}

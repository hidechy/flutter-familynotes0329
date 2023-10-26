import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class PasswordResetCodeConfirmState with _$PasswordResetCodeConfirmState {
  const factory PasswordResetCodeConfirmState({
    @Default(PasswordResetCodeConfirmData())
        PasswordResetCodeConfirmData inputData,
    @Default(false) bool saving,
  }) = _PasswordResetCodeConfirmState;
}

/// 入力中データ
@freezed
class PasswordResetCodeConfirmData with _$PasswordResetCodeConfirmData {
  const factory PasswordResetCodeConfirmData({
    /// パスワード
    @Default('') String password,

    /// パスワード（確認用）
    @Default('') String confirmPassword,

    /// 認証コード
    @Default('') String authCode,
  }) = _PasswordResetCodeConfirmData;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class SettingPasswordResetState with _$SettingPasswordResetState {
  const factory SettingPasswordResetState({
    @Default(SignUpInputData()) SignUpInputData inputData,
    @Default(false) bool saving,
  }) = _SettingPasswordResetState;
}

/// 入力中データ
@freezed
class SignUpInputData with _$SignUpInputData {
  const factory SignUpInputData({
    /// 現在のパスワード
    @Default('') String oldPassword,

    /// パスワード
    @Default('') String password,

    /// パスワード（確認用）
    @Default('') String confirmPassword,
  }) = _SignUpInputData;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class EmailResendState with _$EmailResendState {
  const factory EmailResendState({
    @Default(EmailResendData()) EmailResendData inputData,
    @Default(false) bool sending,
  }) = _EmailResendState;
}

/// 入力中データ
@freezed
class EmailResendData with _$EmailResendData {
  const factory EmailResendData({
    /// メールアドレス
    @Default('') String email,
  }) = _EmailResendData;
}

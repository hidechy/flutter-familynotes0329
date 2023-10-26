import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class PasswordResetState with _$PasswordResetState {
  const factory PasswordResetState({
    @Default('') String email,
    @Default(false) bool saving,
  }) = _PasswordResetState;
}

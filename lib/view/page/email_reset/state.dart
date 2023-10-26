import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class EmailResetState with _$EmailResetState {
  const factory EmailResetState({
    @Default('') String email,
    @Default(false) bool saving,
  }) = _EmailResetState;
}

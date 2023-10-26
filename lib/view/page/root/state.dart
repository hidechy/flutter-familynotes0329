import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class RootState with _$RootState {
  const factory RootState({
    /// 通信中
    @Default(false) bool loading,
  }) = _RootState;
}

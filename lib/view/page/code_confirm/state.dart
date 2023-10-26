import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class CodeConfirmState with _$CodeConfirmState {
  const factory CodeConfirmState({
    @Default(CodeConfirmData()) CodeConfirmData inputData,
    @Default(false) bool saving,
  }) = _CodeConfirmState;
}

/// 入力中データ
@freezed
class CodeConfirmData with _$CodeConfirmData {
  const factory CodeConfirmData({
    /// 認証コード
    @Default('') String authCode,
  }) = _CodeConfirmData;
}

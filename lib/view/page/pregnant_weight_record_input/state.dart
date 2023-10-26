import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class PregnantWeightRecordInputState with _$PregnantWeightRecordInputState {
  const factory PregnantWeightRecordInputState({
    @Default(PregnantWeightInputData()) PregnantWeightInputData inputData,
    @Default(false) bool saving,
  }) = _PregnantWeightRecordInputState;
}

/// 入力中データ
@freezed
class PregnantWeightInputData with _$PregnantWeightInputData {
  const factory PregnantWeightInputData({
    /// 日付
    DateTime? date,

    /// 体重
    String? weight,
  }) = _PregnantWeightInputData;
}

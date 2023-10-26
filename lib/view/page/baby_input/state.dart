import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'state.freezed.dart';

@freezed
class BabyInputState with _$BabyInputState {
  const factory BabyInputState({
    @Default(BabyInputData()) BabyInputData inputData,

    // 名前、出産予定日のバリデーション用
    FormControl<String>? nameController,
    FormControl<String>? scheduledBirthdayController,
  }) = _BabyInputState;
}

/// 入力中データ
@freezed
class BabyInputData with _$BabyInputData {
  const factory BabyInputData({
    /// 名前（ニックネーム）
    @Default('') String name,

    /// 出産予定日
    DateTime? scheduledBirthday,
  }) = _BabyInputData;
}

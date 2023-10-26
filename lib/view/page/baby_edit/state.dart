import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'state.freezed.dart';

@freezed
class BabyEditState with _$BabyEditState {
  const factory BabyEditState({
    @Default(BabyEditData()) BabyEditData inputData,

    // 名前、出産予定日のバリデーション用
    FormControl<String>? nameController,
    FormControl<String>? scheduledBirthdayController,
  }) = _BabyEditState;
}

/// 入力中データ
@freezed
class BabyEditData with _$BabyEditData {
  const factory BabyEditData({
    /// 名前（ニックネーム）
    @Default('') String name,

    /// 出産予定日
    DateTime? scheduledBirthday,
  }) = _BabyEditData;
}

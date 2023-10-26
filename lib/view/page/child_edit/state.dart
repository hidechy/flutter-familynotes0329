import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../type/gender.dart';

part 'state.freezed.dart';

@freezed
class ChildEditState with _$ChildEditState {
  const factory ChildEditState({
    @Default(ChildEditData()) ChildEditData inputData,
    @Default(false) bool saving,
    @Default(false) bool isShowGenderValidateMessage,

    // 名前、性別、生年月日のバリデーション用
    FormControl<String>? nameController,
    FormControl<Gender?>? genderController,
    FormControl<String>? birthdayController,
  }) = _ChildEditState;
}

/// 入力中データ
@freezed
class ChildEditData with _$ChildEditData {
  const factory ChildEditData({
    /// 名前（ニックネーム）
    @Default('') String name,

    /// 性別
    Gender? gender,

    /// 出産予定日
    DateTime? birthday,
  }) = _ChildEditData;
}

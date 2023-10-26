import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../type/gender.dart';

part 'state.freezed.dart';

@freezed
class ChildInputState with _$ChildInputState {
  const factory ChildInputState({
    @Default(ChildInputData()) ChildInputData inputData,

    /// 性別のバリデーションメッセージ表示に必要なため
    @Default(false) bool isShowGenderValidateMessage,

    // 名前、性別、生年月日のバリデーション用
    FormControl<String>? nameController,
    FormControl<Gender?>? genderController,
    FormControl<String>? birthdayController,
  }) = _ChildInputState;
}

/// 入力中データ
@freezed
class ChildInputData with _$ChildInputData {
  const factory ChildInputData({
    /// 名前（ニックネーム）
    @Default('') String name,

    /// 性別
    Gender? gender,

    /// 出産予定日
    DateTime? birthday,
  }) = _ChildInputData;
}

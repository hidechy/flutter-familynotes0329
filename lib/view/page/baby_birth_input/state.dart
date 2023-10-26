import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../type/gender.dart';

part 'state.freezed.dart';

@freezed
class BabyBirthInputState with _$BabyBirthInputState {
  const factory BabyBirthInputState.loading() = BabyBirthInputStateLoading;

  const factory BabyBirthInputState.loaded({
    BabyBirthInputData? inputData,
    @Default(false) bool saving,

    /// 登録ボタンが押下されたタイミングで、性別のバリデーションが引っかかっていた場合のメッセージ表示に必要なため
    @Default(false) bool isShowGenderValidateMessage,

    /// birthTile も含めたvalidation用
    required FormGroup form,

    /// 妊娠期間（週）
    FormControl<String>? weekController,

    /// 妊娠期間（日）
    FormControl<String>? dayController,

    /// パパ、ママの気持ち入力コントローラー
    TextEditingController? parentFeelingController,

    /// 赤ちゃんへのメッセージ入力コントローラー
    TextEditingController? messageController,

    /// コメント入力コントローラー
    TextEditingController? freeCommentController,
  }) = BabyBirthInputStateLoaded;
}

@freezed
class BabyBirthInputData with _$BabyBirthInputData {
  /// 出生時情報の入力データ
  const factory BabyBirthInputData({
    /// 子ども毎の出生情報
    @Default([]) List<BabyBirthDataByChild> childList,

    /// 妊娠期間（週）
    @Default('') String pregnancyWeeks,

    /// 妊娠期間（日）
    @Default('') String pregnancyDays,

    /// 生まれた場所
    @Default('') String address,

    /// 医師または助産師
    @Default('') String doctor,

    /// パパ、ママの気持ち
    @Default('') String parentFeeling,

    /// 赤ちゃんへのメッセージ
    @Default('') String message,

    /// 自由にコメントを残してください
    @Default('') String freeComment,
  }) = _BabyBirthInputData;
}

@freezed
class BabyBirthDataByChild with _$BabyBirthDataByChild {
  /// 子ども毎の出生情報
  const factory BabyBirthDataByChild({
    required int index,

    /// 名前(ニックネーム)
    @Default('') String name,

    /// 出産日
    DateTime? birthday,

    /// 出産時刻
    TimeOfDay? birthdayTime,

    /// 性別
    Gender? gender,

    /// 身長
    @Default('') String height,

    /// 体重
    @Default('') String weight,

    /// 頭囲
    @Default('') String head,

    /// 胸囲
    @Default('') String chest,
  }) = _BabyBirthDataByChild;
}

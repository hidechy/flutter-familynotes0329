import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../data/model/child_checkup_types/model.dart';
import 'type.dart';

part 'state.freezed.dart';

@freezed
class ChildHealthCheckInputState with _$ChildHealthCheckInputState {
  const factory ChildHealthCheckInputState.loading() =
      ChildHealthCheckInputLoading;

  const factory ChildHealthCheckInputState.loaded({
    @Default(ChildHealthCheckInputData()) ChildHealthCheckInputData inputData,
    @Default(false) bool saving,

    // 各フィールドのバリデーションのためのコントローラー
    FormControl<String>? dateController,
    FormControl<String>? heightController,
    FormControl<String>? weightController,
    FormControl<String>? headController,
    FormControl<String>? chestController,
    FormControl<String>? countTeethController,
    FormControl<String>? countBadTeethController,
    FormControl<String>? countBadBabyTeethController,
    FormControl<String>? countBadAdultTeethController,

    /// メモのコントローラー
    TextEditingController? memoController,

    // 体重の単位を決める型
    required WeightUnitType weightUnitType,

    //生年月日からの経過日数
    required String childBirthCountDays,
  }) = ChildHealthCheckInputLoaded;
}

@freezed
class ChildHealthCheckInputData with _$ChildHealthCheckInputData {
  const factory ChildHealthCheckInputData({
    // レコードid
    int? recordId,

    /// 選択された乳幼児健診のタイプ
    ChildCheckupType? selectedType,

    /// 健診日
    DateTime? checkedDate,

    /// 身長
    @Default('') String height,

    /// 体重
    @Default('') String weight,

    /// 頭囲
    @Default('') String head,

    /// 胸囲
    @Default('') String chest,

    /// 要治療のむし歯
    @Default(false) bool needDentalTreatment,

    /// 要治療のむし歯の本数
    @Default('') String countBadTeeth,

    /// 歯の本数
    @Default('') String countTeeth,

    /// 要治療の乳歯の本数（６歳臼歯健康診査のみ）
    @Default('') String countBadBabyTeeth,

    /// 要治療の永久歯の本数（６歳臼歯健康診査のみ）
    @Default('') String countBadAdultTeeth,

    /// 健診結果
    ChildCheckUpResultType? result,

    /// メモ
    @Default('') String note,
  }) = _ChildHealthCheckInputData;
}

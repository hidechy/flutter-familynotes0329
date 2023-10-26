import 'package:family_notes/data/model/pregnant_dental_check_record_detail/model.dart';
import 'package:family_notes/view/page/pregnant_dental_check_input/status.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../extension/string.dart';
import 'type.dart';

part 'state.freezed.dart';

@freezed
class PregnantDentalCheckInputState with _$PregnantDentalCheckInputState {
  const factory PregnantDentalCheckInputState.loading() =
      PregnantDentalCheckInputLoading;

  const factory PregnantDentalCheckInputState.loaded({
    @Default(PregnantDentalCheckInputData())
        PregnantDentalCheckInputData inputData,
    FormControl<String>? dateController,
    FormControl<String>? weekController,
  }) = PregnantDentalCheckInputLoaded;
}

// 入力する健診データ
@freezed
class PregnantDentalCheckInputData with _$PregnantDentalCheckInputData {
  const factory PregnantDentalCheckInputData({
    /// 妊婦産後歯科健診記録id
    int? motherDentalCheckupRecordId,

    /// 健診日
    DateTime? date,

    /// 妊娠週数
    String? week,

    /// 産後
    @Default(false) bool isAfterBirth,

    /// 健診結果
    @Default(PregnantDentalCheckInputListItemType.noProblem)
        PregnantDentalCheckInputListItemType type,

    /// メモ
    String? memo,

    /// メモ入力コントローラー
    TextEditingController? memoController,
  }) = _PregnantDentalCheckInputData;

  factory PregnantDentalCheckInputData.fromModel(
    PregnantDentalCheckRecordDetailModel model,
  ) {
    final checkupDay = model.checkupDay.toDateTime(
      DateFormatType.yyyymmddLine,
    );
    final week =
        model.gestationalWeek == null ? '' : model.gestationalWeek.toString();
    final isAfterBirth = BirthStatus.after.apiValue == model.isChildBirth;
    final type = _getListItemType(model);

    return PregnantDentalCheckInputData(
      motherDentalCheckupRecordId: model.motherDentalCheckupRecordId,
      date: checkupDay,
      week: week,
      isAfterBirth: isAfterBirth,
      type: type,
      memo: model.note,
      memoController: TextEditingController(text: model.note),
    );
  }
}

/// 画面表示のため健診結果種類の取得
PregnantDentalCheckInputListItemType _getListItemType(
  PregnantDentalCheckRecordDetailModel model,
) {
  if (ProbremStatus.yes.apiValue == model.isNormal) {
    return PregnantDentalCheckInputListItemType.noProblem;
  }

  if (NeededGuidanceStatus.yes.apiValue == model.isTbi) {
    return PregnantDentalCheckInputListItemType.neededGuidance;
  }

  return PregnantDentalCheckInputListItemType.neededTreatment;
}

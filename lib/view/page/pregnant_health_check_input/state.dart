import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class PregnantHealthCheckInputState with _$PregnantHealthCheckInputState {
  const factory PregnantHealthCheckInputState({
    @Default(PregnantHealthCheckInputData())
        PregnantHealthCheckInputData inputData,
  }) = _PregnantHealthCheckInputState;
}

// 入力する健診データ
@freezed
class PregnantHealthCheckInputData with _$PregnantHealthCheckInputData {
  const factory PregnantHealthCheckInputData({
    /// 健診日
    DateTime? date,

    /// 妊娠週数-週数
    @Default('') String week,

    /// 妊娠週数-日
    @Default('') String day,

    /// 体重
    @Default('') String weight,

    /// 健診結果
    @Default({}) Map<PregnantHealthCheckInputListItemType, bool> selectedItem,

    /// メモ
    @Default('') String memo,

    /// メモ入力コントローラー
    TextEditingController? memoController,
  }) = _PregnantHealthCheckInputData;
}

enum PregnantHealthCheckInputListItemType {
  /// 異常なし
  noProblem,

  /// 切迫流産
  threatenedMiscarriage,

  /// 妊娠高血圧症候群
  hyperTensionSyndrome,

  /// 妊娠糖尿病
  gestationalDiabetes,

  /// 貧血
  anemia,

  /// その他の疾患
  others,
}

extension PregnantHealthCheckInputListItemTypeEx
    on PregnantHealthCheckInputListItemType {
  String get label {
    switch (this) {
      case PregnantHealthCheckInputListItemType.noProblem:
        return '異常を認めず';
      case PregnantHealthCheckInputListItemType.threatenedMiscarriage:
        return '切迫流産あるいはその疑い';
      case PregnantHealthCheckInputListItemType.hyperTensionSyndrome:
        return '妊娠高血圧症候群あるいはその疑い';
      case PregnantHealthCheckInputListItemType.gestationalDiabetes:
        return '妊娠糖尿病あるいはその疑い';
      case PregnantHealthCheckInputListItemType.anemia:
        return '貧血あるいはその疑い';
      case PregnantHealthCheckInputListItemType.others:
        return 'その他の疾患';
    }
  }
}

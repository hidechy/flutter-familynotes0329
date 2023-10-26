import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/child_checkup_list/model.dart';
import '../../../data/model/child_checkup_types/model.dart';
import '../child_health_check_input/state.dart';

part 'state.freezed.dart';

@freezed
class ChildHealthCheckSelectState with _$ChildHealthCheckSelectState {
  const factory ChildHealthCheckSelectState({
    // 乳幼児健診マスタ（健診一覧、入力画面のタイトルで使う）
    @Default(ChildCheckupTypesModel(list: []))
        ChildCheckupTypesModel childCheckupTypes,

    // 健診履歴データ
    @Default(ChildCheckupListModel(list: []))
        ChildCheckupListModel checkupHistory,

    // 選択した健診の種類を格納して入力画面へ渡す
    @Default(ChildHealthCheckInputData()) ChildHealthCheckInputData inputData,

    // 健診一覧の表示の制御
    @Default(false) bool showHealthCheckList,

    // ローディング
  }) = _ChildHealthCheckSelectState;
}

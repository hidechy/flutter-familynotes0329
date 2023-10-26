import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class VaccineDoneInputState with _$VaccineDoneInputState {
  const factory VaccineDoneInputState({
    VaccineDoneInputDate? inputDate,
    @Default(false) bool saving,
    @Default(-1) int expandedNum,
  }) = _VaccineDoneInputState;
}

/// 入力中データ
@freezed
class VaccineDoneInputDate with _$VaccineDoneInputDate {
  const factory VaccineDoneInputDate({
    /// 実施日
    @Default([]) List<String> dateList,

    /// 種類(pullDown select data)
    @Default([]) List<String> selectItemList,
  }) = _VaccineDoneInputDate;
}

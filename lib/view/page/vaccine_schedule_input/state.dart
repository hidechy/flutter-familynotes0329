import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class VaccineScheduleInputState with _$VaccineScheduleInputState {
  const factory VaccineScheduleInputState({
    VaccineScheduleInputDate? inputDate,
  }) = _VaccineScheduleInputState;
}

/// 入力中データ
@freezed
class VaccineScheduleInputDate with _$VaccineScheduleInputDate {
  const factory VaccineScheduleInputDate({
    /// 予定日
    @Default([]) List<String> dateList,
  }) = _VaccineScheduleInputDate;
}

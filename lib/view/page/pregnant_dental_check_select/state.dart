import 'package:family_notes/data/model/pregnant_dental_check_record_list/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../extension/string.dart';

part 'state.freezed.dart';

@freezed
class PregnantDentalCheckSelectState with _$PregnantDentalCheckSelectState {
  /// ローディング
  const factory PregnantDentalCheckSelectState.loading() =
      PregnantDentalCheckSelectStateLoading;

  /// ローディング完了
  const factory PregnantDentalCheckSelectState.loaded({
    required List<PregnantDentalCheckRecordState> list,
  }) = PregnantDentalCheckSelectStateLoaded;
}

@freezed
class PregnantDentalCheckRecordState with _$PregnantDentalCheckRecordState {
  const factory PregnantDentalCheckRecordState({
    required int motherDentalCheckupRecordId,
    required int childId,
    required DateTime checkupDay,
  }) = _PregnantDentalCheckRecordState;

  factory PregnantDentalCheckRecordState.fromModel(
    PregnantDentalCheckRecordModel model,
  ) {
    final checkupDay = model.checkupDay.toDateTime(
      DateFormatType.yyyymmddLine,
    );
    return PregnantDentalCheckRecordState(
      motherDentalCheckupRecordId: model.motherDentalCheckupRecordId,
      childId: model.childId,
      checkupDay: checkupDay,
    );
  }
}

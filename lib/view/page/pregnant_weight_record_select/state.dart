import 'package:freezed_annotation/freezed_annotation.dart';

import '/data/model/pregnant_weight_record_list/model.dart';

part 'state.freezed.dart';

@freezed
class PregnantWeightRecordSelectState with _$PregnantWeightRecordSelectState {
  const factory PregnantWeightRecordSelectState({
    @Default(PregnantWeightRecordListModel(list: []))
        PregnantWeightRecordListModel recordList,
  }) = _PregnantWeightRecordSelectState;
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '/data/model/child_growth_record_list/model.dart';

part 'state.freezed.dart';

@freezed
class ChildGrowthRecordSelectState with _$ChildGrowthRecordSelectState {
  const factory ChildGrowthRecordSelectState({
    @Default(ChildGrowthRecordListModel(list: []))
        ChildGrowthRecordListModel recordList,
  }) = _ChildGrowthRecordSelectState;
}

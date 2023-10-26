import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/checkup_list/model.dart';

part 'state.freezed.dart';

@freezed
class PregnantHealthCheckSelectState with _$PregnantHealthCheckSelectState {
  const factory PregnantHealthCheckSelectState({
    @Default(CheckupListModel(list: [])) CheckupListModel checkupList,
  }) = _PregnantHealthCheckSelectState;
}

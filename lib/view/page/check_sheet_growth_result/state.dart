import 'package:freezed_annotation/freezed_annotation.dart';

import 'type.dart';

part 'state.freezed.dart';

@freezed
class CheckSheetGrowthResultState with _$CheckSheetGrowthResultState {
  const factory CheckSheetGrowthResultState({
    required GrowthQuestionAnswerResultType resultType,
  }) = _CheckSheetGrowthResultState;
}

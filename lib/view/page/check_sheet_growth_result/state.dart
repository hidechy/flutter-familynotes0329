import 'package:family_notes/view/page/check_sheet_growth_result/type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class CheckSheetGrowthResultState with _$CheckSheetGrowthResultState {
  const factory CheckSheetGrowthResultState({
    required GrowthQuestionAnswerResultType resultType,
  }) = _CheckSheetGrowthResultState;
}

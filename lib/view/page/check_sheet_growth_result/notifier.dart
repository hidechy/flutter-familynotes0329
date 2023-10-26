import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'state.dart';
import 'type.dart';

final checkSheetGrowthResultProvider =
    StateNotifierProvider.family<CheckSheetGrowthResultNotifier, CheckSheetGrowthResultState, int>((ref, answerResult) {
  return CheckSheetGrowthResultNotifier(answerResult: answerResult);
});

class CheckSheetGrowthResultNotifier extends StateNotifier<CheckSheetGrowthResultState> {
  CheckSheetGrowthResultNotifier({required int answerResult})
      : super(
          const CheckSheetGrowthResultState(
            resultType: GrowthQuestionAnswerResultType.maternalAndChildProtectionDivision,
          ),
        ) {
    _setUp(answerResult);
  }

  void _setUp(int answerResult) {
    final resultType = GrowthQuestionAnswerResultType.values.firstWhere((element) => element.value == answerResult);
    state = state.copyWith(resultType: resultType);
  }
}

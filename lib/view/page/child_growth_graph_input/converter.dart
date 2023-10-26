import '../../../data/request/child_growth_record_save/request.dart';
import 'state.dart';

class ChildGrowthRecordSaveRequestConverter {
  ChildGrowthRecordSaveRequestConverter._();

  static ChildGrowthRecordSaveRequest convertFrom({
    required int? recordId,
    required int childId,
    required ChildGrowthInputData inputData,
  }) {
    return ChildGrowthRecordSaveRequest(
      recordId: recordId,
      childId: childId,
      date: inputData.date.toString(),
      height:
          inputData.height == null ? null : double.tryParse(inputData.height!),
      weight:
          inputData.grams == null ? null : double.tryParse(inputData.grams!),
      head: inputData.head == null ? null : double.tryParse(inputData.head!),
      chest: inputData.chest == null ? null : double.tryParse(inputData.chest!),
    );
  }
}

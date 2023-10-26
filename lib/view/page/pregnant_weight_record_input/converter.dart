import '/data/request/pregnant_weight_record_save/request.dart';
import '../../../extension/string.dart';
import 'state.dart';

class PregnantWeightRecordSaveRequestConverter {
  PregnantWeightRecordSaveRequestConverter._();

  static PregnantWeightRecordSaveRequest convertFrom({
    required int? recordId,
    required int childId,
    required PregnantWeightInputData inputData,
  }) {
    return PregnantWeightRecordSaveRequest(
      recordId: recordId,
      childId: childId,
      date: inputData.date.toString(),
      weight: double.parse(inputData.weight!.toGram()),
    );
  }
}

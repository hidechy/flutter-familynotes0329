import '../../../data/request/checkup_record_save/request.dart';
import '../../../extension/string.dart';
import 'state.dart';

class CheckupRecordSaveRequestConverter {
  CheckupRecordSaveRequestConverter._();

  static CheckupRecordSaveRequest convertFrom({
    required int? checkupId,
    required int childId,
    required PregnantHealthCheckInputData inputData,
  }) {
    return CheckupRecordSaveRequest(
      checkupId: checkupId,
      childId: childId,
      checkupDay: inputData.date!.toString(),
      gestationalWeek: inputData.week.isEmpty ? null : int.parse(inputData.week),
      gestationalWeekDay: inputData.day.isEmpty ? null : int.parse(inputData.day),
      weight: inputData.weight.isEmpty ? null : double.parse(inputData.weight.toGram()),
      isNormal: inputData.selectedItem[PregnantHealthCheckInputListItemType.noProblem] == true ? '1' : '0',
      isTa: inputData.selectedItem[PregnantHealthCheckInputListItemType.threatenedMiscarriage] == true ? '1' : '0',
      isPih: inputData.selectedItem[PregnantHealthCheckInputListItemType.hyperTensionSyndrome] == true ? '1' : '0',
      isGdm: inputData.selectedItem[PregnantHealthCheckInputListItemType.gestationalDiabetes] == true ? '1' : '0',
      isAnemia: inputData.selectedItem[PregnantHealthCheckInputListItemType.anemia] == true ? '1' : '0',
      isOtherDisease: inputData.selectedItem[PregnantHealthCheckInputListItemType.others] == true ? '1' : '0',
      note: inputData.memo,
    );
  }
}

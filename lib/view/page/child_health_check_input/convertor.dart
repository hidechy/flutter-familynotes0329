import 'package:family_notes/extension/string.dart';

import '../../../data/request/child_checkup_record_save/request.dart';
import 'state.dart';
import 'type.dart';

class ChildCheckUpRequestConverter {
  ChildCheckUpRequestConverter._();

  static ChildCheckupRecordSaveRequest convertFrom({
    required ChildHealthCheckInputData inputData,
    required WeightUnitType weightUnitType,
    required int childId,
  }) {
    final isUnitGram = weightUnitType == WeightUnitType.gram;
    return ChildCheckupRecordSaveRequest(
      recordId: inputData.recordId,
      childId: childId,
      childCheckupTypeId: inputData.selectedType!.childCheckupTypeId!,
      checkupDay: inputData.checkedDate!.toString(),
      height: double.tryParse(inputData.height),
      weight: isUnitGram
          ? int.tryParse(inputData.weight)
          : int.tryParse(inputData.weight.toGram()),
      head: double.tryParse(inputData.head),
      chest: double.tryParse(inputData.chest),
      isNormal:
          inputData.result == ChildCheckUpResultType.noProblem ? '1' : '0',
      isObservation:
          inputData.result == ChildCheckUpResultType.followUp ? '1' : '0',
      isDetailedExamination:
          inputData.result == ChildCheckUpResultType.detailedExamination
              ? '1'
              : '0',
      isTreatment:
          inputData.result == ChildCheckUpResultType.needTreatment ? '1' : '0',
      teethNum: int.tryParse(inputData.countTeeth),
      isBadTooth: inputData.needDentalTreatment ? '1' : '0',
      badToothNum: int.tryParse(inputData.countBadTeeth),
      babyBadToothNum: int.tryParse(inputData.countBadBabyTeeth),
      adultBadToothNum: int.tryParse(inputData.countBadAdultTeeth),
      note: inputData.note,
    );
  }
}

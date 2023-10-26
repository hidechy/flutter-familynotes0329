import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../data/model/response/model.dart';
import '../../../data/repository/child_checkup.dart';
import '../../../extension/date_time.dart';
import '../../../extension/string.dart';
import '../../../provider/child/notifier.dart';
import '../../../provider/child/state.dart';
import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/validation.dart';
import '../../style/texts.dart';
import '../child_health_check_select/notifier.dart';
import 'child_age_calculation.dart';
import 'convertor.dart';
import 'state.dart';
import 'type.dart';

final childHealthCheckInputProvider = AutoDisposeStateNotifierProvider<
    ChildHealthCheckInputNotifier, ChildHealthCheckInputState>((ref) {
  final child = ref
      .read(selectedChildStateProvider)
      .mapOrNull(loaded: (value) => value.child);
  final childBirthday = child!.mapOrNull(child: (value) => value.data.birthday);

  return ChildHealthCheckInputNotifier(
    ref: ref,
    repository: ref.read(childCheckUpRepositoryProvider),
    childState: ref.watch(selectedChildStateProvider),
    childBirthday: childBirthday ?? '',
  );
});

class ChildHealthCheckInputNotifier
    extends StateNotifier<ChildHealthCheckInputState> {
  ChildHealthCheckInputNotifier({
    required this.ref,
    required this.repository,
    required this.childState,
    required this.childBirthday,
  }) : super(const ChildHealthCheckInputLoading());

  final AutoDisposeStateNotifierProviderRef ref;
  final ChildCheckUpRepository repository;
  final SelectedChildState childState;
  final String childBirthday;

  void setup(ChildHealthCheckInputData inputData) {
    final _checkedDate = inputData.checkedDate;
    final weightUnitType =
        WeightUnitType.getUnitType(type: inputData.selectedType!);
    final weight = WeightUnitType.isGram(weightUnitType)
        ? inputData.weight
        : inputData.weight.toKiloGram();
    final _dateController = getController(
      type: ValidateTextFieldType.date,
      value: _checkedDate == null ? '' : _checkedDate.yyyymmdd,
    );
    final _heightController = getController(
      type: ValidateTextFieldType.height,
      isRequired: false,
      value: inputData.height,
      validator: NumValidationType.height.numValid,
    );
    final _weightController = WeightUnitType.isGram(weightUnitType)
        ? getController(
            type: ValidateTextFieldType.childGramsWeight,
            isRequired: false,
            value: weight,
            validator: NumValidationType.grams.gramsValid,
          )
        : getController(
            type: ValidateTextFieldType.childKilogramsWeight,
            isRequired: false,
            value: weight,
            validator: NumValidationType.kilograms.numValid,
          );

    final _headController = getController(
      type: ValidateTextFieldType.head,
      isRequired: false,
      value: inputData.head,
      validator: NumValidationType.head.numValid,
    );
    final _chestController = getController(
      type: ValidateTextFieldType.chest,
      isRequired: false,
      value: inputData.chest,
      validator: NumValidationType.chest.numValid,
    );
    final _countTeethController = getController(
      type: ValidateTextFieldType.countTeeth,
      isRequired: false,
      value: inputData.countTeeth,
      validator: NumValidationType.countTeeth.numValid,
    );
    final _countBadTeethController = getController(
      type: ValidateTextFieldType.countBadTeeth,
      isRequired: false,
      value: inputData.countBadTeeth,
      validator: NumValidationType.countBadTeeth.numValid,
    );
    final _countBadBabyTeethController = getController(
      type: ValidateTextFieldType.countBadBabyTeeth,
      isRequired: false,
      value: inputData.countBadBabyTeeth,
      validator: NumValidationType.countBadBabyTeeth.numValid,
    );
    final _countBadAdultTeethController = getController(
      type: ValidateTextFieldType.countBadAdultTeeth,
      isRequired: false,
      value: inputData.countBadAdultTeeth,
      validator: NumValidationType.countBadAdultTeeth.numValid,
    );

    state = ChildHealthCheckInputState.loaded(
      inputData: inputData.copyWith(weight: weight),
      dateController: _dateController,
      heightController: _heightController,
      weightController: _weightController,
      headController: _headController,
      chestController: _chestController,
      countTeethController: _countTeethController,
      countBadTeethController: _countBadTeethController,
      countBadBabyTeethController: _countBadBabyTeethController,
      countBadAdultTeethController: _countBadAdultTeethController,
      memoController: TextEditingController(
        text: inputData.note,
      ),
      weightUnitType: weightUnitType,
      childBirthCountDays: childBirthday.isEmpty
          ? ''
          : ChildAgeCalculation.from(
              DateTime.parse(childBirthday),
              today: DateTime.now(),
            ).toString(),
    );
  }

  FormGroup get form {
    return FormGroup({
      ValidateTextFieldName.checkUpDate.name: loadedState.dateController!,
      ValidateTextFieldName.bodyHieght.name: loadedState.heightController!,
      ValidateTextFieldName.bodyWeight.name: loadedState.weightController!,
      ValidateTextFieldName.headSize.name: loadedState.headController!,
      ValidateTextFieldName.chestSize.name: loadedState.chestController!,
      ValidateTextFieldName.countTeeth.name: loadedState.countTeethController!,
      ValidateTextFieldName.coutnBadTeeth.name:
          loadedState.countBadTeethController!,
      ValidateTextFieldName.countBadBabyTeeth.name:
          loadedState.countBadBabyTeethController!,
      ValidateTextFieldName.countBadAdultTeeth.name:
          loadedState.countBadAdultTeethController!,
    });
  }

  // 登録
  Future<void> onTapRegister({
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) async {
    if (loadedState.saving) {
      return;
    }

    final request = ChildCheckUpRequestConverter.convertFrom(
      inputData: loadedState.inputData,
      weightUnitType: loadedState.weightUnitType,
      childId: loadedChildState.childId,
    );

    state = loadedState.copyWith(saving: true);

    await repository.saveChildCheckup(request: request).then(
      (response) async {
        state = loadedState.copyWith(saving: false);

        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? IHSTexts.error);
          return;
        }

        // 履歴一覧の更新
        await ref
            .read(childHealthCheckSelectProvider.notifier)
            .fetchCheckUpHistory();
        onSuccess();
      },
    ).catchError(
      (error, _) {
        state = loadedState.copyWith(saving: false);
        onFailure('');
      },
    );
  }

  // 削除
  Future<void> onTapDelete({
    required int childCheckupRecordId,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) async {
    if (loadedState.saving) {
      return;
    }

    state = loadedState.copyWith(saving: true);

    await repository
        .deleteChildCheckup(childCheckupRecordId: childCheckupRecordId)
        .then(
      (response) async {
        state = loadedState.copyWith(saving: false);

        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? IHSTexts.error);
          return;
        }

        // 履歴一覧の更新
        await ref
            .read(childHealthCheckSelectProvider.notifier)
            .fetchCheckUpHistory();
        onSuccess();
      },
    ).catchError(
      (error, _) {
        state = loadedState.copyWith(saving: false);
        onFailure('');
      },
    );
  }

  void onChangedCheckedDate(DateTime? date) {
    loadedState.dateController!.updateValue(date?.yyyymmdd);
    state = loadedState.copyWith(
        inputData: loadedState.inputData.copyWith(
      checkedDate: date,
    ));
  }

  void onChangedHeight(String height) {
    state = loadedState.copyWith(
        inputData: loadedState.inputData.copyWith(
      height: height,
    ));
  }

  void onChangedWeight(String weight) {
    state = loadedState.copyWith(
        inputData: loadedState.inputData.copyWith(
      weight: weight,
    ));
  }

  void onChangedHead(String head) {
    state = loadedState.copyWith(
        inputData: loadedState.inputData.copyWith(
      head: head,
    ));
  }

  void onChangedChest(String chest) {
    state = loadedState.copyWith(
        inputData: loadedState.inputData.copyWith(
      chest: chest,
    ));
  }

  void setNeedDentalTreatment({required bool value}) {
    state = loadedState.copyWith(
        inputData: loadedState.inputData.copyWith(
      needDentalTreatment: value,
    ));
  }

  void onChangedCountTeeth(String count) {
    state = loadedState.copyWith(
        inputData: loadedState.inputData.copyWith(
      countTeeth: count,
    ));
  }

  void onChangedCountBadTeeth(String count) {
    state = loadedState.copyWith(
        inputData: loadedState.inputData.copyWith(
      countBadTeeth: count,
    ));
  }

  void onChangedCountBadBabyTeeth(String count) {
    state = loadedState.copyWith(
        inputData: loadedState.inputData.copyWith(
      countBadBabyTeeth: count,
    ));
  }

  void onChangedCountBadAdultTeeth(String count) {
    state = loadedState.copyWith(
        inputData: loadedState.inputData.copyWith(
      countBadAdultTeeth: count,
    ));
  }

  void selectCheckResult(ChildCheckUpResultType? result) {
    state = loadedState.copyWith(
        inputData: loadedState.inputData.copyWith(
      result: result,
    ));
  }

  void onChangedNote(String note) {
    state = loadedState.copyWith(
        inputData: loadedState.inputData.copyWith(
      note: note,
    ));
  }

  ChildHealthCheckInputLoaded get loadedState =>
      state as ChildHealthCheckInputLoaded;

  SelectedChildStateLoaded get loadedChildState =>
      childState as SelectedChildStateLoaded;

  void badTeethSetBlank() {
    state = loadedState.copyWith(
        inputData: loadedState.inputData.copyWith(
      countBadTeeth: '',
      countBadBabyTeeth: '',
      countBadAdultTeeth: '',
    ));
  }
}

enum ValidateTextFieldName {
  // 健診日
  checkUpDate,
  // 身長
  bodyHieght,
  // 体重
  bodyWeight,
  // 頭囲
  headSize,
  // 胸囲
  chestSize,
  // 歯の本数
  countTeeth,
  // 虫歯の数
  coutnBadTeeth,
  // 虫歯の乳歯の数
  countBadBabyTeeth,
  // 虫歯の永久歯の数
  countBadAdultTeeth,
}

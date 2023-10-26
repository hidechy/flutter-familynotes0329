import 'package:family_notes/extension/date_time.dart';
import 'package:family_notes/view/component/validate_text_field/type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../data/model/child_growth_record_list/model.dart';
import '../../../data/model/response/model.dart';
import '../../../data/repository/child_growth_record.dart';
import '../../../extension/string.dart';
import '../../../provider/child/notifier.dart';
import '../../../util/util.dart';
import '../../component/validate_text_field/validation.dart';
import '../../style/texts.dart';
import '../child_growth_record_select/notifier.dart';
import 'converter.dart';
import 'state.dart';

/// 身体発育曲線の入力の状態を管理するプロバイダー
final childWeightGraphInputStateProvider =
    AutoDisposeStateNotifierProvider.family<ChildGrowthGraphInputNotifier,
        ChildGrowthGraphInputState, ChildGrowthRecord?>((ref, record) {
  return ChildGrowthGraphInputNotifier(
    record: record,
    ref: ref,
    repository: ref.watch(childGrowthRecordRepositoryProvider),
  );
});

class ChildGrowthGraphInputNotifier
    extends StateNotifier<ChildGrowthGraphInputState> {
  ChildGrowthGraphInputNotifier({
    required ChildGrowthRecord? record,
    required this.ref,
    required this.repository,
  }) : super(
          ChildGrowthGraphInputState(
            form: FormGroup({}),
            dateController: FormControl(),
            heightController: FormControl(),
            gramsController: FormControl(),
            kilogramsController: FormControl(),
            headController: FormControl(),
            chestController: FormControl(),
          ),
        ) {
    _setup(record);
  }

  final AutoDisposeStateNotifierProviderRef ref;
  final ChildGrowthRecordRepository repository;
  final _oneYearOld = 1;

  void _setup(ChildGrowthRecord? record) {
    final childState = ref.read(selectedChildStateProvider);
    final childAge = (childState.mapOrNull(
              loaded: (state) => state.child.mapOrNull(
                child: (value) => value.data.monthFromBirth,
              ),
            ) ??
            0) ~/
        12;

    final initialWeightType =
        _oneYearOld > childAge ? WeightType.g : WeightType.kg;
    ChildGrowthInputData inputData;
    FormControl<String> dateController;
    FormControl<String> heightController;
    FormControl<String> gramsController;
    FormControl<String> kilogramsController;
    FormControl<String> headController;
    FormControl<String> chestController;

    if (record == null) {
      dateController = _setDateController(null);
      heightController = _setHeightController('');
      gramsController = _setGramsController('');
      kilogramsController = _setKilogramsController('');
      headController = _setHeadController('');
      chestController = _setChestController('');
      inputData = ChildGrowthInputData(weightType: initialWeightType);
    } else {
      final height = record.height != null ? record.height.toString() : '';
      final grams = record.weight != null && WeightType.g == initialWeightType
          ? record.weight.toString()
          : '';
      final kilograms =
          record.weight != null && WeightType.kg == initialWeightType
              ? record.weight.toString().toKiloGram()
              : '';
      final head = record.head != null ? record.head.toString() : '';
      final chest = record.chest != null ? record.chest.toString() : '';
      dateController = _setDateController(record.date);
      heightController = _setHeightController(height);
      gramsController = _setGramsController(grams);
      kilogramsController = _setKilogramsController(kilograms);
      headController = _setHeadController(head);
      chestController = _setChestController(chest);
      inputData = ChildGrowthInputData(
        date: record.date,
        height: height,
        grams: grams,
        kilograms: kilograms,
        head: head,
        chest: chest,
        weightType: initialWeightType,
      );
    }

    final form = _setFormGroup(
      weightType: initialWeightType,
      dateController: dateController,
      heightController: heightController,
      gramsController: gramsController,
      kilogramsController: kilogramsController,
      headController: headController,
      chestController: chestController,
    );
    state = state.copyWith(
      form: form,
      dateController: dateController,
      heightController: heightController,
      gramsController: gramsController,
      kilogramsController: kilogramsController,
      headController: headController,
      chestController: chestController,
      inputData: inputData,
    );
  }

  // 測定日
  void onChangedDateField(DateTime? date) {
    state.dateController.updateValue(date.getDateControllerText);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        date: date,
      ),
    );
  }

  // 身長
  void onChangedHeightField(String height) {
    state.heightController.updateValue(height);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        height: height,
      ),
    );
  }

  // 体重(g)
  void onChangedGramsField(String weight) {
    state.gramsController.updateValue(weight);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        grams: weight,
      ),
    );
  }

  // 体重(kg)
  void onChangedKilogramsField(String weight) {
    state.kilogramsController.updateValue(weight);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        kilograms: weight,
      ),
    );
  }

  // kg/g
  void onChangedWeightType(WeightType weightType) {
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        weightType: weightType,
      ),
    );
  }

  /// 体重(g)->体重(kg)への体重値変換
  void weightConvertFromGramsToKilograms() {
    final grams = state.inputData.grams;
    if (grams == null || grams.isEmpty || double.tryParse(grams) == null) {
      return;
    }

    final gramsDouble = double.parse(grams);
    // 体重(kg)に変換
    final weight = gramsDouble / 1000;
    final weightStr = weight.toString();
    state.kilogramsController.updateValue(weightStr);
    state = state.copyWith(
      inputData: state.inputData.copyWith(kilograms: weightStr),
    );
  }

  /// 体重(kg)->体重(g)への体重値変換
  void weightConvertFromKilogramsToGrams() {
    final kilograms = state.inputData.kilograms;
    if (kilograms == null ||
        kilograms.isEmpty ||
        double.tryParse(kilograms) == null) {
      return;
    }

    final kilogramsDouble = double.parse(kilograms);
    // 体重(g)に変換
    final weight = (kilogramsDouble * 1000).floor();
    final weightStr = weight.toString();
    state.gramsController.updateValue(weightStr);
    state = state.copyWith(
      inputData: state.inputData.copyWith(grams: weightStr),
    );
  }

  // 頭囲
  void onChangedHeadField(String head) {
    state.headController.updateValue(head);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        head: head,
      ),
    );
  }

  // 胸囲
  void onChangedChestField(String chest) {
    state.chestController.updateValue(chest);
    state = state.copyWith(
      inputData: state.inputData.copyWith(
        chest: chest,
      ),
    );
  }

  /// FormGroupの更新
  /// 体重の単位変更時、FormGroupに保持させる体重入力コントローラーを変更させるため
  void onChangedFormGroup(WeightType weightType) {
    state = state.copyWith(
      form: _setFormGroup(
        weightType: weightType,
        dateController: state.dateController,
        heightController: state.heightController,
        gramsController: state.gramsController,
        kilogramsController: state.kilogramsController,
        headController: state.headController,
        chestController: state.chestController,
      ),
    );
  }

  // 削除
  void onTapDelete({
    required int recordId,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    final childState = ref.read(selectedChildStateProvider);
    final childId = childState.mapOrNull(loaded: (state) => state.childId);
    if (childId == null) {
      _showError(IHSTexts.error);
      return;
    }

    repository.delete(childId: childId, recordId: recordId).then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? IHSTexts.error);
          return;
        }

        // 一覧の更新を依頼
        ref.read(childGrowthRecordSelectProvider.notifier).fetch();
        onSuccess();
      },
    ).catchError(
      (_) {
        onFailure('');
      },
    );
  }

  // 登録
  void onTapRegister({
    required int? recordId,
    required VoidCallback onSuccess,
    required Function(String) onFailure,
  }) {
    final childState = ref.read(selectedChildStateProvider);
    final childId = childState.mapOrNull(loaded: (state) => state.childId);

    if (childId == null) {
      _showError(IHSTexts.error);
      return;
    }

    final request = ChildGrowthRecordSaveRequestConverter.convertFrom(
      recordId: recordId,
      childId: childId,
      inputData: state.inputData,
    );

    repository.save(request: request).then(
      (response) {
        if (response.status == ResponseStatus.failure) {
          onFailure(response.msg ?? IHSTexts.error);
          return;
        }

        // 一覧の更新を依頼
        ref.read(childGrowthRecordSelectProvider.notifier).fetch();
        onSuccess();
      },
    ).catchError(
      (_) {
        onFailure('');
      },
    );
  }

  void _showError(String msg) {
    IHSUtil.showSnackBar(msg: msg);
  }

  /// 入力する値があるかのチェック
  bool registCheck() {
    final values = [
      state.inputData.height,
      state.inputData.grams,
      state.inputData.kilograms,
      state.inputData.head,
      state.inputData.chest
    ];
    for (var i = 0; i < values.length; i++) {
      final value = values[i];
      if (value != null && value.isNotEmpty) {
        return true;
      }
    }

    return false;
  }

  FormGroup _setFormGroup({
    required WeightType weightType,
    required FormControl<String> dateController,
    required FormControl<String> heightController,
    required FormControl<String> gramsController,
    required FormControl<String> kilogramsController,
    required FormControl<String> headController,
    required FormControl<String> chestController,
  }) {
    /// 保持している子どもの体重単位で適用させるバリデーション
    final validateWeightKey = WeightType.g == weightType
        ? ValidateTextFieldType.childGramsWeight.name
        : ValidateTextFieldType.childKilogramsWeight.name;

    /// 保持している子どもの体重単位で適用させる体重入力コントローラー
    final weightController =
        WeightType.g == weightType ? gramsController : kilogramsController;

    return FormGroup({
      ValidateTextFieldType.date.name: dateController,
      ValidateTextFieldType.height.name: heightController,
      ValidateTextFieldType.head.name: headController,
      ValidateTextFieldType.chest.name: chestController,
      validateWeightKey: weightController,
    });
  }

  FormControl<String> _setDateController(DateTime? value) {
    return getController(
      type: ValidateTextFieldType.date,
      value: value.getDateControllerText,
    );
  }

  FormControl<String> _setHeightController(String value) {
    return getController(
      type: ValidateTextFieldType.height,
      value: value,
      validator: NumValidationType.height.numValid,
    );
  }

  FormControl<String> _setGramsController(String value) {
    return getController(
      type: ValidateTextFieldType.childGramsWeight,
      value: value,
      validator: NumValidationType.grams.gramsValid,
    );
  }

  FormControl<String> _setKilogramsController(String value) {
    return getController(
      type: ValidateTextFieldType.childKilogramsWeight,
      value: value,
      validator: NumValidationType.kilograms.numValid,
    );
  }

  FormControl<String> _setHeadController(String value) {
    return getController(
      type: ValidateTextFieldType.head,
      value: value,
      validator: NumValidationType.head.numValid,
    );
  }

  FormControl<String> _setChestController(String value) {
    return getController(
      type: ValidateTextFieldType.chest,
      value: value,
      validator: NumValidationType.chest.numValid,
    );
  }
}

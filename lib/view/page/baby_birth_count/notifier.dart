import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../component/validate_text_field/type.dart';
import '../../component/validate_text_field/validation.dart';
import 'type.dart';

part 'notifier.freezed.dart';

@freezed
class BabyCountSelectState with _$BabyCountSelectState {
  const factory BabyCountSelectState({
    BabyCountSelectData? inputData,
    FormControl<String>? babyCountController,
  }) = _BabyCountSelectState;
}

/// 出産人数選択の状態を管理するプロバイダー
final babyBirthCountInputProvider = AutoDisposeStateNotifierProvider<
    BabyBirthCountNotifier, BabyCountSelectState>((ref) {
  return BabyBirthCountNotifier();
});

class BabyBirthCountNotifier extends StateNotifier<BabyCountSelectState> {
  BabyBirthCountNotifier() : super(const BabyCountSelectState()) {
    _init();
  }

  void _init() {
    final _controller = getController(
      type: ValidateTextFieldType.birthChild,
      isRequired: false,
      value: '',
      validator: NumValidationType.birthChild.numValid,
    );
    state = state.copyWith(babyCountController: _controller);
  }

  // 名前（ニックネーム）
  void onSelect(BabyCountSelectData? inputData) {
    state = state.copyWith(inputData: inputData);
    final _number =
        inputData is BabyCountSelectDataMore ? inputData.number : '';
    state.babyCountController!.updateValue(_number);
    state.babyCountController!.markAsTouched();
  }

  FormGroup get getForm =>
      FormGroup({ValidateTextFieldType.int.name: state.babyCountController!});
}

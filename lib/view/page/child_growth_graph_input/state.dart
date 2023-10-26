import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'state.freezed.dart';

@freezed
class ChildGrowthGraphInputState with _$ChildGrowthGraphInputState {
  const factory ChildGrowthGraphInputState({
    @Default(ChildGrowthInputData()) ChildGrowthInputData inputData,
    @Default(false) bool saving,
    required FormGroup form,
    required FormControl<String> dateController,
    required FormControl<String> heightController,
    required FormControl<String> gramsController,
    required FormControl<String> kilogramsController,
    required FormControl<String> headController,
    required FormControl<String> chestController,
  }) = _ChildGrowthGraphInputState;
}

/// 入力中データ
@freezed
class ChildGrowthInputData with _$ChildGrowthInputData {
  const factory ChildGrowthInputData({
    /// 測定日
    DateTime? date,

    /// 身長
    String? height,

    /// 体重(g)
    String? grams,

    /// 体重(kg)
    String? kilograms,

    /// kg/g
    @Default(WeightType.kg) WeightType weightType,

    /// 頭囲
    String? head,

    /// 胸囲
    String? chest,
  }) = _ChildGrowthInputData;
}

enum WeightType { kg, g }

extension WeightTypeExtension on WeightType {
  String get label {
    switch (this) {
      case WeightType.kg:
        return 'kg';
      case WeightType.g:
        return 'g';
    }
  }
}

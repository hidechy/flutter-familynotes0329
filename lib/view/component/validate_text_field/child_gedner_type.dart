import 'package:reactive_forms/reactive_forms.dart';

import '../../../type/gender.dart';
import 'validation.dart';

/// 子供の性別のバリデーション
class ValidateChildGenderType {
  ValidateChildGenderType._();

  static const String name = 'child_gender';

  static FormControl<Gender?> getController({
    required Gender? value,
    bool isRequired = true,
    Map<String, dynamic>? Function(AbstractControl<dynamic>)? validator,
  }) {
    return FormControl<Gender?>(
      value: value,
      validators: [
        if (isRequired) Validators.required,
      ],
    );
  }

  static Map<String, ValidationMessageFunction> get validationMessage {
    return {
      ValidationMessage.required: (error) => ValidationType.selectRequired.errorText,
    };
  }
}

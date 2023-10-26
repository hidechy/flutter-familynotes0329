import 'package:reactive_forms/reactive_forms.dart';

/// カスタムバリデーションの名前にアクセス用
class CustomValidationMessage extends ValidationMessage {
  /// 不一致
  static const String mustNotMutch = 'mustNotMatch';
}

class CustomValidators extends Validators {
  CustomValidators._();

  static ValidatorFunction mustNotMatch(
    String controlName,
    String matchingControlName, {
    bool markAsDirty = true,
  }) {
    return MustNotMatchValidator(
      controlName: controlName,
      matchingControlName: matchingControlName,
      markAsDirty: markAsDirty,
    ).validate;
  }
}

/// 不一致確認validator
class MustNotMatchValidator extends Validator<dynamic> {
  MustNotMatchValidator({
    required this.controlName,
    required this.matchingControlName,
    required this.markAsDirty,
  });

  final String controlName;
  final String matchingControlName;
  final bool markAsDirty;

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    final error = {CustomValidationMessage.mustNotMutch: true};

    if (control is! FormGroup) {
      return error;
    }

    final oldValueControl = control.control(controlName);
    final newValueControl = control.control(matchingControlName);
    final oldValue = oldValueControl.value.toString();
    final newValue = newValueControl.value.toString();

    // 空文字の場合はエラーにならないようにするため
    if (oldValue.isEmpty || newValue.isEmpty) {
      return null;
    }

    if (oldValue == newValue) {
      newValueControl
        ..setErrors(error, markAsDirty: markAsDirty)
        ..markAsTouched();
    } else {
      newValueControl.removeError(CustomValidationMessage.mustNotMutch);
    }

    return null;
  }
}

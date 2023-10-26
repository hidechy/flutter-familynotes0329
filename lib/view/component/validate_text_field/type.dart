import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../style/colors.dart';
import 'custom_validation.dart';
import 'validation.dart';

/// バリデーションをかけるテキストフィールドの種類
enum ValidateTextFieldType {
  // Email
  email,

  // パスワード
  password,

  // パスワード(確認用)
  passwordConfirmation,

  // 新パスワード
  newPassword,

  // 認証コード
  authCode,

  // 少数
  double,

  // 整数のみ
  int,

  // 日付
  date,

  // 郵便番号
  postalCode,

  // 身長
  height,

  // 体重
  weight,

  // 頭囲
  head,

  // 胸囲
  chest,

  /// 子どもの体重(g)
  childGramsWeight,

  /// 子どもの体重(kg)
  childKilogramsWeight,

  /// ニックネーム（胎児、子供）
  nickname,

  /// 歯の本数
  countTeeth,

  /// 要治療のむし歯の本数
  countBadTeeth,

  /// 要治療の乳歯の本数
  countBadBabyTeeth,

  /// 要治療の永久歯の本数
  countBadAdultTeeth,

  /// 妊婦の体重(kg)
  pregnantWeight,

  /// 出産情報のこどもの数
  birthChild,

  /// 妊娠週数
  week,

  /// 妊娠日数
  day,

  /// 名前(親)
  parentNickname,

  /// 出産時刻
  childBirthdayTime,
}

/// それぞれのコントローラー
FormControl<String> getController({
  required ValidateTextFieldType type,
  required String value,
  bool isRequired = true,
  Map<String, dynamic>? Function(AbstractControl<dynamic>)? validator,
}) {
  switch (type) {
    case ValidateTextFieldType.email:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
          Validators.email,
        ],
      );
    case ValidateTextFieldType.password:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
          Validators.pattern(passwordPatarnReg),
          Validators.pattern(passwordLengthReg),
        ],
      );

    case ValidateTextFieldType.passwordConfirmation:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
          Validators.pattern(passwordPatarnReg),
          Validators.pattern(passwordLengthReg),
        ],
      );

    case ValidateTextFieldType.newPassword:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
          Validators.pattern(passwordPatarnReg),
          Validators.pattern(passwordLengthReg),
        ],
      );

    case ValidateTextFieldType.authCode:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
          Validators.pattern(authCodeReg),
        ],
      );

    case ValidateTextFieldType.double:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
          Validators.pattern(doubleReg),
          if (validator != null) validator,
        ],
      );

    case ValidateTextFieldType.int:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
          Validators.pattern(intReg),
          if (validator != null) validator,
        ],
      );
    case ValidateTextFieldType.date:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
        ],
      );

    case ValidateTextFieldType.postalCode:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
          Validators.pattern(postalCodeReg),
        ],
      );
    case ValidateTextFieldType.height:
      return FormControl<String>(
        value: value,
        validators: [
          Validators.pattern(doubleReg),
          if (validator != null) validator,
        ],
      );

    case ValidateTextFieldType.weight:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
          Validators.pattern(doubleReg),
        ],
      );

    case ValidateTextFieldType.head:
      return FormControl<String>(
        value: value,
        validators: [
          Validators.pattern(doubleReg),
          if (validator != null) validator,
        ],
      );

    case ValidateTextFieldType.chest:
      return FormControl<String>(
        value: value,
        validators: [
          Validators.pattern(doubleReg),
          if (validator != null) validator,
        ],
      );

    case ValidateTextFieldType.childGramsWeight:
      return FormControl<String>(
        value: value,
        validators: [
          Validators.pattern(intStartNonZeroReg),
          if (validator != null) validator,
        ],
      );

    case ValidateTextFieldType.childKilogramsWeight:
      return FormControl<String>(
        value: value,
        validators: [
          Validators.pattern(threeDecimalReg),
          if (validator != null) validator,
        ],
      );

    case ValidateTextFieldType.nickname:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
        ],
      );
    case ValidateTextFieldType.countTeeth:
      return FormControl<String>(
        value: value,
        validators: [
          if (validator != null) validator,
        ],
      );
    case ValidateTextFieldType.countBadTeeth:
      return FormControl<String>(
        value: value,
        validators: [
          if (validator != null) validator,
        ],
      );
    case ValidateTextFieldType.countBadBabyTeeth:
      return FormControl<String>(
        value: value,
        validators: [
          if (validator != null) validator,
        ],
      );
    case ValidateTextFieldType.countBadAdultTeeth:
      return FormControl<String>(
        value: value,
        validators: [
          if (validator != null) validator,
        ],
      );
    case ValidateTextFieldType.pregnantWeight:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
          if (validator != null) validator,
          Validators.pattern(doubleReg),
        ],
      );
    case ValidateTextFieldType.birthChild:
      return FormControl<String>(
        value: value,
        validators: [
          if (validator != null) validator,
        ],
      );
    case ValidateTextFieldType.week:
      return FormControl<String>(
        value: value,
        validators: [
          if (validator != null) validator,
        ],
      );
    case ValidateTextFieldType.day:
      return FormControl<String>(
        value: value,
        validators: [
          if (validator != null) validator,
        ],
      );
    case ValidateTextFieldType.parentNickname:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
        ],
      );
    case ValidateTextFieldType.childBirthdayTime:
      return FormControl<String>(
        value: value,
        validators: [
          if (isRequired) Validators.required,
        ],
      );
  }
}

extension ValidateTextFieldTypeEx on ValidateTextFieldType {
  /// それぞれのテキストフィールドで使用するエラーメッセージのMap
  Map<String, ValidationMessageFunction> get validationMessage {
    switch (this) {
      case ValidateTextFieldType.email:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
          ValidationMessage.email: (error) => ValidationType.email.errorText,
        };
      case ValidateTextFieldType.password:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
          ValidationMessage.pattern: (error) =>
              ValidationType.password.errorText,
        };
      case ValidateTextFieldType.passwordConfirmation:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
          ValidationMessage.pattern: (error) =>
              ValidationType.password.errorText,
          ValidationMessage.mustMatch: (error) =>
              ValidationType.mustMatch.errorText,
        };
      case ValidateTextFieldType.newPassword:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
          ValidationMessage.pattern: (error) =>
              ValidationType.password.errorText,
          CustomValidationMessage.mustNotMutch: (error) =>
              ValidationType.newPassword.errorText
        };
      case ValidateTextFieldType.authCode:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
          ValidationMessage.pattern: (error) =>
              ValidationType.authCode.errorText,
        };
      case ValidateTextFieldType.double:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
          ValidationMessage.pattern: (error) => ValidationType.double.errorText,
          ValidationType.numValid.name: (error) =>
              ValidationType.numValid.errorText,
        };
      case ValidateTextFieldType.int:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
          ValidationMessage.pattern: (error) => ValidationType.int.errorText,
          ValidationType.numValid.name: (error) =>
              ValidationType.numValid.errorText,
        };
      case ValidateTextFieldType.date:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
        };
      case ValidateTextFieldType.postalCode:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
          ValidationMessage.pattern: (error) =>
              ValidationType.postalCode.errorText,
        };
      case ValidateTextFieldType.height:
        return {
          ValidationMessage.pattern: (error) => ValidationType.double.errorText,
          ValidationType.numValid.name: (error) =>
              ValidationType.height.errorText,
        };
      case ValidateTextFieldType.weight:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
          ValidationMessage.pattern: (error) => ValidationType.double.errorText,
        };
      case ValidateTextFieldType.head:
        return {
          ValidationMessage.pattern: (error) => ValidationType.double.errorText,
          ValidationType.numValid.name: (error) =>
              ValidationType.head.errorText,
        };
      case ValidateTextFieldType.chest:
        return {
          ValidationMessage.pattern: (error) => ValidationType.double.errorText,
          ValidationType.numValid.name: (error) =>
              ValidationType.chest.errorText,
        };
      case ValidateTextFieldType.childGramsWeight:
        return {
          ValidationMessage.pattern: (error) =>
              ValidationType.intStartNonZeroReg.errorText,
          ValidationType.numValid.name: (error) =>
              ValidationType.childGramsWeight.errorText,
        };
      case ValidateTextFieldType.childKilogramsWeight:
        return {
          ValidationMessage.pattern: (error) =>
              ValidationType.threeDecimal.errorText,
          ValidationType.numValid.name: (error) =>
              ValidationType.childKilogramsWeight.errorText,
        };
      case ValidateTextFieldType.nickname:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
        };
      case ValidateTextFieldType.countTeeth:
        return {
          ValidationType.numValid.name: (error) =>
              ValidationType.countTeeth.errorText,
        };
      case ValidateTextFieldType.countBadTeeth:
        return {
          ValidationType.numValid.name: (error) =>
              ValidationType.countBadTeeth.errorText,
        };
      case ValidateTextFieldType.countBadBabyTeeth:
        return {
          ValidationType.numValid.name: (error) =>
              ValidationType.countBadBabyTeeth.errorText,
        };
      case ValidateTextFieldType.countBadAdultTeeth:
        return {
          ValidationType.numValid.name: (error) =>
              ValidationType.countBadAdultTeeth.errorText,
        };
      case ValidateTextFieldType.pregnantWeight:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
          ValidationType.numValid.name: (error) =>
              ValidationType.pregnantWeight.errorText,
          ValidationMessage.pattern: (error) => ValidationType.double.errorText,
        };
      case ValidateTextFieldType.birthChild:
        return {
          ValidationType.numValid.name: (error) =>
              ValidationType.birthChild.errorText,
        };
      case ValidateTextFieldType.week:
        return {
          ValidationType.numValid.name: (error) =>
              ValidationType.week.errorText,
        };
      case ValidateTextFieldType.day:
        return {
          ValidationType.numValid.name: (error) => ValidationType.day.errorText,
        };
      case ValidateTextFieldType.parentNickname:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
        };
      case ValidateTextFieldType.childBirthdayTime:
        return {
          ValidationMessage.required: (error) =>
              ValidationType.required.errorText,
        };
    }
  }

  Color get fillColor {
    switch (this) {
      case ValidateTextFieldType.email:
      case ValidateTextFieldType.password:
      case ValidateTextFieldType.passwordConfirmation:
      case ValidateTextFieldType.newPassword:
      case ValidateTextFieldType.authCode:
        return IHSColors.yellow50;
      case ValidateTextFieldType.double:
      case ValidateTextFieldType.int:
      case ValidateTextFieldType.date:
      case ValidateTextFieldType.height:
      case ValidateTextFieldType.weight:
      case ValidateTextFieldType.head:
      case ValidateTextFieldType.chest:
      case ValidateTextFieldType.childGramsWeight:
      case ValidateTextFieldType.childKilogramsWeight:
      case ValidateTextFieldType.postalCode:
      case ValidateTextFieldType.countTeeth:
      case ValidateTextFieldType.countBadTeeth:
      case ValidateTextFieldType.countBadBabyTeeth:
      case ValidateTextFieldType.countBadAdultTeeth:
      case ValidateTextFieldType.pregnantWeight:
      case ValidateTextFieldType.birthChild:
      case ValidateTextFieldType.week:
      case ValidateTextFieldType.day:
      case ValidateTextFieldType.parentNickname:
      case ValidateTextFieldType.childBirthdayTime:
      case ValidateTextFieldType.nickname:
        return IHSColors.white;
    }
  }

  double get borderRadius {
    switch (this) {
      case ValidateTextFieldType.email:
      case ValidateTextFieldType.password:
      case ValidateTextFieldType.passwordConfirmation:
      case ValidateTextFieldType.newPassword:
      case ValidateTextFieldType.authCode:
        return 16;
      case ValidateTextFieldType.double:
      case ValidateTextFieldType.int:
      case ValidateTextFieldType.date:
      case ValidateTextFieldType.height:
      case ValidateTextFieldType.weight:
      case ValidateTextFieldType.head:
      case ValidateTextFieldType.chest:
      case ValidateTextFieldType.childGramsWeight:
      case ValidateTextFieldType.childKilogramsWeight:
      case ValidateTextFieldType.postalCode:
      case ValidateTextFieldType.countTeeth:
      case ValidateTextFieldType.countBadTeeth:
      case ValidateTextFieldType.countBadBabyTeeth:
      case ValidateTextFieldType.countBadAdultTeeth:
      case ValidateTextFieldType.pregnantWeight:
      case ValidateTextFieldType.birthChild:
      case ValidateTextFieldType.week:
      case ValidateTextFieldType.day:
      case ValidateTextFieldType.parentNickname:
      case ValidateTextFieldType.childBirthdayTime:
      case ValidateTextFieldType.nickname:
        return 8;
    }
  }
}

import 'package:reactive_forms/reactive_forms.dart';

// パスワード: 英大文字、英小文字、数字と記号のの8〜20桁までの文字列で最低２種類以上
final passwordPatarnReg = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])|(?=.*[a-z])(?=.*[0-9])|(?=.*[a-z])(?=.*[-*/+.~!@#\$%^&*()])|(?=.*[A-Z])(?=.*[0-9])|(?=.*[A-Z])(?=.*[-*/+.~!@#\$%^&*()])|(?=.*[0-9])(?=.*[-*/+.~!@#\$%^&*()])');
final passwordLengthReg = RegExp(r'^([a-zA-Z0-9-*/+.~!@#\$%^&*()]{8,20}$)');

// 認証コード: 英大文字、英小文字、数字の6桁の文字列
final authCodeReg = RegExp(r'^[a-zA-Z0-9]{1,20}$');
// 少数: 0以上で、少数点以下１桁までの少数
final doubleReg = RegExp(r'^([0-9]*\d)+(\.\d{1})?$');
// 少数: 0以上で、少数点以下3桁までの少数
final threeDecimalReg = RegExp(r'^([0-9]*\d)+(\.\d{1,3})?$');
// 整数: 0以上の整数
final intReg = RegExp(r'^([0-9]*\d)$');
// 郵便番号: 000-0000 の形式、ハイフンあり
final postalCodeReg = RegExp(r'^\d{7}$');
// 整数： 先頭の整数に0以外
final intStartNonZeroReg = RegExp(r'^[^0]');

/// バリデーションのエラーメッセージ
enum ValidationType {
  // 入力必須
  required(errorText: '必ず入力してください。'),

  /// 選択必須
  selectRequired(errorText: '必ず選択してください。'),

  // Emailの形式
  email(errorText: 'メールアドレス形式で入力'),

  // 最小文字数
  minLength(errorText: '６文字以上で入力'),

  // 認証コード用
  authCode(errorText: 'エラー'),

  // 郵便番号
  postalCode(errorText: 'ハイフンなしで入力'),

  // 少数(小数点以下１桁)
  double(errorText: '小数点以下1桁'),

  // 少数(小数点以下3桁)
  threeDecimal(errorText: '小数点以下3桁'),

  // 整数
  int(errorText: '整数入力'),

  // 指定した範囲の整数のみ
  numValid(errorText: '範囲外'),

  // 身長
  height(errorText: '10 ~ 199.9の数字'),

  // 頭囲
  head(errorText: '10 ~ 99.9の数字'),

  // 胸囲
  chest(errorText: '10 ~ 99.9の数字'),

  // 歯の本数
  countTeeth(errorText: '0 ~ 49 の数字'),

  /// 要治療のむし歯の本数
  countBadTeeth(errorText: '0 ~ 49 の数字'),

  /// 要治療の乳歯の本数
  countBadBabyTeeth(errorText: '0 ~ 49 の数字'),

  /// 要治療の永久歯の本数
  countBadAdultTeeth(errorText: '0 ~ 49 の数字'),

  /// 妊婦の体重(kg)
  pregnantWeight(errorText: '30 ~ 299.9 の数字'),

  /// 出産情報のこどもの数
  birthChild(errorText: '3 ~ 10の数字'),

  /// 妊娠週数
  week(errorText: '1 ~ 50の数字'),

  /// 妊娠日数
  day(errorText: '0 ~ 6の数字'),

  // 子ども体重(g)
  childGramsWeight(errorText: '1 ~ 199999の整数'),

  // 子ども体重(kg)
  childKilogramsWeight(errorText: '0.001 ~ 199.999の数字'),

  // 整数の先頭に0入力エラー
  intStartNonZeroReg(errorText: '先頭に0は付与できません'),

  // 最大長
  maxLength(errorText: 'これ以上入力できません'),

  // 同一の値
  mustMatch(errorText: 'パスワードが一致しません'),

  /// 現在のパスワードと新しいパスワードの一致エラー
  newPassword(errorText: '現在のパスワードは設定できません'),

  // パスワードの入力形式エラー
  password(errorText: 'パスワードとしてご使用できません');

  const ValidationType({required this.errorText});

  final String errorText;
}

// 数値の最大値・最小値のバリデーション
enum NumValidationType {
  /// 妊娠週数
  week(minNum: 1, maxNum: 50),

  /// 妊娠日数
  day(minNum: 0, maxNum: 6),

  /// 子ども体重(g)
  grams(minNum: 1, maxNum: 199999),

  /// 子ども体重(kg)
  kilograms(minNum: 0.001, maxNum: 199.999),

  /// 身長
  height(minNum: 10, maxNum: 199.9),

  /// 頭囲
  head(minNum: 10, maxNum: 99.9),

  /// 胸囲
  chest(minNum: 10, maxNum: 99.9),

  /// 歯の本数
  countTeeth(minNum: 0, maxNum: 49),

  /// 要治療のむし歯の本数
  countBadTeeth(minNum: 0, maxNum: 49),

  /// 要治療の乳歯の本数
  countBadBabyTeeth(minNum: 0, maxNum: 49),

  /// 要治療の永久歯の本数
  countBadAdultTeeth(minNum: 0, maxNum: 49),

  /// 子供の体重
  childWeight(minNum: 0.1, maxNum: 199.9),

  /// 妊婦の体重(kg)
  pregnantWeight(minNum: 30, maxNum: 299.9),

  /// 出産情報のこどもの数
  birthChild(minNum: 3, maxNum: 10);

  const NumValidationType({
    required this.minNum,
    required this.maxNum,
  });

  final double minNum;
  final double maxNum;

  Map<String, dynamic>? Function(AbstractControl<dynamic>) get numValid {
    return _generateNumValid(r'^([+-])?([0-9]+)(\.)?([0-9]+)?$');
  }

  /// 子ども体重(g)用バリデーション
  Map<String, dynamic>? Function(AbstractControl<dynamic>) get gramsValid {
    // 小数点を含まない数字を許容する
    return _generateNumValid(r'^([+-])?([0-9]+)([0-9]+)?$');
  }

  /// 数値の最大値・最小値のバリデーション生成
  Map<String, dynamic>? Function(AbstractControl<dynamic>) _generateNumValid(
    String reg,
  ) {
    return (AbstractControl<dynamic> control) {
      final _value = control.value.toString();
      // controllerのvalueが、なにも入っていない場合は、エラーを返さない
      if (_value.isEmpty) {
        return null;
      }

      final _numValid = RegExp(reg).hasMatch(_value);
      if (!_numValid) {
        // 数値でない場合を排除
        return {ValidationType.numValid.name: true};
      }
      final _double = double.parse(_value);
      return _double <= maxNum && _double >= minNum
          ? null
          : {ValidationType.numValid.name: true};
    };
  }
}

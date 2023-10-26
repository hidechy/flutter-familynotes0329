// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpInputState {
// プラポリ同意済み
  bool get hasCheckedPoricy => throw _privateConstructorUsedError; // 利用規約同意済み
  bool get hasCheckedTerms => throw _privateConstructorUsedError;
  SignUpInputData get inputData => throw _privateConstructorUsedError; // 規約取得中
  bool get fetching => throw _privateConstructorUsedError;
  bool get saving => throw _privateConstructorUsedError; // 取得したプラポリ
  PoricyConsentModel? get poricyConsent =>
      throw _privateConstructorUsedError; // 取得した利用規約
  TermsConsentModel? get termsConsent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpInputStateCopyWith<SignUpInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpInputStateCopyWith<$Res> {
  factory $SignUpInputStateCopyWith(
          SignUpInputState value, $Res Function(SignUpInputState) then) =
      _$SignUpInputStateCopyWithImpl<$Res, SignUpInputState>;
  @useResult
  $Res call(
      {bool hasCheckedPoricy,
      bool hasCheckedTerms,
      SignUpInputData inputData,
      bool fetching,
      bool saving,
      PoricyConsentModel? poricyConsent,
      TermsConsentModel? termsConsent});

  $SignUpInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class _$SignUpInputStateCopyWithImpl<$Res, $Val extends SignUpInputState>
    implements $SignUpInputStateCopyWith<$Res> {
  _$SignUpInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasCheckedPoricy = null,
    Object? hasCheckedTerms = null,
    Object? inputData = null,
    Object? fetching = null,
    Object? saving = null,
    Object? poricyConsent = null,
    Object? termsConsent = null,
  }) {
    return _then(_value.copyWith(
      hasCheckedPoricy: null == hasCheckedPoricy
          ? _value.hasCheckedPoricy
          : hasCheckedPoricy // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCheckedTerms: null == hasCheckedTerms
          ? _value.hasCheckedTerms
          : hasCheckedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as SignUpInputData,
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
      poricyConsent: null == poricyConsent
          ? _value.poricyConsent
          : poricyConsent // ignore: cast_nullable_to_non_nullable
              as PoricyConsentModel?,
      termsConsent: null == termsConsent
          ? _value.termsConsent
          : termsConsent // ignore: cast_nullable_to_non_nullable
              as TermsConsentModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignUpInputDataCopyWith<$Res> get inputData {
    return $SignUpInputDataCopyWith<$Res>(_value.inputData, (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignUpInputStateCopyWith<$Res>
    implements $SignUpInputStateCopyWith<$Res> {
  factory _$$_SignUpInputStateCopyWith(
          _$_SignUpInputState value, $Res Function(_$_SignUpInputState) then) =
      __$$_SignUpInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasCheckedPoricy,
      bool hasCheckedTerms,
      SignUpInputData inputData,
      bool fetching,
      bool saving,
      PoricyConsentModel? poricyConsent,
      TermsConsentModel? termsConsent});

  @override
  $SignUpInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class __$$_SignUpInputStateCopyWithImpl<$Res>
    extends _$SignUpInputStateCopyWithImpl<$Res, _$_SignUpInputState>
    implements _$$_SignUpInputStateCopyWith<$Res> {
  __$$_SignUpInputStateCopyWithImpl(
      _$_SignUpInputState _value, $Res Function(_$_SignUpInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasCheckedPoricy = null,
    Object? hasCheckedTerms = null,
    Object? inputData = null,
    Object? fetching = null,
    Object? saving = null,
    Object? poricyConsent = null,
    Object? termsConsent = null,
  }) {
    return _then(_$_SignUpInputState(
      hasCheckedPoricy: null == hasCheckedPoricy
          ? _value.hasCheckedPoricy
          : hasCheckedPoricy // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCheckedTerms: null == hasCheckedTerms
          ? _value.hasCheckedTerms
          : hasCheckedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as SignUpInputData,
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
      poricyConsent: null == poricyConsent
          ? _value.poricyConsent
          : poricyConsent // ignore: cast_nullable_to_non_nullable
              as PoricyConsentModel?,
      termsConsent: null == termsConsent
          ? _value.termsConsent
          : termsConsent // ignore: cast_nullable_to_non_nullable
              as TermsConsentModel?,
    ));
  }
}

/// @nodoc

class _$_SignUpInputState implements _SignUpInputState {
  const _$_SignUpInputState(
      {this.hasCheckedPoricy = false,
      this.hasCheckedTerms = false,
      this.inputData = const SignUpInputData(),
      this.fetching = true,
      this.saving = false,
      this.poricyConsent,
      this.termsConsent});

// プラポリ同意済み
  @override
  @JsonKey()
  final bool hasCheckedPoricy;
// 利用規約同意済み
  @override
  @JsonKey()
  final bool hasCheckedTerms;
  @override
  @JsonKey()
  final SignUpInputData inputData;
// 規約取得中
  @override
  @JsonKey()
  final bool fetching;
  @override
  @JsonKey()
  final bool saving;
// 取得したプラポリ
  @override
  final PoricyConsentModel? poricyConsent;
// 取得した利用規約
  @override
  final TermsConsentModel? termsConsent;

  @override
  String toString() {
    return 'SignUpInputState(hasCheckedPoricy: $hasCheckedPoricy, hasCheckedTerms: $hasCheckedTerms, inputData: $inputData, fetching: $fetching, saving: $saving, poricyConsent: $poricyConsent, termsConsent: $termsConsent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpInputState &&
            (identical(other.hasCheckedPoricy, hasCheckedPoricy) ||
                other.hasCheckedPoricy == hasCheckedPoricy) &&
            (identical(other.hasCheckedTerms, hasCheckedTerms) ||
                other.hasCheckedTerms == hasCheckedTerms) &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.fetching, fetching) ||
                other.fetching == fetching) &&
            (identical(other.saving, saving) || other.saving == saving) &&
            const DeepCollectionEquality()
                .equals(other.poricyConsent, poricyConsent) &&
            const DeepCollectionEquality()
                .equals(other.termsConsent, termsConsent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hasCheckedPoricy,
      hasCheckedTerms,
      inputData,
      fetching,
      saving,
      const DeepCollectionEquality().hash(poricyConsent),
      const DeepCollectionEquality().hash(termsConsent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpInputStateCopyWith<_$_SignUpInputState> get copyWith =>
      __$$_SignUpInputStateCopyWithImpl<_$_SignUpInputState>(this, _$identity);
}

abstract class _SignUpInputState implements SignUpInputState {
  const factory _SignUpInputState(
      {final bool hasCheckedPoricy,
      final bool hasCheckedTerms,
      final SignUpInputData inputData,
      final bool fetching,
      final bool saving,
      final PoricyConsentModel? poricyConsent,
      final TermsConsentModel? termsConsent}) = _$_SignUpInputState;

  @override // プラポリ同意済み
  bool get hasCheckedPoricy;
  @override // 利用規約同意済み
  bool get hasCheckedTerms;
  @override
  SignUpInputData get inputData;
  @override // 規約取得中
  bool get fetching;
  @override
  bool get saving;
  @override // 取得したプラポリ
  PoricyConsentModel? get poricyConsent;
  @override // 取得した利用規約
  TermsConsentModel? get termsConsent;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpInputStateCopyWith<_$_SignUpInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpInputData {
  /// メールアドレス
  String get email => throw _privateConstructorUsedError;

  /// パスワード
  String get password => throw _privateConstructorUsedError;

  /// パスワード（確認用）
  String get confirmPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpInputDataCopyWith<SignUpInputData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpInputDataCopyWith<$Res> {
  factory $SignUpInputDataCopyWith(
          SignUpInputData value, $Res Function(SignUpInputData) then) =
      _$SignUpInputDataCopyWithImpl<$Res, SignUpInputData>;
  @useResult
  $Res call({String email, String password, String confirmPassword});
}

/// @nodoc
class _$SignUpInputDataCopyWithImpl<$Res, $Val extends SignUpInputData>
    implements $SignUpInputDataCopyWith<$Res> {
  _$SignUpInputDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpInputDataCopyWith<$Res>
    implements $SignUpInputDataCopyWith<$Res> {
  factory _$$_SignUpInputDataCopyWith(
          _$_SignUpInputData value, $Res Function(_$_SignUpInputData) then) =
      __$$_SignUpInputDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String confirmPassword});
}

/// @nodoc
class __$$_SignUpInputDataCopyWithImpl<$Res>
    extends _$SignUpInputDataCopyWithImpl<$Res, _$_SignUpInputData>
    implements _$$_SignUpInputDataCopyWith<$Res> {
  __$$_SignUpInputDataCopyWithImpl(
      _$_SignUpInputData _value, $Res Function(_$_SignUpInputData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$_SignUpInputData(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpInputData implements _SignUpInputData {
  const _$_SignUpInputData(
      {this.email = '', this.password = '', this.confirmPassword = ''});

  /// メールアドレス
  @override
  @JsonKey()
  final String email;

  /// パスワード
  @override
  @JsonKey()
  final String password;

  /// パスワード（確認用）
  @override
  @JsonKey()
  final String confirmPassword;

  @override
  String toString() {
    return 'SignUpInputData(email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpInputData &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpInputDataCopyWith<_$_SignUpInputData> get copyWith =>
      __$$_SignUpInputDataCopyWithImpl<_$_SignUpInputData>(this, _$identity);
}

abstract class _SignUpInputData implements SignUpInputData {
  const factory _SignUpInputData(
      {final String email,
      final String password,
      final String confirmPassword}) = _$_SignUpInputData;

  @override

  /// メールアドレス
  String get email;
  @override

  /// パスワード
  String get password;
  @override

  /// パスワード（確認用）
  String get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpInputDataCopyWith<_$_SignUpInputData> get copyWith =>
      throw _privateConstructorUsedError;
}

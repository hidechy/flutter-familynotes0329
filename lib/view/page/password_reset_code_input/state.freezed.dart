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
mixin _$PasswordResetCodeConfirmState {
  PasswordResetCodeConfirmData get inputData =>
      throw _privateConstructorUsedError;
  bool get saving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordResetCodeConfirmStateCopyWith<PasswordResetCodeConfirmState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetCodeConfirmStateCopyWith<$Res> {
  factory $PasswordResetCodeConfirmStateCopyWith(
          PasswordResetCodeConfirmState value,
          $Res Function(PasswordResetCodeConfirmState) then) =
      _$PasswordResetCodeConfirmStateCopyWithImpl<$Res,
          PasswordResetCodeConfirmState>;
  @useResult
  $Res call({PasswordResetCodeConfirmData inputData, bool saving});

  $PasswordResetCodeConfirmDataCopyWith<$Res> get inputData;
}

/// @nodoc
class _$PasswordResetCodeConfirmStateCopyWithImpl<$Res,
        $Val extends PasswordResetCodeConfirmState>
    implements $PasswordResetCodeConfirmStateCopyWith<$Res> {
  _$PasswordResetCodeConfirmStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? saving = null,
  }) {
    return _then(_value.copyWith(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as PasswordResetCodeConfirmData,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordResetCodeConfirmDataCopyWith<$Res> get inputData {
    return $PasswordResetCodeConfirmDataCopyWith<$Res>(_value.inputData,
        (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PasswordResetCodeConfirmStateCopyWith<$Res>
    implements $PasswordResetCodeConfirmStateCopyWith<$Res> {
  factory _$$_PasswordResetCodeConfirmStateCopyWith(
          _$_PasswordResetCodeConfirmState value,
          $Res Function(_$_PasswordResetCodeConfirmState) then) =
      __$$_PasswordResetCodeConfirmStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PasswordResetCodeConfirmData inputData, bool saving});

  @override
  $PasswordResetCodeConfirmDataCopyWith<$Res> get inputData;
}

/// @nodoc
class __$$_PasswordResetCodeConfirmStateCopyWithImpl<$Res>
    extends _$PasswordResetCodeConfirmStateCopyWithImpl<$Res,
        _$_PasswordResetCodeConfirmState>
    implements _$$_PasswordResetCodeConfirmStateCopyWith<$Res> {
  __$$_PasswordResetCodeConfirmStateCopyWithImpl(
      _$_PasswordResetCodeConfirmState _value,
      $Res Function(_$_PasswordResetCodeConfirmState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? saving = null,
  }) {
    return _then(_$_PasswordResetCodeConfirmState(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as PasswordResetCodeConfirmData,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PasswordResetCodeConfirmState
    implements _PasswordResetCodeConfirmState {
  const _$_PasswordResetCodeConfirmState(
      {this.inputData = const PasswordResetCodeConfirmData(),
      this.saving = false});

  @override
  @JsonKey()
  final PasswordResetCodeConfirmData inputData;
  @override
  @JsonKey()
  final bool saving;

  @override
  String toString() {
    return 'PasswordResetCodeConfirmState(inputData: $inputData, saving: $saving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordResetCodeConfirmState &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.saving, saving) || other.saving == saving));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputData, saving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordResetCodeConfirmStateCopyWith<_$_PasswordResetCodeConfirmState>
      get copyWith => __$$_PasswordResetCodeConfirmStateCopyWithImpl<
          _$_PasswordResetCodeConfirmState>(this, _$identity);
}

abstract class _PasswordResetCodeConfirmState
    implements PasswordResetCodeConfirmState {
  const factory _PasswordResetCodeConfirmState(
      {final PasswordResetCodeConfirmData inputData,
      final bool saving}) = _$_PasswordResetCodeConfirmState;

  @override
  PasswordResetCodeConfirmData get inputData;
  @override
  bool get saving;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordResetCodeConfirmStateCopyWith<_$_PasswordResetCodeConfirmState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PasswordResetCodeConfirmData {
  /// パスワード
  String get password => throw _privateConstructorUsedError;

  /// パスワード（確認用）
  String get confirmPassword => throw _privateConstructorUsedError;

  /// 認証コード
  String get authCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordResetCodeConfirmDataCopyWith<PasswordResetCodeConfirmData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetCodeConfirmDataCopyWith<$Res> {
  factory $PasswordResetCodeConfirmDataCopyWith(
          PasswordResetCodeConfirmData value,
          $Res Function(PasswordResetCodeConfirmData) then) =
      _$PasswordResetCodeConfirmDataCopyWithImpl<$Res,
          PasswordResetCodeConfirmData>;
  @useResult
  $Res call({String password, String confirmPassword, String authCode});
}

/// @nodoc
class _$PasswordResetCodeConfirmDataCopyWithImpl<$Res,
        $Val extends PasswordResetCodeConfirmData>
    implements $PasswordResetCodeConfirmDataCopyWith<$Res> {
  _$PasswordResetCodeConfirmDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? confirmPassword = null,
    Object? authCode = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      authCode: null == authCode
          ? _value.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PasswordResetCodeConfirmDataCopyWith<$Res>
    implements $PasswordResetCodeConfirmDataCopyWith<$Res> {
  factory _$$_PasswordResetCodeConfirmDataCopyWith(
          _$_PasswordResetCodeConfirmData value,
          $Res Function(_$_PasswordResetCodeConfirmData) then) =
      __$$_PasswordResetCodeConfirmDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, String confirmPassword, String authCode});
}

/// @nodoc
class __$$_PasswordResetCodeConfirmDataCopyWithImpl<$Res>
    extends _$PasswordResetCodeConfirmDataCopyWithImpl<$Res,
        _$_PasswordResetCodeConfirmData>
    implements _$$_PasswordResetCodeConfirmDataCopyWith<$Res> {
  __$$_PasswordResetCodeConfirmDataCopyWithImpl(
      _$_PasswordResetCodeConfirmData _value,
      $Res Function(_$_PasswordResetCodeConfirmData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? confirmPassword = null,
    Object? authCode = null,
  }) {
    return _then(_$_PasswordResetCodeConfirmData(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      authCode: null == authCode
          ? _value.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordResetCodeConfirmData implements _PasswordResetCodeConfirmData {
  const _$_PasswordResetCodeConfirmData(
      {this.password = '', this.confirmPassword = '', this.authCode = ''});

  /// パスワード
  @override
  @JsonKey()
  final String password;

  /// パスワード（確認用）
  @override
  @JsonKey()
  final String confirmPassword;

  /// 認証コード
  @override
  @JsonKey()
  final String authCode;

  @override
  String toString() {
    return 'PasswordResetCodeConfirmData(password: $password, confirmPassword: $confirmPassword, authCode: $authCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordResetCodeConfirmData &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, password, confirmPassword, authCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordResetCodeConfirmDataCopyWith<_$_PasswordResetCodeConfirmData>
      get copyWith => __$$_PasswordResetCodeConfirmDataCopyWithImpl<
          _$_PasswordResetCodeConfirmData>(this, _$identity);
}

abstract class _PasswordResetCodeConfirmData
    implements PasswordResetCodeConfirmData {
  const factory _PasswordResetCodeConfirmData(
      {final String password,
      final String confirmPassword,
      final String authCode}) = _$_PasswordResetCodeConfirmData;

  @override

  /// パスワード
  String get password;
  @override

  /// パスワード（確認用）
  String get confirmPassword;
  @override

  /// 認証コード
  String get authCode;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordResetCodeConfirmDataCopyWith<_$_PasswordResetCodeConfirmData>
      get copyWith => throw _privateConstructorUsedError;
}

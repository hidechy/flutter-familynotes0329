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
mixin _$SettingPasswordResetState {
  SignUpInputData get inputData => throw _privateConstructorUsedError;
  bool get saving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingPasswordResetStateCopyWith<SettingPasswordResetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingPasswordResetStateCopyWith<$Res> {
  factory $SettingPasswordResetStateCopyWith(SettingPasswordResetState value,
          $Res Function(SettingPasswordResetState) then) =
      _$SettingPasswordResetStateCopyWithImpl<$Res, SettingPasswordResetState>;
  @useResult
  $Res call({SignUpInputData inputData, bool saving});

  $SignUpInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class _$SettingPasswordResetStateCopyWithImpl<$Res,
        $Val extends SettingPasswordResetState>
    implements $SettingPasswordResetStateCopyWith<$Res> {
  _$SettingPasswordResetStateCopyWithImpl(this._value, this._then);

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
              as SignUpInputData,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_SettingPasswordResetStateCopyWith<$Res>
    implements $SettingPasswordResetStateCopyWith<$Res> {
  factory _$$_SettingPasswordResetStateCopyWith(
          _$_SettingPasswordResetState value,
          $Res Function(_$_SettingPasswordResetState) then) =
      __$$_SettingPasswordResetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignUpInputData inputData, bool saving});

  @override
  $SignUpInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class __$$_SettingPasswordResetStateCopyWithImpl<$Res>
    extends _$SettingPasswordResetStateCopyWithImpl<$Res,
        _$_SettingPasswordResetState>
    implements _$$_SettingPasswordResetStateCopyWith<$Res> {
  __$$_SettingPasswordResetStateCopyWithImpl(
      _$_SettingPasswordResetState _value,
      $Res Function(_$_SettingPasswordResetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? saving = null,
  }) {
    return _then(_$_SettingPasswordResetState(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as SignUpInputData,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SettingPasswordResetState implements _SettingPasswordResetState {
  const _$_SettingPasswordResetState(
      {this.inputData = const SignUpInputData(), this.saving = false});

  @override
  @JsonKey()
  final SignUpInputData inputData;
  @override
  @JsonKey()
  final bool saving;

  @override
  String toString() {
    return 'SettingPasswordResetState(inputData: $inputData, saving: $saving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingPasswordResetState &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.saving, saving) || other.saving == saving));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputData, saving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingPasswordResetStateCopyWith<_$_SettingPasswordResetState>
      get copyWith => __$$_SettingPasswordResetStateCopyWithImpl<
          _$_SettingPasswordResetState>(this, _$identity);
}

abstract class _SettingPasswordResetState implements SettingPasswordResetState {
  const factory _SettingPasswordResetState(
      {final SignUpInputData inputData,
      final bool saving}) = _$_SettingPasswordResetState;

  @override
  SignUpInputData get inputData;
  @override
  bool get saving;
  @override
  @JsonKey(ignore: true)
  _$$_SettingPasswordResetStateCopyWith<_$_SettingPasswordResetState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpInputData {
  /// 現在のパスワード
  String get oldPassword => throw _privateConstructorUsedError;

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
  $Res call({String oldPassword, String password, String confirmPassword});
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
    Object? oldPassword = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
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
  $Res call({String oldPassword, String password, String confirmPassword});
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
    Object? oldPassword = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$_SignUpInputData(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
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
      {this.oldPassword = '', this.password = '', this.confirmPassword = ''});

  /// 現在のパスワード
  @override
  @JsonKey()
  final String oldPassword;

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
    return 'SignUpInputData(oldPassword: $oldPassword, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpInputData &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, oldPassword, password, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpInputDataCopyWith<_$_SignUpInputData> get copyWith =>
      __$$_SignUpInputDataCopyWithImpl<_$_SignUpInputData>(this, _$identity);
}

abstract class _SignUpInputData implements SignUpInputData {
  const factory _SignUpInputData(
      {final String oldPassword,
      final String password,
      final String confirmPassword}) = _$_SignUpInputData;

  @override

  /// 現在のパスワード
  String get oldPassword;
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

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
mixin _$EmailResendState {
  EmailResendData get inputData => throw _privateConstructorUsedError;
  bool get sending => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailResendStateCopyWith<EmailResendState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailResendStateCopyWith<$Res> {
  factory $EmailResendStateCopyWith(
          EmailResendState value, $Res Function(EmailResendState) then) =
      _$EmailResendStateCopyWithImpl<$Res, EmailResendState>;
  @useResult
  $Res call({EmailResendData inputData, bool sending});

  $EmailResendDataCopyWith<$Res> get inputData;
}

/// @nodoc
class _$EmailResendStateCopyWithImpl<$Res, $Val extends EmailResendState>
    implements $EmailResendStateCopyWith<$Res> {
  _$EmailResendStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? sending = null,
  }) {
    return _then(_value.copyWith(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as EmailResendData,
      sending: null == sending
          ? _value.sending
          : sending // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmailResendDataCopyWith<$Res> get inputData {
    return $EmailResendDataCopyWith<$Res>(_value.inputData, (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EmailResendStateCopyWith<$Res>
    implements $EmailResendStateCopyWith<$Res> {
  factory _$$_EmailResendStateCopyWith(
          _$_EmailResendState value, $Res Function(_$_EmailResendState) then) =
      __$$_EmailResendStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmailResendData inputData, bool sending});

  @override
  $EmailResendDataCopyWith<$Res> get inputData;
}

/// @nodoc
class __$$_EmailResendStateCopyWithImpl<$Res>
    extends _$EmailResendStateCopyWithImpl<$Res, _$_EmailResendState>
    implements _$$_EmailResendStateCopyWith<$Res> {
  __$$_EmailResendStateCopyWithImpl(
      _$_EmailResendState _value, $Res Function(_$_EmailResendState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? sending = null,
  }) {
    return _then(_$_EmailResendState(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as EmailResendData,
      sending: null == sending
          ? _value.sending
          : sending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EmailResendState implements _EmailResendState {
  const _$_EmailResendState(
      {this.inputData = const EmailResendData(), this.sending = false});

  @override
  @JsonKey()
  final EmailResendData inputData;
  @override
  @JsonKey()
  final bool sending;

  @override
  String toString() {
    return 'EmailResendState(inputData: $inputData, sending: $sending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailResendState &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.sending, sending) || other.sending == sending));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputData, sending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailResendStateCopyWith<_$_EmailResendState> get copyWith =>
      __$$_EmailResendStateCopyWithImpl<_$_EmailResendState>(this, _$identity);
}

abstract class _EmailResendState implements EmailResendState {
  const factory _EmailResendState(
      {final EmailResendData inputData,
      final bool sending}) = _$_EmailResendState;

  @override
  EmailResendData get inputData;
  @override
  bool get sending;
  @override
  @JsonKey(ignore: true)
  _$$_EmailResendStateCopyWith<_$_EmailResendState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmailResendData {
  /// メールアドレス
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailResendDataCopyWith<EmailResendData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailResendDataCopyWith<$Res> {
  factory $EmailResendDataCopyWith(
          EmailResendData value, $Res Function(EmailResendData) then) =
      _$EmailResendDataCopyWithImpl<$Res, EmailResendData>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$EmailResendDataCopyWithImpl<$Res, $Val extends EmailResendData>
    implements $EmailResendDataCopyWith<$Res> {
  _$EmailResendDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailResendDataCopyWith<$Res>
    implements $EmailResendDataCopyWith<$Res> {
  factory _$$_EmailResendDataCopyWith(
          _$_EmailResendData value, $Res Function(_$_EmailResendData) then) =
      __$$_EmailResendDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailResendDataCopyWithImpl<$Res>
    extends _$EmailResendDataCopyWithImpl<$Res, _$_EmailResendData>
    implements _$$_EmailResendDataCopyWith<$Res> {
  __$$_EmailResendDataCopyWithImpl(
      _$_EmailResendData _value, $Res Function(_$_EmailResendData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailResendData(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailResendData implements _EmailResendData {
  const _$_EmailResendData({this.email = ''});

  /// メールアドレス
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'EmailResendData(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailResendData &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailResendDataCopyWith<_$_EmailResendData> get copyWith =>
      __$$_EmailResendDataCopyWithImpl<_$_EmailResendData>(this, _$identity);
}

abstract class _EmailResendData implements EmailResendData {
  const factory _EmailResendData({final String email}) = _$_EmailResendData;

  @override

  /// メールアドレス
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_EmailResendDataCopyWith<_$_EmailResendData> get copyWith =>
      throw _privateConstructorUsedError;
}

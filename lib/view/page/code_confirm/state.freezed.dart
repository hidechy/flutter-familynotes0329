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
mixin _$CodeConfirmState {
  CodeConfirmData get inputData => throw _privateConstructorUsedError;
  bool get saving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CodeConfirmStateCopyWith<CodeConfirmState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeConfirmStateCopyWith<$Res> {
  factory $CodeConfirmStateCopyWith(
          CodeConfirmState value, $Res Function(CodeConfirmState) then) =
      _$CodeConfirmStateCopyWithImpl<$Res, CodeConfirmState>;
  @useResult
  $Res call({CodeConfirmData inputData, bool saving});

  $CodeConfirmDataCopyWith<$Res> get inputData;
}

/// @nodoc
class _$CodeConfirmStateCopyWithImpl<$Res, $Val extends CodeConfirmState>
    implements $CodeConfirmStateCopyWith<$Res> {
  _$CodeConfirmStateCopyWithImpl(this._value, this._then);

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
              as CodeConfirmData,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeConfirmDataCopyWith<$Res> get inputData {
    return $CodeConfirmDataCopyWith<$Res>(_value.inputData, (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CodeConfirmStateCopyWith<$Res>
    implements $CodeConfirmStateCopyWith<$Res> {
  factory _$$_CodeConfirmStateCopyWith(
          _$_CodeConfirmState value, $Res Function(_$_CodeConfirmState) then) =
      __$$_CodeConfirmStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CodeConfirmData inputData, bool saving});

  @override
  $CodeConfirmDataCopyWith<$Res> get inputData;
}

/// @nodoc
class __$$_CodeConfirmStateCopyWithImpl<$Res>
    extends _$CodeConfirmStateCopyWithImpl<$Res, _$_CodeConfirmState>
    implements _$$_CodeConfirmStateCopyWith<$Res> {
  __$$_CodeConfirmStateCopyWithImpl(
      _$_CodeConfirmState _value, $Res Function(_$_CodeConfirmState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? saving = null,
  }) {
    return _then(_$_CodeConfirmState(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as CodeConfirmData,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CodeConfirmState implements _CodeConfirmState {
  const _$_CodeConfirmState(
      {this.inputData = const CodeConfirmData(), this.saving = false});

  @override
  @JsonKey()
  final CodeConfirmData inputData;
  @override
  @JsonKey()
  final bool saving;

  @override
  String toString() {
    return 'CodeConfirmState(inputData: $inputData, saving: $saving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CodeConfirmState &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.saving, saving) || other.saving == saving));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputData, saving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CodeConfirmStateCopyWith<_$_CodeConfirmState> get copyWith =>
      __$$_CodeConfirmStateCopyWithImpl<_$_CodeConfirmState>(this, _$identity);
}

abstract class _CodeConfirmState implements CodeConfirmState {
  const factory _CodeConfirmState(
      {final CodeConfirmData inputData,
      final bool saving}) = _$_CodeConfirmState;

  @override
  CodeConfirmData get inputData;
  @override
  bool get saving;
  @override
  @JsonKey(ignore: true)
  _$$_CodeConfirmStateCopyWith<_$_CodeConfirmState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CodeConfirmData {
  /// 認証コード
  String get authCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CodeConfirmDataCopyWith<CodeConfirmData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeConfirmDataCopyWith<$Res> {
  factory $CodeConfirmDataCopyWith(
          CodeConfirmData value, $Res Function(CodeConfirmData) then) =
      _$CodeConfirmDataCopyWithImpl<$Res, CodeConfirmData>;
  @useResult
  $Res call({String authCode});
}

/// @nodoc
class _$CodeConfirmDataCopyWithImpl<$Res, $Val extends CodeConfirmData>
    implements $CodeConfirmDataCopyWith<$Res> {
  _$CodeConfirmDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authCode = null,
  }) {
    return _then(_value.copyWith(
      authCode: null == authCode
          ? _value.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CodeConfirmDataCopyWith<$Res>
    implements $CodeConfirmDataCopyWith<$Res> {
  factory _$$_CodeConfirmDataCopyWith(
          _$_CodeConfirmData value, $Res Function(_$_CodeConfirmData) then) =
      __$$_CodeConfirmDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String authCode});
}

/// @nodoc
class __$$_CodeConfirmDataCopyWithImpl<$Res>
    extends _$CodeConfirmDataCopyWithImpl<$Res, _$_CodeConfirmData>
    implements _$$_CodeConfirmDataCopyWith<$Res> {
  __$$_CodeConfirmDataCopyWithImpl(
      _$_CodeConfirmData _value, $Res Function(_$_CodeConfirmData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authCode = null,
  }) {
    return _then(_$_CodeConfirmData(
      authCode: null == authCode
          ? _value.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CodeConfirmData implements _CodeConfirmData {
  const _$_CodeConfirmData({this.authCode = ''});

  /// 認証コード
  @override
  @JsonKey()
  final String authCode;

  @override
  String toString() {
    return 'CodeConfirmData(authCode: $authCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CodeConfirmData &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CodeConfirmDataCopyWith<_$_CodeConfirmData> get copyWith =>
      __$$_CodeConfirmDataCopyWithImpl<_$_CodeConfirmData>(this, _$identity);
}

abstract class _CodeConfirmData implements CodeConfirmData {
  const factory _CodeConfirmData({final String authCode}) = _$_CodeConfirmData;

  @override

  /// 認証コード
  String get authCode;
  @override
  @JsonKey(ignore: true)
  _$$_CodeConfirmDataCopyWith<_$_CodeConfirmData> get copyWith =>
      throw _privateConstructorUsedError;
}

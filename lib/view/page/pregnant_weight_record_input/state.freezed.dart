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
mixin _$PregnantWeightRecordInputState {
  PregnantWeightInputData get inputData => throw _privateConstructorUsedError;
  bool get saving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PregnantWeightRecordInputStateCopyWith<PregnantWeightRecordInputState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregnantWeightRecordInputStateCopyWith<$Res> {
  factory $PregnantWeightRecordInputStateCopyWith(
          PregnantWeightRecordInputState value,
          $Res Function(PregnantWeightRecordInputState) then) =
      _$PregnantWeightRecordInputStateCopyWithImpl<$Res,
          PregnantWeightRecordInputState>;
  @useResult
  $Res call({PregnantWeightInputData inputData, bool saving});

  $PregnantWeightInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class _$PregnantWeightRecordInputStateCopyWithImpl<$Res,
        $Val extends PregnantWeightRecordInputState>
    implements $PregnantWeightRecordInputStateCopyWith<$Res> {
  _$PregnantWeightRecordInputStateCopyWithImpl(this._value, this._then);

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
              as PregnantWeightInputData,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PregnantWeightInputDataCopyWith<$Res> get inputData {
    return $PregnantWeightInputDataCopyWith<$Res>(_value.inputData, (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PregnantWeightRecordInputStateCopyWith<$Res>
    implements $PregnantWeightRecordInputStateCopyWith<$Res> {
  factory _$$_PregnantWeightRecordInputStateCopyWith(
          _$_PregnantWeightRecordInputState value,
          $Res Function(_$_PregnantWeightRecordInputState) then) =
      __$$_PregnantWeightRecordInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PregnantWeightInputData inputData, bool saving});

  @override
  $PregnantWeightInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class __$$_PregnantWeightRecordInputStateCopyWithImpl<$Res>
    extends _$PregnantWeightRecordInputStateCopyWithImpl<$Res,
        _$_PregnantWeightRecordInputState>
    implements _$$_PregnantWeightRecordInputStateCopyWith<$Res> {
  __$$_PregnantWeightRecordInputStateCopyWithImpl(
      _$_PregnantWeightRecordInputState _value,
      $Res Function(_$_PregnantWeightRecordInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? saving = null,
  }) {
    return _then(_$_PregnantWeightRecordInputState(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as PregnantWeightInputData,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PregnantWeightRecordInputState
    implements _PregnantWeightRecordInputState {
  const _$_PregnantWeightRecordInputState(
      {this.inputData = const PregnantWeightInputData(), this.saving = false});

  @override
  @JsonKey()
  final PregnantWeightInputData inputData;
  @override
  @JsonKey()
  final bool saving;

  @override
  String toString() {
    return 'PregnantWeightRecordInputState(inputData: $inputData, saving: $saving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PregnantWeightRecordInputState &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.saving, saving) || other.saving == saving));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputData, saving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PregnantWeightRecordInputStateCopyWith<_$_PregnantWeightRecordInputState>
      get copyWith => __$$_PregnantWeightRecordInputStateCopyWithImpl<
          _$_PregnantWeightRecordInputState>(this, _$identity);
}

abstract class _PregnantWeightRecordInputState
    implements PregnantWeightRecordInputState {
  const factory _PregnantWeightRecordInputState(
      {final PregnantWeightInputData inputData,
      final bool saving}) = _$_PregnantWeightRecordInputState;

  @override
  PregnantWeightInputData get inputData;
  @override
  bool get saving;
  @override
  @JsonKey(ignore: true)
  _$$_PregnantWeightRecordInputStateCopyWith<_$_PregnantWeightRecordInputState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PregnantWeightInputData {
  /// 日付
  DateTime? get date => throw _privateConstructorUsedError;

  /// 体重
  String? get weight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PregnantWeightInputDataCopyWith<PregnantWeightInputData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregnantWeightInputDataCopyWith<$Res> {
  factory $PregnantWeightInputDataCopyWith(PregnantWeightInputData value,
          $Res Function(PregnantWeightInputData) then) =
      _$PregnantWeightInputDataCopyWithImpl<$Res, PregnantWeightInputData>;
  @useResult
  $Res call({DateTime? date, String? weight});
}

/// @nodoc
class _$PregnantWeightInputDataCopyWithImpl<$Res,
        $Val extends PregnantWeightInputData>
    implements $PregnantWeightInputDataCopyWith<$Res> {
  _$PregnantWeightInputDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PregnantWeightInputDataCopyWith<$Res>
    implements $PregnantWeightInputDataCopyWith<$Res> {
  factory _$$_PregnantWeightInputDataCopyWith(_$_PregnantWeightInputData value,
          $Res Function(_$_PregnantWeightInputData) then) =
      __$$_PregnantWeightInputDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? date, String? weight});
}

/// @nodoc
class __$$_PregnantWeightInputDataCopyWithImpl<$Res>
    extends _$PregnantWeightInputDataCopyWithImpl<$Res,
        _$_PregnantWeightInputData>
    implements _$$_PregnantWeightInputDataCopyWith<$Res> {
  __$$_PregnantWeightInputDataCopyWithImpl(_$_PregnantWeightInputData _value,
      $Res Function(_$_PregnantWeightInputData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? weight = freezed,
  }) {
    return _then(_$_PregnantWeightInputData(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PregnantWeightInputData implements _PregnantWeightInputData {
  const _$_PregnantWeightInputData({this.date, this.weight});

  /// 日付
  @override
  final DateTime? date;

  /// 体重
  @override
  final String? weight;

  @override
  String toString() {
    return 'PregnantWeightInputData(date: $date, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PregnantWeightInputData &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PregnantWeightInputDataCopyWith<_$_PregnantWeightInputData>
      get copyWith =>
          __$$_PregnantWeightInputDataCopyWithImpl<_$_PregnantWeightInputData>(
              this, _$identity);
}

abstract class _PregnantWeightInputData implements PregnantWeightInputData {
  const factory _PregnantWeightInputData(
      {final DateTime? date,
      final String? weight}) = _$_PregnantWeightInputData;

  @override

  /// 日付
  DateTime? get date;
  @override

  /// 体重
  String? get weight;
  @override
  @JsonKey(ignore: true)
  _$$_PregnantWeightInputDataCopyWith<_$_PregnantWeightInputData>
      get copyWith => throw _privateConstructorUsedError;
}

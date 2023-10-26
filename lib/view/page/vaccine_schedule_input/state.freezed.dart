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
mixin _$VaccineScheduleInputState {
  VaccineScheduleInputDate? get inputDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VaccineScheduleInputStateCopyWith<VaccineScheduleInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineScheduleInputStateCopyWith<$Res> {
  factory $VaccineScheduleInputStateCopyWith(VaccineScheduleInputState value,
          $Res Function(VaccineScheduleInputState) then) =
      _$VaccineScheduleInputStateCopyWithImpl<$Res, VaccineScheduleInputState>;
  @useResult
  $Res call({VaccineScheduleInputDate? inputDate});

  $VaccineScheduleInputDateCopyWith<$Res>? get inputDate;
}

/// @nodoc
class _$VaccineScheduleInputStateCopyWithImpl<$Res,
        $Val extends VaccineScheduleInputState>
    implements $VaccineScheduleInputStateCopyWith<$Res> {
  _$VaccineScheduleInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputDate = freezed,
  }) {
    return _then(_value.copyWith(
      inputDate: freezed == inputDate
          ? _value.inputDate
          : inputDate // ignore: cast_nullable_to_non_nullable
              as VaccineScheduleInputDate?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VaccineScheduleInputDateCopyWith<$Res>? get inputDate {
    if (_value.inputDate == null) {
      return null;
    }

    return $VaccineScheduleInputDateCopyWith<$Res>(_value.inputDate!, (value) {
      return _then(_value.copyWith(inputDate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VaccineScheduleInputStateCopyWith<$Res>
    implements $VaccineScheduleInputStateCopyWith<$Res> {
  factory _$$_VaccineScheduleInputStateCopyWith(
          _$_VaccineScheduleInputState value,
          $Res Function(_$_VaccineScheduleInputState) then) =
      __$$_VaccineScheduleInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VaccineScheduleInputDate? inputDate});

  @override
  $VaccineScheduleInputDateCopyWith<$Res>? get inputDate;
}

/// @nodoc
class __$$_VaccineScheduleInputStateCopyWithImpl<$Res>
    extends _$VaccineScheduleInputStateCopyWithImpl<$Res,
        _$_VaccineScheduleInputState>
    implements _$$_VaccineScheduleInputStateCopyWith<$Res> {
  __$$_VaccineScheduleInputStateCopyWithImpl(
      _$_VaccineScheduleInputState _value,
      $Res Function(_$_VaccineScheduleInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputDate = freezed,
  }) {
    return _then(_$_VaccineScheduleInputState(
      inputDate: freezed == inputDate
          ? _value.inputDate
          : inputDate // ignore: cast_nullable_to_non_nullable
              as VaccineScheduleInputDate?,
    ));
  }
}

/// @nodoc

class _$_VaccineScheduleInputState implements _VaccineScheduleInputState {
  const _$_VaccineScheduleInputState({this.inputDate});

  @override
  final VaccineScheduleInputDate? inputDate;

  @override
  String toString() {
    return 'VaccineScheduleInputState(inputDate: $inputDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineScheduleInputState &&
            (identical(other.inputDate, inputDate) ||
                other.inputDate == inputDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineScheduleInputStateCopyWith<_$_VaccineScheduleInputState>
      get copyWith => __$$_VaccineScheduleInputStateCopyWithImpl<
          _$_VaccineScheduleInputState>(this, _$identity);
}

abstract class _VaccineScheduleInputState implements VaccineScheduleInputState {
  const factory _VaccineScheduleInputState(
          {final VaccineScheduleInputDate? inputDate}) =
      _$_VaccineScheduleInputState;

  @override
  VaccineScheduleInputDate? get inputDate;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineScheduleInputStateCopyWith<_$_VaccineScheduleInputState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VaccineScheduleInputDate {
  /// 予定日
  List<String> get dateList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VaccineScheduleInputDateCopyWith<VaccineScheduleInputDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineScheduleInputDateCopyWith<$Res> {
  factory $VaccineScheduleInputDateCopyWith(VaccineScheduleInputDate value,
          $Res Function(VaccineScheduleInputDate) then) =
      _$VaccineScheduleInputDateCopyWithImpl<$Res, VaccineScheduleInputDate>;
  @useResult
  $Res call({List<String> dateList});
}

/// @nodoc
class _$VaccineScheduleInputDateCopyWithImpl<$Res,
        $Val extends VaccineScheduleInputDate>
    implements $VaccineScheduleInputDateCopyWith<$Res> {
  _$VaccineScheduleInputDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateList = null,
  }) {
    return _then(_value.copyWith(
      dateList: null == dateList
          ? _value.dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineScheduleInputDateCopyWith<$Res>
    implements $VaccineScheduleInputDateCopyWith<$Res> {
  factory _$$_VaccineScheduleInputDateCopyWith(
          _$_VaccineScheduleInputDate value,
          $Res Function(_$_VaccineScheduleInputDate) then) =
      __$$_VaccineScheduleInputDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> dateList});
}

/// @nodoc
class __$$_VaccineScheduleInputDateCopyWithImpl<$Res>
    extends _$VaccineScheduleInputDateCopyWithImpl<$Res,
        _$_VaccineScheduleInputDate>
    implements _$$_VaccineScheduleInputDateCopyWith<$Res> {
  __$$_VaccineScheduleInputDateCopyWithImpl(_$_VaccineScheduleInputDate _value,
      $Res Function(_$_VaccineScheduleInputDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateList = null,
  }) {
    return _then(_$_VaccineScheduleInputDate(
      dateList: null == dateList
          ? _value._dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_VaccineScheduleInputDate implements _VaccineScheduleInputDate {
  const _$_VaccineScheduleInputDate({final List<String> dateList = const []})
      : _dateList = dateList;

  /// 予定日
  final List<String> _dateList;

  /// 予定日
  @override
  @JsonKey()
  List<String> get dateList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateList);
  }

  @override
  String toString() {
    return 'VaccineScheduleInputDate(dateList: $dateList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineScheduleInputDate &&
            const DeepCollectionEquality().equals(other._dateList, _dateList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dateList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineScheduleInputDateCopyWith<_$_VaccineScheduleInputDate>
      get copyWith => __$$_VaccineScheduleInputDateCopyWithImpl<
          _$_VaccineScheduleInputDate>(this, _$identity);
}

abstract class _VaccineScheduleInputDate implements VaccineScheduleInputDate {
  const factory _VaccineScheduleInputDate({final List<String> dateList}) =
      _$_VaccineScheduleInputDate;

  @override

  /// 予定日
  List<String> get dateList;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineScheduleInputDateCopyWith<_$_VaccineScheduleInputDate>
      get copyWith => throw _privateConstructorUsedError;
}

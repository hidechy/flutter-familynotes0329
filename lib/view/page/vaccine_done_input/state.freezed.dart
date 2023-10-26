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
mixin _$VaccineDoneInputState {
  VaccineDoneInputDate? get inputDate => throw _privateConstructorUsedError;
  bool get saving => throw _privateConstructorUsedError;
  int get expandedNum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VaccineDoneInputStateCopyWith<VaccineDoneInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineDoneInputStateCopyWith<$Res> {
  factory $VaccineDoneInputStateCopyWith(VaccineDoneInputState value,
          $Res Function(VaccineDoneInputState) then) =
      _$VaccineDoneInputStateCopyWithImpl<$Res, VaccineDoneInputState>;
  @useResult
  $Res call({VaccineDoneInputDate? inputDate, bool saving, int expandedNum});

  $VaccineDoneInputDateCopyWith<$Res>? get inputDate;
}

/// @nodoc
class _$VaccineDoneInputStateCopyWithImpl<$Res,
        $Val extends VaccineDoneInputState>
    implements $VaccineDoneInputStateCopyWith<$Res> {
  _$VaccineDoneInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputDate = freezed,
    Object? saving = null,
    Object? expandedNum = null,
  }) {
    return _then(_value.copyWith(
      inputDate: freezed == inputDate
          ? _value.inputDate
          : inputDate // ignore: cast_nullable_to_non_nullable
              as VaccineDoneInputDate?,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
      expandedNum: null == expandedNum
          ? _value.expandedNum
          : expandedNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VaccineDoneInputDateCopyWith<$Res>? get inputDate {
    if (_value.inputDate == null) {
      return null;
    }

    return $VaccineDoneInputDateCopyWith<$Res>(_value.inputDate!, (value) {
      return _then(_value.copyWith(inputDate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VaccineDoneInputStateCopyWith<$Res>
    implements $VaccineDoneInputStateCopyWith<$Res> {
  factory _$$_VaccineDoneInputStateCopyWith(_$_VaccineDoneInputState value,
          $Res Function(_$_VaccineDoneInputState) then) =
      __$$_VaccineDoneInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VaccineDoneInputDate? inputDate, bool saving, int expandedNum});

  @override
  $VaccineDoneInputDateCopyWith<$Res>? get inputDate;
}

/// @nodoc
class __$$_VaccineDoneInputStateCopyWithImpl<$Res>
    extends _$VaccineDoneInputStateCopyWithImpl<$Res, _$_VaccineDoneInputState>
    implements _$$_VaccineDoneInputStateCopyWith<$Res> {
  __$$_VaccineDoneInputStateCopyWithImpl(_$_VaccineDoneInputState _value,
      $Res Function(_$_VaccineDoneInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputDate = freezed,
    Object? saving = null,
    Object? expandedNum = null,
  }) {
    return _then(_$_VaccineDoneInputState(
      inputDate: freezed == inputDate
          ? _value.inputDate
          : inputDate // ignore: cast_nullable_to_non_nullable
              as VaccineDoneInputDate?,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
      expandedNum: null == expandedNum
          ? _value.expandedNum
          : expandedNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_VaccineDoneInputState implements _VaccineDoneInputState {
  const _$_VaccineDoneInputState(
      {this.inputDate, this.saving = false, this.expandedNum = -1});

  @override
  final VaccineDoneInputDate? inputDate;
  @override
  @JsonKey()
  final bool saving;
  @override
  @JsonKey()
  final int expandedNum;

  @override
  String toString() {
    return 'VaccineDoneInputState(inputDate: $inputDate, saving: $saving, expandedNum: $expandedNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineDoneInputState &&
            (identical(other.inputDate, inputDate) ||
                other.inputDate == inputDate) &&
            (identical(other.saving, saving) || other.saving == saving) &&
            (identical(other.expandedNum, expandedNum) ||
                other.expandedNum == expandedNum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputDate, saving, expandedNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineDoneInputStateCopyWith<_$_VaccineDoneInputState> get copyWith =>
      __$$_VaccineDoneInputStateCopyWithImpl<_$_VaccineDoneInputState>(
          this, _$identity);
}

abstract class _VaccineDoneInputState implements VaccineDoneInputState {
  const factory _VaccineDoneInputState(
      {final VaccineDoneInputDate? inputDate,
      final bool saving,
      final int expandedNum}) = _$_VaccineDoneInputState;

  @override
  VaccineDoneInputDate? get inputDate;
  @override
  bool get saving;
  @override
  int get expandedNum;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineDoneInputStateCopyWith<_$_VaccineDoneInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VaccineDoneInputDate {
  /// 実施日
  List<String> get dateList => throw _privateConstructorUsedError;

  /// 種類(pullDown select data)
  List<String> get selectItemList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VaccineDoneInputDateCopyWith<VaccineDoneInputDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineDoneInputDateCopyWith<$Res> {
  factory $VaccineDoneInputDateCopyWith(VaccineDoneInputDate value,
          $Res Function(VaccineDoneInputDate) then) =
      _$VaccineDoneInputDateCopyWithImpl<$Res, VaccineDoneInputDate>;
  @useResult
  $Res call({List<String> dateList, List<String> selectItemList});
}

/// @nodoc
class _$VaccineDoneInputDateCopyWithImpl<$Res,
        $Val extends VaccineDoneInputDate>
    implements $VaccineDoneInputDateCopyWith<$Res> {
  _$VaccineDoneInputDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateList = null,
    Object? selectItemList = null,
  }) {
    return _then(_value.copyWith(
      dateList: null == dateList
          ? _value.dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectItemList: null == selectItemList
          ? _value.selectItemList
          : selectItemList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineDoneInputDateCopyWith<$Res>
    implements $VaccineDoneInputDateCopyWith<$Res> {
  factory _$$_VaccineDoneInputDateCopyWith(_$_VaccineDoneInputDate value,
          $Res Function(_$_VaccineDoneInputDate) then) =
      __$$_VaccineDoneInputDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> dateList, List<String> selectItemList});
}

/// @nodoc
class __$$_VaccineDoneInputDateCopyWithImpl<$Res>
    extends _$VaccineDoneInputDateCopyWithImpl<$Res, _$_VaccineDoneInputDate>
    implements _$$_VaccineDoneInputDateCopyWith<$Res> {
  __$$_VaccineDoneInputDateCopyWithImpl(_$_VaccineDoneInputDate _value,
      $Res Function(_$_VaccineDoneInputDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateList = null,
    Object? selectItemList = null,
  }) {
    return _then(_$_VaccineDoneInputDate(
      dateList: null == dateList
          ? _value._dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectItemList: null == selectItemList
          ? _value._selectItemList
          : selectItemList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_VaccineDoneInputDate implements _VaccineDoneInputDate {
  const _$_VaccineDoneInputDate(
      {final List<String> dateList = const [],
      final List<String> selectItemList = const []})
      : _dateList = dateList,
        _selectItemList = selectItemList;

  /// 実施日
  final List<String> _dateList;

  /// 実施日
  @override
  @JsonKey()
  List<String> get dateList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateList);
  }

  /// 種類(pullDown select data)
  final List<String> _selectItemList;

  /// 種類(pullDown select data)
  @override
  @JsonKey()
  List<String> get selectItemList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectItemList);
  }

  @override
  String toString() {
    return 'VaccineDoneInputDate(dateList: $dateList, selectItemList: $selectItemList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineDoneInputDate &&
            const DeepCollectionEquality().equals(other._dateList, _dateList) &&
            const DeepCollectionEquality()
                .equals(other._selectItemList, _selectItemList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dateList),
      const DeepCollectionEquality().hash(_selectItemList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineDoneInputDateCopyWith<_$_VaccineDoneInputDate> get copyWith =>
      __$$_VaccineDoneInputDateCopyWithImpl<_$_VaccineDoneInputDate>(
          this, _$identity);
}

abstract class _VaccineDoneInputDate implements VaccineDoneInputDate {
  const factory _VaccineDoneInputDate(
      {final List<String> dateList,
      final List<String> selectItemList}) = _$_VaccineDoneInputDate;

  @override

  /// 実施日
  List<String> get dateList;
  @override

  /// 種類(pullDown select data)
  List<String> get selectItemList;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineDoneInputDateCopyWith<_$_VaccineDoneInputDate> get copyWith =>
      throw _privateConstructorUsedError;
}

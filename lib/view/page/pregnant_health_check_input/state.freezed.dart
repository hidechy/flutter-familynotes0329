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
mixin _$PregnantHealthCheckInputState {
  PregnantHealthCheckInputData get inputData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PregnantHealthCheckInputStateCopyWith<PregnantHealthCheckInputState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregnantHealthCheckInputStateCopyWith<$Res> {
  factory $PregnantHealthCheckInputStateCopyWith(
          PregnantHealthCheckInputState value,
          $Res Function(PregnantHealthCheckInputState) then) =
      _$PregnantHealthCheckInputStateCopyWithImpl<$Res,
          PregnantHealthCheckInputState>;
  @useResult
  $Res call({PregnantHealthCheckInputData inputData});

  $PregnantHealthCheckInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class _$PregnantHealthCheckInputStateCopyWithImpl<$Res,
        $Val extends PregnantHealthCheckInputState>
    implements $PregnantHealthCheckInputStateCopyWith<$Res> {
  _$PregnantHealthCheckInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
  }) {
    return _then(_value.copyWith(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as PregnantHealthCheckInputData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PregnantHealthCheckInputDataCopyWith<$Res> get inputData {
    return $PregnantHealthCheckInputDataCopyWith<$Res>(_value.inputData,
        (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PregnantHealthCheckInputStateCopyWith<$Res>
    implements $PregnantHealthCheckInputStateCopyWith<$Res> {
  factory _$$_PregnantHealthCheckInputStateCopyWith(
          _$_PregnantHealthCheckInputState value,
          $Res Function(_$_PregnantHealthCheckInputState) then) =
      __$$_PregnantHealthCheckInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PregnantHealthCheckInputData inputData});

  @override
  $PregnantHealthCheckInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class __$$_PregnantHealthCheckInputStateCopyWithImpl<$Res>
    extends _$PregnantHealthCheckInputStateCopyWithImpl<$Res,
        _$_PregnantHealthCheckInputState>
    implements _$$_PregnantHealthCheckInputStateCopyWith<$Res> {
  __$$_PregnantHealthCheckInputStateCopyWithImpl(
      _$_PregnantHealthCheckInputState _value,
      $Res Function(_$_PregnantHealthCheckInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
  }) {
    return _then(_$_PregnantHealthCheckInputState(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as PregnantHealthCheckInputData,
    ));
  }
}

/// @nodoc

class _$_PregnantHealthCheckInputState
    implements _PregnantHealthCheckInputState {
  const _$_PregnantHealthCheckInputState(
      {this.inputData = const PregnantHealthCheckInputData()});

  @override
  @JsonKey()
  final PregnantHealthCheckInputData inputData;

  @override
  String toString() {
    return 'PregnantHealthCheckInputState(inputData: $inputData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PregnantHealthCheckInputState &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PregnantHealthCheckInputStateCopyWith<_$_PregnantHealthCheckInputState>
      get copyWith => __$$_PregnantHealthCheckInputStateCopyWithImpl<
          _$_PregnantHealthCheckInputState>(this, _$identity);
}

abstract class _PregnantHealthCheckInputState
    implements PregnantHealthCheckInputState {
  const factory _PregnantHealthCheckInputState(
          {final PregnantHealthCheckInputData inputData}) =
      _$_PregnantHealthCheckInputState;

  @override
  PregnantHealthCheckInputData get inputData;
  @override
  @JsonKey(ignore: true)
  _$$_PregnantHealthCheckInputStateCopyWith<_$_PregnantHealthCheckInputState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PregnantHealthCheckInputData {
  /// 健診日
  DateTime? get date => throw _privateConstructorUsedError;

  /// 妊娠週数-週数
  String get week => throw _privateConstructorUsedError;

  /// 妊娠週数-日
  String get day => throw _privateConstructorUsedError;

  /// 体重
  String get weight => throw _privateConstructorUsedError;

  /// 健診結果
  Map<PregnantHealthCheckInputListItemType, bool> get selectedItem =>
      throw _privateConstructorUsedError;

  /// メモ
  String get memo => throw _privateConstructorUsedError;

  /// メモ入力コントローラー
  TextEditingController? get memoController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PregnantHealthCheckInputDataCopyWith<PregnantHealthCheckInputData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregnantHealthCheckInputDataCopyWith<$Res> {
  factory $PregnantHealthCheckInputDataCopyWith(
          PregnantHealthCheckInputData value,
          $Res Function(PregnantHealthCheckInputData) then) =
      _$PregnantHealthCheckInputDataCopyWithImpl<$Res,
          PregnantHealthCheckInputData>;
  @useResult
  $Res call(
      {DateTime? date,
      String week,
      String day,
      String weight,
      Map<PregnantHealthCheckInputListItemType, bool> selectedItem,
      String memo,
      TextEditingController? memoController});
}

/// @nodoc
class _$PregnantHealthCheckInputDataCopyWithImpl<$Res,
        $Val extends PregnantHealthCheckInputData>
    implements $PregnantHealthCheckInputDataCopyWith<$Res> {
  _$PregnantHealthCheckInputDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? week = null,
    Object? day = null,
    Object? weight = null,
    Object? selectedItem = null,
    Object? memo = null,
    Object? memoController = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      selectedItem: null == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as Map<PregnantHealthCheckInputListItemType, bool>,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      memoController: freezed == memoController
          ? _value.memoController
          : memoController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PregnantHealthCheckInputDataCopyWith<$Res>
    implements $PregnantHealthCheckInputDataCopyWith<$Res> {
  factory _$$_PregnantHealthCheckInputDataCopyWith(
          _$_PregnantHealthCheckInputData value,
          $Res Function(_$_PregnantHealthCheckInputData) then) =
      __$$_PregnantHealthCheckInputDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? date,
      String week,
      String day,
      String weight,
      Map<PregnantHealthCheckInputListItemType, bool> selectedItem,
      String memo,
      TextEditingController? memoController});
}

/// @nodoc
class __$$_PregnantHealthCheckInputDataCopyWithImpl<$Res>
    extends _$PregnantHealthCheckInputDataCopyWithImpl<$Res,
        _$_PregnantHealthCheckInputData>
    implements _$$_PregnantHealthCheckInputDataCopyWith<$Res> {
  __$$_PregnantHealthCheckInputDataCopyWithImpl(
      _$_PregnantHealthCheckInputData _value,
      $Res Function(_$_PregnantHealthCheckInputData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? week = null,
    Object? day = null,
    Object? weight = null,
    Object? selectedItem = null,
    Object? memo = null,
    Object? memoController = freezed,
  }) {
    return _then(_$_PregnantHealthCheckInputData(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      selectedItem: null == selectedItem
          ? _value._selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as Map<PregnantHealthCheckInputListItemType, bool>,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      memoController: freezed == memoController
          ? _value.memoController
          : memoController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc

class _$_PregnantHealthCheckInputData implements _PregnantHealthCheckInputData {
  const _$_PregnantHealthCheckInputData(
      {this.date,
      this.week = '',
      this.day = '',
      this.weight = '',
      final Map<PregnantHealthCheckInputListItemType, bool> selectedItem =
          const {},
      this.memo = '',
      this.memoController})
      : _selectedItem = selectedItem;

  /// 健診日
  @override
  final DateTime? date;

  /// 妊娠週数-週数
  @override
  @JsonKey()
  final String week;

  /// 妊娠週数-日
  @override
  @JsonKey()
  final String day;

  /// 体重
  @override
  @JsonKey()
  final String weight;

  /// 健診結果
  final Map<PregnantHealthCheckInputListItemType, bool> _selectedItem;

  /// 健診結果
  @override
  @JsonKey()
  Map<PregnantHealthCheckInputListItemType, bool> get selectedItem {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedItem);
  }

  /// メモ
  @override
  @JsonKey()
  final String memo;

  /// メモ入力コントローラー
  @override
  final TextEditingController? memoController;

  @override
  String toString() {
    return 'PregnantHealthCheckInputData(date: $date, week: $week, day: $day, weight: $weight, selectedItem: $selectedItem, memo: $memo, memoController: $memoController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PregnantHealthCheckInputData &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality()
                .equals(other._selectedItem, _selectedItem) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.memoController, memoController) ||
                other.memoController == memoController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, week, day, weight,
      const DeepCollectionEquality().hash(_selectedItem), memo, memoController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PregnantHealthCheckInputDataCopyWith<_$_PregnantHealthCheckInputData>
      get copyWith => __$$_PregnantHealthCheckInputDataCopyWithImpl<
          _$_PregnantHealthCheckInputData>(this, _$identity);
}

abstract class _PregnantHealthCheckInputData
    implements PregnantHealthCheckInputData {
  const factory _PregnantHealthCheckInputData(
          {final DateTime? date,
          final String week,
          final String day,
          final String weight,
          final Map<PregnantHealthCheckInputListItemType, bool> selectedItem,
          final String memo,
          final TextEditingController? memoController}) =
      _$_PregnantHealthCheckInputData;

  @override

  /// 健診日
  DateTime? get date;
  @override

  /// 妊娠週数-週数
  String get week;
  @override

  /// 妊娠週数-日
  String get day;
  @override

  /// 体重
  String get weight;
  @override

  /// 健診結果
  Map<PregnantHealthCheckInputListItemType, bool> get selectedItem;
  @override

  /// メモ
  String get memo;
  @override

  /// メモ入力コントローラー
  TextEditingController? get memoController;
  @override
  @JsonKey(ignore: true)
  _$$_PregnantHealthCheckInputDataCopyWith<_$_PregnantHealthCheckInputData>
      get copyWith => throw _privateConstructorUsedError;
}

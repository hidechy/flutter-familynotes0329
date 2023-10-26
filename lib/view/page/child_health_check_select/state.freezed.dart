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
mixin _$ChildHealthCheckSelectState {
// 乳幼児健診マスタ（健診一覧、入力画面のタイトルで使う）
  ChildCheckupTypesModel get childCheckupTypes =>
      throw _privateConstructorUsedError; // 健診履歴データ
  ChildCheckupListModel get checkupHistory =>
      throw _privateConstructorUsedError; // 選択した健診の種類を格納して入力画面へ渡す
  ChildHealthCheckInputData get inputData =>
      throw _privateConstructorUsedError; // 健診一覧の表示の制御
  bool get showHealthCheckList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildHealthCheckSelectStateCopyWith<ChildHealthCheckSelectState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildHealthCheckSelectStateCopyWith<$Res> {
  factory $ChildHealthCheckSelectStateCopyWith(
          ChildHealthCheckSelectState value,
          $Res Function(ChildHealthCheckSelectState) then) =
      _$ChildHealthCheckSelectStateCopyWithImpl<$Res,
          ChildHealthCheckSelectState>;
  @useResult
  $Res call(
      {ChildCheckupTypesModel childCheckupTypes,
      ChildCheckupListModel checkupHistory,
      ChildHealthCheckInputData inputData,
      bool showHealthCheckList});

  $ChildCheckupTypesModelCopyWith<$Res> get childCheckupTypes;
  $ChildCheckupListModelCopyWith<$Res> get checkupHistory;
  $ChildHealthCheckInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class _$ChildHealthCheckSelectStateCopyWithImpl<$Res,
        $Val extends ChildHealthCheckSelectState>
    implements $ChildHealthCheckSelectStateCopyWith<$Res> {
  _$ChildHealthCheckSelectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childCheckupTypes = null,
    Object? checkupHistory = null,
    Object? inputData = null,
    Object? showHealthCheckList = null,
  }) {
    return _then(_value.copyWith(
      childCheckupTypes: null == childCheckupTypes
          ? _value.childCheckupTypes
          : childCheckupTypes // ignore: cast_nullable_to_non_nullable
              as ChildCheckupTypesModel,
      checkupHistory: null == checkupHistory
          ? _value.checkupHistory
          : checkupHistory // ignore: cast_nullable_to_non_nullable
              as ChildCheckupListModel,
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as ChildHealthCheckInputData,
      showHealthCheckList: null == showHealthCheckList
          ? _value.showHealthCheckList
          : showHealthCheckList // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChildCheckupTypesModelCopyWith<$Res> get childCheckupTypes {
    return $ChildCheckupTypesModelCopyWith<$Res>(_value.childCheckupTypes,
        (value) {
      return _then(_value.copyWith(childCheckupTypes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChildCheckupListModelCopyWith<$Res> get checkupHistory {
    return $ChildCheckupListModelCopyWith<$Res>(_value.checkupHistory, (value) {
      return _then(_value.copyWith(checkupHistory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChildHealthCheckInputDataCopyWith<$Res> get inputData {
    return $ChildHealthCheckInputDataCopyWith<$Res>(_value.inputData, (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChildHealthCheckSelectStateCopyWith<$Res>
    implements $ChildHealthCheckSelectStateCopyWith<$Res> {
  factory _$$_ChildHealthCheckSelectStateCopyWith(
          _$_ChildHealthCheckSelectState value,
          $Res Function(_$_ChildHealthCheckSelectState) then) =
      __$$_ChildHealthCheckSelectStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChildCheckupTypesModel childCheckupTypes,
      ChildCheckupListModel checkupHistory,
      ChildHealthCheckInputData inputData,
      bool showHealthCheckList});

  @override
  $ChildCheckupTypesModelCopyWith<$Res> get childCheckupTypes;
  @override
  $ChildCheckupListModelCopyWith<$Res> get checkupHistory;
  @override
  $ChildHealthCheckInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class __$$_ChildHealthCheckSelectStateCopyWithImpl<$Res>
    extends _$ChildHealthCheckSelectStateCopyWithImpl<$Res,
        _$_ChildHealthCheckSelectState>
    implements _$$_ChildHealthCheckSelectStateCopyWith<$Res> {
  __$$_ChildHealthCheckSelectStateCopyWithImpl(
      _$_ChildHealthCheckSelectState _value,
      $Res Function(_$_ChildHealthCheckSelectState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childCheckupTypes = null,
    Object? checkupHistory = null,
    Object? inputData = null,
    Object? showHealthCheckList = null,
  }) {
    return _then(_$_ChildHealthCheckSelectState(
      childCheckupTypes: null == childCheckupTypes
          ? _value.childCheckupTypes
          : childCheckupTypes // ignore: cast_nullable_to_non_nullable
              as ChildCheckupTypesModel,
      checkupHistory: null == checkupHistory
          ? _value.checkupHistory
          : checkupHistory // ignore: cast_nullable_to_non_nullable
              as ChildCheckupListModel,
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as ChildHealthCheckInputData,
      showHealthCheckList: null == showHealthCheckList
          ? _value.showHealthCheckList
          : showHealthCheckList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChildHealthCheckSelectState implements _ChildHealthCheckSelectState {
  const _$_ChildHealthCheckSelectState(
      {this.childCheckupTypes = const ChildCheckupTypesModel(list: []),
      this.checkupHistory = const ChildCheckupListModel(list: []),
      this.inputData = const ChildHealthCheckInputData(),
      this.showHealthCheckList = false});

// 乳幼児健診マスタ（健診一覧、入力画面のタイトルで使う）
  @override
  @JsonKey()
  final ChildCheckupTypesModel childCheckupTypes;
// 健診履歴データ
  @override
  @JsonKey()
  final ChildCheckupListModel checkupHistory;
// 選択した健診の種類を格納して入力画面へ渡す
  @override
  @JsonKey()
  final ChildHealthCheckInputData inputData;
// 健診一覧の表示の制御
  @override
  @JsonKey()
  final bool showHealthCheckList;

  @override
  String toString() {
    return 'ChildHealthCheckSelectState(childCheckupTypes: $childCheckupTypes, checkupHistory: $checkupHistory, inputData: $inputData, showHealthCheckList: $showHealthCheckList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildHealthCheckSelectState &&
            (identical(other.childCheckupTypes, childCheckupTypes) ||
                other.childCheckupTypes == childCheckupTypes) &&
            (identical(other.checkupHistory, checkupHistory) ||
                other.checkupHistory == checkupHistory) &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.showHealthCheckList, showHealthCheckList) ||
                other.showHealthCheckList == showHealthCheckList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, childCheckupTypes,
      checkupHistory, inputData, showHealthCheckList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildHealthCheckSelectStateCopyWith<_$_ChildHealthCheckSelectState>
      get copyWith => __$$_ChildHealthCheckSelectStateCopyWithImpl<
          _$_ChildHealthCheckSelectState>(this, _$identity);
}

abstract class _ChildHealthCheckSelectState
    implements ChildHealthCheckSelectState {
  const factory _ChildHealthCheckSelectState(
      {final ChildCheckupTypesModel childCheckupTypes,
      final ChildCheckupListModel checkupHistory,
      final ChildHealthCheckInputData inputData,
      final bool showHealthCheckList}) = _$_ChildHealthCheckSelectState;

  @override // 乳幼児健診マスタ（健診一覧、入力画面のタイトルで使う）
  ChildCheckupTypesModel get childCheckupTypes;
  @override // 健診履歴データ
  ChildCheckupListModel get checkupHistory;
  @override // 選択した健診の種類を格納して入力画面へ渡す
  ChildHealthCheckInputData get inputData;
  @override // 健診一覧の表示の制御
  bool get showHealthCheckList;
  @override
  @JsonKey(ignore: true)
  _$$_ChildHealthCheckSelectStateCopyWith<_$_ChildHealthCheckSelectState>
      get copyWith => throw _privateConstructorUsedError;
}

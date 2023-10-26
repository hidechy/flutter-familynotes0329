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
mixin _$ChildWeightGraphState {
// 身体記録リスト
  List<GrowthGraphData> get growthGraphDataList =>
      throw _privateConstructorUsedError; // 成長曲線データリスト
  List<BandGraphData> get bandGraphDataList =>
      throw _privateConstructorUsedError; // 選択中のグラフ種別
  ChildGraphType get selectedGraphType =>
      throw _privateConstructorUsedError; // 選択中の対象期間
  ChildGrapthPreriod get selectedChildGrapthPreriod =>
      throw _privateConstructorUsedError;
  bool get showPeriodPulldown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildWeightGraphStateCopyWith<ChildWeightGraphState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildWeightGraphStateCopyWith<$Res> {
  factory $ChildWeightGraphStateCopyWith(ChildWeightGraphState value,
          $Res Function(ChildWeightGraphState) then) =
      _$ChildWeightGraphStateCopyWithImpl<$Res, ChildWeightGraphState>;
  @useResult
  $Res call(
      {List<GrowthGraphData> growthGraphDataList,
      List<BandGraphData> bandGraphDataList,
      ChildGraphType selectedGraphType,
      ChildGrapthPreriod selectedChildGrapthPreriod,
      bool showPeriodPulldown});
}

/// @nodoc
class _$ChildWeightGraphStateCopyWithImpl<$Res,
        $Val extends ChildWeightGraphState>
    implements $ChildWeightGraphStateCopyWith<$Res> {
  _$ChildWeightGraphStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? growthGraphDataList = null,
    Object? bandGraphDataList = null,
    Object? selectedGraphType = null,
    Object? selectedChildGrapthPreriod = null,
    Object? showPeriodPulldown = null,
  }) {
    return _then(_value.copyWith(
      growthGraphDataList: null == growthGraphDataList
          ? _value.growthGraphDataList
          : growthGraphDataList // ignore: cast_nullable_to_non_nullable
              as List<GrowthGraphData>,
      bandGraphDataList: null == bandGraphDataList
          ? _value.bandGraphDataList
          : bandGraphDataList // ignore: cast_nullable_to_non_nullable
              as List<BandGraphData>,
      selectedGraphType: null == selectedGraphType
          ? _value.selectedGraphType
          : selectedGraphType // ignore: cast_nullable_to_non_nullable
              as ChildGraphType,
      selectedChildGrapthPreriod: null == selectedChildGrapthPreriod
          ? _value.selectedChildGrapthPreriod
          : selectedChildGrapthPreriod // ignore: cast_nullable_to_non_nullable
              as ChildGrapthPreriod,
      showPeriodPulldown: null == showPeriodPulldown
          ? _value.showPeriodPulldown
          : showPeriodPulldown // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildWeightGraphStateCopyWith<$Res>
    implements $ChildWeightGraphStateCopyWith<$Res> {
  factory _$$_ChildWeightGraphStateCopyWith(_$_ChildWeightGraphState value,
          $Res Function(_$_ChildWeightGraphState) then) =
      __$$_ChildWeightGraphStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GrowthGraphData> growthGraphDataList,
      List<BandGraphData> bandGraphDataList,
      ChildGraphType selectedGraphType,
      ChildGrapthPreriod selectedChildGrapthPreriod,
      bool showPeriodPulldown});
}

/// @nodoc
class __$$_ChildWeightGraphStateCopyWithImpl<$Res>
    extends _$ChildWeightGraphStateCopyWithImpl<$Res, _$_ChildWeightGraphState>
    implements _$$_ChildWeightGraphStateCopyWith<$Res> {
  __$$_ChildWeightGraphStateCopyWithImpl(_$_ChildWeightGraphState _value,
      $Res Function(_$_ChildWeightGraphState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? growthGraphDataList = null,
    Object? bandGraphDataList = null,
    Object? selectedGraphType = null,
    Object? selectedChildGrapthPreriod = null,
    Object? showPeriodPulldown = null,
  }) {
    return _then(_$_ChildWeightGraphState(
      growthGraphDataList: null == growthGraphDataList
          ? _value._growthGraphDataList
          : growthGraphDataList // ignore: cast_nullable_to_non_nullable
              as List<GrowthGraphData>,
      bandGraphDataList: null == bandGraphDataList
          ? _value._bandGraphDataList
          : bandGraphDataList // ignore: cast_nullable_to_non_nullable
              as List<BandGraphData>,
      selectedGraphType: null == selectedGraphType
          ? _value.selectedGraphType
          : selectedGraphType // ignore: cast_nullable_to_non_nullable
              as ChildGraphType,
      selectedChildGrapthPreriod: null == selectedChildGrapthPreriod
          ? _value.selectedChildGrapthPreriod
          : selectedChildGrapthPreriod // ignore: cast_nullable_to_non_nullable
              as ChildGrapthPreriod,
      showPeriodPulldown: null == showPeriodPulldown
          ? _value.showPeriodPulldown
          : showPeriodPulldown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChildWeightGraphState implements _ChildWeightGraphState {
  const _$_ChildWeightGraphState(
      {final List<GrowthGraphData> growthGraphDataList = const [],
      final List<BandGraphData> bandGraphDataList = const [],
      this.selectedGraphType = ChildGraphType.heightAndWeight,
      this.selectedChildGrapthPreriod = ChildGrapthPreriod.first,
      this.showPeriodPulldown = false})
      : _growthGraphDataList = growthGraphDataList,
        _bandGraphDataList = bandGraphDataList;

// 身体記録リスト
  final List<GrowthGraphData> _growthGraphDataList;
// 身体記録リスト
  @override
  @JsonKey()
  List<GrowthGraphData> get growthGraphDataList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_growthGraphDataList);
  }

// 成長曲線データリスト
  final List<BandGraphData> _bandGraphDataList;
// 成長曲線データリスト
  @override
  @JsonKey()
  List<BandGraphData> get bandGraphDataList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bandGraphDataList);
  }

// 選択中のグラフ種別
  @override
  @JsonKey()
  final ChildGraphType selectedGraphType;
// 選択中の対象期間
  @override
  @JsonKey()
  final ChildGrapthPreriod selectedChildGrapthPreriod;
  @override
  @JsonKey()
  final bool showPeriodPulldown;

  @override
  String toString() {
    return 'ChildWeightGraphState(growthGraphDataList: $growthGraphDataList, bandGraphDataList: $bandGraphDataList, selectedGraphType: $selectedGraphType, selectedChildGrapthPreriod: $selectedChildGrapthPreriod, showPeriodPulldown: $showPeriodPulldown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildWeightGraphState &&
            const DeepCollectionEquality()
                .equals(other._growthGraphDataList, _growthGraphDataList) &&
            const DeepCollectionEquality()
                .equals(other._bandGraphDataList, _bandGraphDataList) &&
            (identical(other.selectedGraphType, selectedGraphType) ||
                other.selectedGraphType == selectedGraphType) &&
            (identical(other.selectedChildGrapthPreriod,
                    selectedChildGrapthPreriod) ||
                other.selectedChildGrapthPreriod ==
                    selectedChildGrapthPreriod) &&
            (identical(other.showPeriodPulldown, showPeriodPulldown) ||
                other.showPeriodPulldown == showPeriodPulldown));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_growthGraphDataList),
      const DeepCollectionEquality().hash(_bandGraphDataList),
      selectedGraphType,
      selectedChildGrapthPreriod,
      showPeriodPulldown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildWeightGraphStateCopyWith<_$_ChildWeightGraphState> get copyWith =>
      __$$_ChildWeightGraphStateCopyWithImpl<_$_ChildWeightGraphState>(
          this, _$identity);
}

abstract class _ChildWeightGraphState implements ChildWeightGraphState {
  const factory _ChildWeightGraphState(
      {final List<GrowthGraphData> growthGraphDataList,
      final List<BandGraphData> bandGraphDataList,
      final ChildGraphType selectedGraphType,
      final ChildGrapthPreriod selectedChildGrapthPreriod,
      final bool showPeriodPulldown}) = _$_ChildWeightGraphState;

  @override // 身体記録リスト
  List<GrowthGraphData> get growthGraphDataList;
  @override // 成長曲線データリスト
  List<BandGraphData> get bandGraphDataList;
  @override // 選択中のグラフ種別
  ChildGraphType get selectedGraphType;
  @override // 選択中の対象期間
  ChildGrapthPreriod get selectedChildGrapthPreriod;
  @override
  bool get showPeriodPulldown;
  @override
  @JsonKey(ignore: true)
  _$$_ChildWeightGraphStateCopyWith<_$_ChildWeightGraphState> get copyWith =>
      throw _privateConstructorUsedError;
}

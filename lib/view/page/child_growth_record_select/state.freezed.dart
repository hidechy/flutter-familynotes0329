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
mixin _$ChildGrowthRecordSelectState {
  ChildGrowthRecordListModel get recordList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildGrowthRecordSelectStateCopyWith<ChildGrowthRecordSelectState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildGrowthRecordSelectStateCopyWith<$Res> {
  factory $ChildGrowthRecordSelectStateCopyWith(
          ChildGrowthRecordSelectState value,
          $Res Function(ChildGrowthRecordSelectState) then) =
      _$ChildGrowthRecordSelectStateCopyWithImpl<$Res,
          ChildGrowthRecordSelectState>;
  @useResult
  $Res call({ChildGrowthRecordListModel recordList});

  $ChildGrowthRecordListModelCopyWith<$Res> get recordList;
}

/// @nodoc
class _$ChildGrowthRecordSelectStateCopyWithImpl<$Res,
        $Val extends ChildGrowthRecordSelectState>
    implements $ChildGrowthRecordSelectStateCopyWith<$Res> {
  _$ChildGrowthRecordSelectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordList = null,
  }) {
    return _then(_value.copyWith(
      recordList: null == recordList
          ? _value.recordList
          : recordList // ignore: cast_nullable_to_non_nullable
              as ChildGrowthRecordListModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChildGrowthRecordListModelCopyWith<$Res> get recordList {
    return $ChildGrowthRecordListModelCopyWith<$Res>(_value.recordList,
        (value) {
      return _then(_value.copyWith(recordList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChildGrowthRecordSelectStateCopyWith<$Res>
    implements $ChildGrowthRecordSelectStateCopyWith<$Res> {
  factory _$$_ChildGrowthRecordSelectStateCopyWith(
          _$_ChildGrowthRecordSelectState value,
          $Res Function(_$_ChildGrowthRecordSelectState) then) =
      __$$_ChildGrowthRecordSelectStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChildGrowthRecordListModel recordList});

  @override
  $ChildGrowthRecordListModelCopyWith<$Res> get recordList;
}

/// @nodoc
class __$$_ChildGrowthRecordSelectStateCopyWithImpl<$Res>
    extends _$ChildGrowthRecordSelectStateCopyWithImpl<$Res,
        _$_ChildGrowthRecordSelectState>
    implements _$$_ChildGrowthRecordSelectStateCopyWith<$Res> {
  __$$_ChildGrowthRecordSelectStateCopyWithImpl(
      _$_ChildGrowthRecordSelectState _value,
      $Res Function(_$_ChildGrowthRecordSelectState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordList = null,
  }) {
    return _then(_$_ChildGrowthRecordSelectState(
      recordList: null == recordList
          ? _value.recordList
          : recordList // ignore: cast_nullable_to_non_nullable
              as ChildGrowthRecordListModel,
    ));
  }
}

/// @nodoc

class _$_ChildGrowthRecordSelectState implements _ChildGrowthRecordSelectState {
  const _$_ChildGrowthRecordSelectState(
      {this.recordList = const ChildGrowthRecordListModel(list: [])});

  @override
  @JsonKey()
  final ChildGrowthRecordListModel recordList;

  @override
  String toString() {
    return 'ChildGrowthRecordSelectState(recordList: $recordList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildGrowthRecordSelectState &&
            (identical(other.recordList, recordList) ||
                other.recordList == recordList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recordList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildGrowthRecordSelectStateCopyWith<_$_ChildGrowthRecordSelectState>
      get copyWith => __$$_ChildGrowthRecordSelectStateCopyWithImpl<
          _$_ChildGrowthRecordSelectState>(this, _$identity);
}

abstract class _ChildGrowthRecordSelectState
    implements ChildGrowthRecordSelectState {
  const factory _ChildGrowthRecordSelectState(
          {final ChildGrowthRecordListModel recordList}) =
      _$_ChildGrowthRecordSelectState;

  @override
  ChildGrowthRecordListModel get recordList;
  @override
  @JsonKey(ignore: true)
  _$$_ChildGrowthRecordSelectStateCopyWith<_$_ChildGrowthRecordSelectState>
      get copyWith => throw _privateConstructorUsedError;
}

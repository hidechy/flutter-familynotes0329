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
mixin _$PregnantWeightRecordSelectState {
  PregnantWeightRecordListModel get recordList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PregnantWeightRecordSelectStateCopyWith<PregnantWeightRecordSelectState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregnantWeightRecordSelectStateCopyWith<$Res> {
  factory $PregnantWeightRecordSelectStateCopyWith(
          PregnantWeightRecordSelectState value,
          $Res Function(PregnantWeightRecordSelectState) then) =
      _$PregnantWeightRecordSelectStateCopyWithImpl<$Res,
          PregnantWeightRecordSelectState>;
  @useResult
  $Res call({PregnantWeightRecordListModel recordList});

  $PregnantWeightRecordListModelCopyWith<$Res> get recordList;
}

/// @nodoc
class _$PregnantWeightRecordSelectStateCopyWithImpl<$Res,
        $Val extends PregnantWeightRecordSelectState>
    implements $PregnantWeightRecordSelectStateCopyWith<$Res> {
  _$PregnantWeightRecordSelectStateCopyWithImpl(this._value, this._then);

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
              as PregnantWeightRecordListModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PregnantWeightRecordListModelCopyWith<$Res> get recordList {
    return $PregnantWeightRecordListModelCopyWith<$Res>(_value.recordList,
        (value) {
      return _then(_value.copyWith(recordList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PregnantWeightRecordSelectStateCopyWith<$Res>
    implements $PregnantWeightRecordSelectStateCopyWith<$Res> {
  factory _$$_PregnantWeightRecordSelectStateCopyWith(
          _$_PregnantWeightRecordSelectState value,
          $Res Function(_$_PregnantWeightRecordSelectState) then) =
      __$$_PregnantWeightRecordSelectStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PregnantWeightRecordListModel recordList});

  @override
  $PregnantWeightRecordListModelCopyWith<$Res> get recordList;
}

/// @nodoc
class __$$_PregnantWeightRecordSelectStateCopyWithImpl<$Res>
    extends _$PregnantWeightRecordSelectStateCopyWithImpl<$Res,
        _$_PregnantWeightRecordSelectState>
    implements _$$_PregnantWeightRecordSelectStateCopyWith<$Res> {
  __$$_PregnantWeightRecordSelectStateCopyWithImpl(
      _$_PregnantWeightRecordSelectState _value,
      $Res Function(_$_PregnantWeightRecordSelectState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordList = null,
  }) {
    return _then(_$_PregnantWeightRecordSelectState(
      recordList: null == recordList
          ? _value.recordList
          : recordList // ignore: cast_nullable_to_non_nullable
              as PregnantWeightRecordListModel,
    ));
  }
}

/// @nodoc

class _$_PregnantWeightRecordSelectState
    implements _PregnantWeightRecordSelectState {
  const _$_PregnantWeightRecordSelectState(
      {this.recordList = const PregnantWeightRecordListModel(list: [])});

  @override
  @JsonKey()
  final PregnantWeightRecordListModel recordList;

  @override
  String toString() {
    return 'PregnantWeightRecordSelectState(recordList: $recordList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PregnantWeightRecordSelectState &&
            (identical(other.recordList, recordList) ||
                other.recordList == recordList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recordList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PregnantWeightRecordSelectStateCopyWith<
          _$_PregnantWeightRecordSelectState>
      get copyWith => __$$_PregnantWeightRecordSelectStateCopyWithImpl<
          _$_PregnantWeightRecordSelectState>(this, _$identity);
}

abstract class _PregnantWeightRecordSelectState
    implements PregnantWeightRecordSelectState {
  const factory _PregnantWeightRecordSelectState(
          {final PregnantWeightRecordListModel recordList}) =
      _$_PregnantWeightRecordSelectState;

  @override
  PregnantWeightRecordListModel get recordList;
  @override
  @JsonKey(ignore: true)
  _$$_PregnantWeightRecordSelectStateCopyWith<
          _$_PregnantWeightRecordSelectState>
      get copyWith => throw _privateConstructorUsedError;
}

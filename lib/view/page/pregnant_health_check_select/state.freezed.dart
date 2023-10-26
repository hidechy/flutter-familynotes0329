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
mixin _$PregnantHealthCheckSelectState {
  CheckupListModel get checkupList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PregnantHealthCheckSelectStateCopyWith<PregnantHealthCheckSelectState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregnantHealthCheckSelectStateCopyWith<$Res> {
  factory $PregnantHealthCheckSelectStateCopyWith(
          PregnantHealthCheckSelectState value,
          $Res Function(PregnantHealthCheckSelectState) then) =
      _$PregnantHealthCheckSelectStateCopyWithImpl<$Res,
          PregnantHealthCheckSelectState>;
  @useResult
  $Res call({CheckupListModel checkupList});

  $CheckupListModelCopyWith<$Res> get checkupList;
}

/// @nodoc
class _$PregnantHealthCheckSelectStateCopyWithImpl<$Res,
        $Val extends PregnantHealthCheckSelectState>
    implements $PregnantHealthCheckSelectStateCopyWith<$Res> {
  _$PregnantHealthCheckSelectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkupList = null,
  }) {
    return _then(_value.copyWith(
      checkupList: null == checkupList
          ? _value.checkupList
          : checkupList // ignore: cast_nullable_to_non_nullable
              as CheckupListModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CheckupListModelCopyWith<$Res> get checkupList {
    return $CheckupListModelCopyWith<$Res>(_value.checkupList, (value) {
      return _then(_value.copyWith(checkupList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PregnantHealthCheckSelectStateCopyWith<$Res>
    implements $PregnantHealthCheckSelectStateCopyWith<$Res> {
  factory _$$_PregnantHealthCheckSelectStateCopyWith(
          _$_PregnantHealthCheckSelectState value,
          $Res Function(_$_PregnantHealthCheckSelectState) then) =
      __$$_PregnantHealthCheckSelectStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CheckupListModel checkupList});

  @override
  $CheckupListModelCopyWith<$Res> get checkupList;
}

/// @nodoc
class __$$_PregnantHealthCheckSelectStateCopyWithImpl<$Res>
    extends _$PregnantHealthCheckSelectStateCopyWithImpl<$Res,
        _$_PregnantHealthCheckSelectState>
    implements _$$_PregnantHealthCheckSelectStateCopyWith<$Res> {
  __$$_PregnantHealthCheckSelectStateCopyWithImpl(
      _$_PregnantHealthCheckSelectState _value,
      $Res Function(_$_PregnantHealthCheckSelectState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkupList = null,
  }) {
    return _then(_$_PregnantHealthCheckSelectState(
      checkupList: null == checkupList
          ? _value.checkupList
          : checkupList // ignore: cast_nullable_to_non_nullable
              as CheckupListModel,
    ));
  }
}

/// @nodoc

class _$_PregnantHealthCheckSelectState
    implements _PregnantHealthCheckSelectState {
  const _$_PregnantHealthCheckSelectState(
      {this.checkupList = const CheckupListModel(list: [])});

  @override
  @JsonKey()
  final CheckupListModel checkupList;

  @override
  String toString() {
    return 'PregnantHealthCheckSelectState(checkupList: $checkupList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PregnantHealthCheckSelectState &&
            (identical(other.checkupList, checkupList) ||
                other.checkupList == checkupList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checkupList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PregnantHealthCheckSelectStateCopyWith<_$_PregnantHealthCheckSelectState>
      get copyWith => __$$_PregnantHealthCheckSelectStateCopyWithImpl<
          _$_PregnantHealthCheckSelectState>(this, _$identity);
}

abstract class _PregnantHealthCheckSelectState
    implements PregnantHealthCheckSelectState {
  const factory _PregnantHealthCheckSelectState(
      {final CheckupListModel checkupList}) = _$_PregnantHealthCheckSelectState;

  @override
  CheckupListModel get checkupList;
  @override
  @JsonKey(ignore: true)
  _$$_PregnantHealthCheckSelectStateCopyWith<_$_PregnantHealthCheckSelectState>
      get copyWith => throw _privateConstructorUsedError;
}

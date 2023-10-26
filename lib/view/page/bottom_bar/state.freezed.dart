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
mixin _$NoticeReadConfirmationState {
// 通信中
  bool get fetching =>
      throw _privateConstructorUsedError; // 新着確認 ※該当データが1件以上なら1、0件なら0
  int get isArrival => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoticeReadConfirmationStateCopyWith<NoticeReadConfirmationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeReadConfirmationStateCopyWith<$Res> {
  factory $NoticeReadConfirmationStateCopyWith(
          NoticeReadConfirmationState value,
          $Res Function(NoticeReadConfirmationState) then) =
      _$NoticeReadConfirmationStateCopyWithImpl<$Res,
          NoticeReadConfirmationState>;
  @useResult
  $Res call({bool fetching, int isArrival});
}

/// @nodoc
class _$NoticeReadConfirmationStateCopyWithImpl<$Res,
        $Val extends NoticeReadConfirmationState>
    implements $NoticeReadConfirmationStateCopyWith<$Res> {
  _$NoticeReadConfirmationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? isArrival = null,
  }) {
    return _then(_value.copyWith(
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isArrival: null == isArrival
          ? _value.isArrival
          : isArrival // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoticeReadConfirmationStateCopyWith<$Res>
    implements $NoticeReadConfirmationStateCopyWith<$Res> {
  factory _$$_NoticeReadConfirmationStateCopyWith(
          _$_NoticeReadConfirmationState value,
          $Res Function(_$_NoticeReadConfirmationState) then) =
      __$$_NoticeReadConfirmationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool fetching, int isArrival});
}

/// @nodoc
class __$$_NoticeReadConfirmationStateCopyWithImpl<$Res>
    extends _$NoticeReadConfirmationStateCopyWithImpl<$Res,
        _$_NoticeReadConfirmationState>
    implements _$$_NoticeReadConfirmationStateCopyWith<$Res> {
  __$$_NoticeReadConfirmationStateCopyWithImpl(
      _$_NoticeReadConfirmationState _value,
      $Res Function(_$_NoticeReadConfirmationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? isArrival = null,
  }) {
    return _then(_$_NoticeReadConfirmationState(
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isArrival: null == isArrival
          ? _value.isArrival
          : isArrival // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NoticeReadConfirmationState implements _NoticeReadConfirmationState {
  const _$_NoticeReadConfirmationState(
      {this.fetching = true, required this.isArrival});

// 通信中
  @override
  @JsonKey()
  final bool fetching;
// 新着確認 ※該当データが1件以上なら1、0件なら0
  @override
  final int isArrival;

  @override
  String toString() {
    return 'NoticeReadConfirmationState(fetching: $fetching, isArrival: $isArrival)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeReadConfirmationState &&
            (identical(other.fetching, fetching) ||
                other.fetching == fetching) &&
            (identical(other.isArrival, isArrival) ||
                other.isArrival == isArrival));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetching, isArrival);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoticeReadConfirmationStateCopyWith<_$_NoticeReadConfirmationState>
      get copyWith => __$$_NoticeReadConfirmationStateCopyWithImpl<
          _$_NoticeReadConfirmationState>(this, _$identity);
}

abstract class _NoticeReadConfirmationState
    implements NoticeReadConfirmationState {
  const factory _NoticeReadConfirmationState(
      {final bool fetching,
      required final int isArrival}) = _$_NoticeReadConfirmationState;

  @override // 通信中
  bool get fetching;
  @override // 新着確認 ※該当データが1件以上なら1、0件なら0
  int get isArrival;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeReadConfirmationStateCopyWith<_$_NoticeReadConfirmationState>
      get copyWith => throw _privateConstructorUsedError;
}

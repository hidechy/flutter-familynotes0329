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
mixin _$CheckSheetGrowthResultState {
  GrowthQuestionAnswerResultType get resultType =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckSheetGrowthResultStateCopyWith<CheckSheetGrowthResultState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSheetGrowthResultStateCopyWith<$Res> {
  factory $CheckSheetGrowthResultStateCopyWith(
          CheckSheetGrowthResultState value,
          $Res Function(CheckSheetGrowthResultState) then) =
      _$CheckSheetGrowthResultStateCopyWithImpl<$Res,
          CheckSheetGrowthResultState>;
  @useResult
  $Res call({GrowthQuestionAnswerResultType resultType});
}

/// @nodoc
class _$CheckSheetGrowthResultStateCopyWithImpl<$Res,
        $Val extends CheckSheetGrowthResultState>
    implements $CheckSheetGrowthResultStateCopyWith<$Res> {
  _$CheckSheetGrowthResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultType = null,
  }) {
    return _then(_value.copyWith(
      resultType: null == resultType
          ? _value.resultType
          : resultType // ignore: cast_nullable_to_non_nullable
              as GrowthQuestionAnswerResultType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckSheetGrowthResultStateCopyWith<$Res>
    implements $CheckSheetGrowthResultStateCopyWith<$Res> {
  factory _$$_CheckSheetGrowthResultStateCopyWith(
          _$_CheckSheetGrowthResultState value,
          $Res Function(_$_CheckSheetGrowthResultState) then) =
      __$$_CheckSheetGrowthResultStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GrowthQuestionAnswerResultType resultType});
}

/// @nodoc
class __$$_CheckSheetGrowthResultStateCopyWithImpl<$Res>
    extends _$CheckSheetGrowthResultStateCopyWithImpl<$Res,
        _$_CheckSheetGrowthResultState>
    implements _$$_CheckSheetGrowthResultStateCopyWith<$Res> {
  __$$_CheckSheetGrowthResultStateCopyWithImpl(
      _$_CheckSheetGrowthResultState _value,
      $Res Function(_$_CheckSheetGrowthResultState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultType = null,
  }) {
    return _then(_$_CheckSheetGrowthResultState(
      resultType: null == resultType
          ? _value.resultType
          : resultType // ignore: cast_nullable_to_non_nullable
              as GrowthQuestionAnswerResultType,
    ));
  }
}

/// @nodoc

class _$_CheckSheetGrowthResultState implements _CheckSheetGrowthResultState {
  const _$_CheckSheetGrowthResultState({required this.resultType});

  @override
  final GrowthQuestionAnswerResultType resultType;

  @override
  String toString() {
    return 'CheckSheetGrowthResultState(resultType: $resultType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckSheetGrowthResultState &&
            (identical(other.resultType, resultType) ||
                other.resultType == resultType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resultType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckSheetGrowthResultStateCopyWith<_$_CheckSheetGrowthResultState>
      get copyWith => __$$_CheckSheetGrowthResultStateCopyWithImpl<
          _$_CheckSheetGrowthResultState>(this, _$identity);
}

abstract class _CheckSheetGrowthResultState
    implements CheckSheetGrowthResultState {
  const factory _CheckSheetGrowthResultState(
          {required final GrowthQuestionAnswerResultType resultType}) =
      _$_CheckSheetGrowthResultState;

  @override
  GrowthQuestionAnswerResultType get resultType;
  @override
  @JsonKey(ignore: true)
  _$$_CheckSheetGrowthResultStateCopyWith<_$_CheckSheetGrowthResultState>
      get copyWith => throw _privateConstructorUsedError;
}

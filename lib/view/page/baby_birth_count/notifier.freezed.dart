// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BabyCountSelectState {
  BabyCountSelectData? get inputData => throw _privateConstructorUsedError;
  FormControl<String>? get babyCountController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BabyCountSelectStateCopyWith<BabyCountSelectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BabyCountSelectStateCopyWith<$Res> {
  factory $BabyCountSelectStateCopyWith(BabyCountSelectState value,
          $Res Function(BabyCountSelectState) then) =
      _$BabyCountSelectStateCopyWithImpl<$Res, BabyCountSelectState>;
  @useResult
  $Res call(
      {BabyCountSelectData? inputData,
      FormControl<String>? babyCountController});

  $BabyCountSelectDataCopyWith<$Res>? get inputData;
}

/// @nodoc
class _$BabyCountSelectStateCopyWithImpl<$Res,
        $Val extends BabyCountSelectState>
    implements $BabyCountSelectStateCopyWith<$Res> {
  _$BabyCountSelectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = freezed,
    Object? babyCountController = freezed,
  }) {
    return _then(_value.copyWith(
      inputData: freezed == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as BabyCountSelectData?,
      babyCountController: freezed == babyCountController
          ? _value.babyCountController
          : babyCountController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BabyCountSelectDataCopyWith<$Res>? get inputData {
    if (_value.inputData == null) {
      return null;
    }

    return $BabyCountSelectDataCopyWith<$Res>(_value.inputData!, (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BabyCountSelectStateCopyWith<$Res>
    implements $BabyCountSelectStateCopyWith<$Res> {
  factory _$$_BabyCountSelectStateCopyWith(_$_BabyCountSelectState value,
          $Res Function(_$_BabyCountSelectState) then) =
      __$$_BabyCountSelectStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BabyCountSelectData? inputData,
      FormControl<String>? babyCountController});

  @override
  $BabyCountSelectDataCopyWith<$Res>? get inputData;
}

/// @nodoc
class __$$_BabyCountSelectStateCopyWithImpl<$Res>
    extends _$BabyCountSelectStateCopyWithImpl<$Res, _$_BabyCountSelectState>
    implements _$$_BabyCountSelectStateCopyWith<$Res> {
  __$$_BabyCountSelectStateCopyWithImpl(_$_BabyCountSelectState _value,
      $Res Function(_$_BabyCountSelectState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = freezed,
    Object? babyCountController = freezed,
  }) {
    return _then(_$_BabyCountSelectState(
      inputData: freezed == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as BabyCountSelectData?,
      babyCountController: freezed == babyCountController
          ? _value.babyCountController
          : babyCountController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
    ));
  }
}

/// @nodoc

class _$_BabyCountSelectState implements _BabyCountSelectState {
  const _$_BabyCountSelectState({this.inputData, this.babyCountController});

  @override
  final BabyCountSelectData? inputData;
  @override
  final FormControl<String>? babyCountController;

  @override
  String toString() {
    return 'BabyCountSelectState(inputData: $inputData, babyCountController: $babyCountController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BabyCountSelectState &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.babyCountController, babyCountController) ||
                other.babyCountController == babyCountController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputData, babyCountController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BabyCountSelectStateCopyWith<_$_BabyCountSelectState> get copyWith =>
      __$$_BabyCountSelectStateCopyWithImpl<_$_BabyCountSelectState>(
          this, _$identity);
}

abstract class _BabyCountSelectState implements BabyCountSelectState {
  const factory _BabyCountSelectState(
          {final BabyCountSelectData? inputData,
          final FormControl<String>? babyCountController}) =
      _$_BabyCountSelectState;

  @override
  BabyCountSelectData? get inputData;
  @override
  FormControl<String>? get babyCountController;
  @override
  @JsonKey(ignore: true)
  _$$_BabyCountSelectStateCopyWith<_$_BabyCountSelectState> get copyWith =>
      throw _privateConstructorUsedError;
}

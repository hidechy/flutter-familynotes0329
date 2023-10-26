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
mixin _$ProfileInputState {
  ProfileInfoData get inputData =>
      throw _privateConstructorUsedError; // バリデーション用
  FormControl<String>? get nicknameController =>
      throw _privateConstructorUsedError;
  FormControl<String>? get postalCodeController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileInputStateCopyWith<ProfileInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInputStateCopyWith<$Res> {
  factory $ProfileInputStateCopyWith(
          ProfileInputState value, $Res Function(ProfileInputState) then) =
      _$ProfileInputStateCopyWithImpl<$Res, ProfileInputState>;
  @useResult
  $Res call(
      {ProfileInfoData inputData,
      FormControl<String>? nicknameController,
      FormControl<String>? postalCodeController});

  $ProfileInfoDataCopyWith<$Res> get inputData;
}

/// @nodoc
class _$ProfileInputStateCopyWithImpl<$Res, $Val extends ProfileInputState>
    implements $ProfileInputStateCopyWith<$Res> {
  _$ProfileInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? nicknameController = freezed,
    Object? postalCodeController = freezed,
  }) {
    return _then(_value.copyWith(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as ProfileInfoData,
      nicknameController: freezed == nicknameController
          ? _value.nicknameController
          : nicknameController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      postalCodeController: freezed == postalCodeController
          ? _value.postalCodeController
          : postalCodeController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileInfoDataCopyWith<$Res> get inputData {
    return $ProfileInfoDataCopyWith<$Res>(_value.inputData, (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileInputStateCopyWith<$Res>
    implements $ProfileInputStateCopyWith<$Res> {
  factory _$$_ProfileInputStateCopyWith(_$_ProfileInputState value,
          $Res Function(_$_ProfileInputState) then) =
      __$$_ProfileInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileInfoData inputData,
      FormControl<String>? nicknameController,
      FormControl<String>? postalCodeController});

  @override
  $ProfileInfoDataCopyWith<$Res> get inputData;
}

/// @nodoc
class __$$_ProfileInputStateCopyWithImpl<$Res>
    extends _$ProfileInputStateCopyWithImpl<$Res, _$_ProfileInputState>
    implements _$$_ProfileInputStateCopyWith<$Res> {
  __$$_ProfileInputStateCopyWithImpl(
      _$_ProfileInputState _value, $Res Function(_$_ProfileInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? nicknameController = freezed,
    Object? postalCodeController = freezed,
  }) {
    return _then(_$_ProfileInputState(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as ProfileInfoData,
      nicknameController: freezed == nicknameController
          ? _value.nicknameController
          : nicknameController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      postalCodeController: freezed == postalCodeController
          ? _value.postalCodeController
          : postalCodeController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
    ));
  }
}

/// @nodoc

class _$_ProfileInputState implements _ProfileInputState {
  const _$_ProfileInputState(
      {this.inputData = const ProfileInfoData(),
      this.nicknameController,
      this.postalCodeController});

  @override
  @JsonKey()
  final ProfileInfoData inputData;
// バリデーション用
  @override
  final FormControl<String>? nicknameController;
  @override
  final FormControl<String>? postalCodeController;

  @override
  String toString() {
    return 'ProfileInputState(inputData: $inputData, nicknameController: $nicknameController, postalCodeController: $postalCodeController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileInputState &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.nicknameController, nicknameController) ||
                other.nicknameController == nicknameController) &&
            (identical(other.postalCodeController, postalCodeController) ||
                other.postalCodeController == postalCodeController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, inputData, nicknameController, postalCodeController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileInputStateCopyWith<_$_ProfileInputState> get copyWith =>
      __$$_ProfileInputStateCopyWithImpl<_$_ProfileInputState>(
          this, _$identity);
}

abstract class _ProfileInputState implements ProfileInputState {
  const factory _ProfileInputState(
      {final ProfileInfoData inputData,
      final FormControl<String>? nicknameController,
      final FormControl<String>? postalCodeController}) = _$_ProfileInputState;

  @override
  ProfileInfoData get inputData;
  @override // バリデーション用
  FormControl<String>? get nicknameController;
  @override
  FormControl<String>? get postalCodeController;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileInputStateCopyWith<_$_ProfileInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

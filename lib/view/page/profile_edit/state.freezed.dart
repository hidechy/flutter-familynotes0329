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
mixin _$ProfileEditState {
  ProfileInfoData? get inputData => throw _privateConstructorUsedError;
  bool get saving => throw _privateConstructorUsedError; // バリデーション用
  FormControl<String>? get nameController => throw _privateConstructorUsedError;
  FormControl<String>? get postalCodeController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileEditStateCopyWith<ProfileEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEditStateCopyWith<$Res> {
  factory $ProfileEditStateCopyWith(
          ProfileEditState value, $Res Function(ProfileEditState) then) =
      _$ProfileEditStateCopyWithImpl<$Res, ProfileEditState>;
  @useResult
  $Res call(
      {ProfileInfoData? inputData,
      bool saving,
      FormControl<String>? nameController,
      FormControl<String>? postalCodeController});

  $ProfileInfoDataCopyWith<$Res>? get inputData;
}

/// @nodoc
class _$ProfileEditStateCopyWithImpl<$Res, $Val extends ProfileEditState>
    implements $ProfileEditStateCopyWith<$Res> {
  _$ProfileEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = freezed,
    Object? saving = null,
    Object? nameController = freezed,
    Object? postalCodeController = freezed,
  }) {
    return _then(_value.copyWith(
      inputData: freezed == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as ProfileInfoData?,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
      nameController: freezed == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      postalCodeController: freezed == postalCodeController
          ? _value.postalCodeController
          : postalCodeController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileInfoDataCopyWith<$Res>? get inputData {
    if (_value.inputData == null) {
      return null;
    }

    return $ProfileInfoDataCopyWith<$Res>(_value.inputData!, (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileEditStateCopyWith<$Res>
    implements $ProfileEditStateCopyWith<$Res> {
  factory _$$_ProfileEditStateCopyWith(
          _$_ProfileEditState value, $Res Function(_$_ProfileEditState) then) =
      __$$_ProfileEditStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileInfoData? inputData,
      bool saving,
      FormControl<String>? nameController,
      FormControl<String>? postalCodeController});

  @override
  $ProfileInfoDataCopyWith<$Res>? get inputData;
}

/// @nodoc
class __$$_ProfileEditStateCopyWithImpl<$Res>
    extends _$ProfileEditStateCopyWithImpl<$Res, _$_ProfileEditState>
    implements _$$_ProfileEditStateCopyWith<$Res> {
  __$$_ProfileEditStateCopyWithImpl(
      _$_ProfileEditState _value, $Res Function(_$_ProfileEditState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = freezed,
    Object? saving = null,
    Object? nameController = freezed,
    Object? postalCodeController = freezed,
  }) {
    return _then(_$_ProfileEditState(
      inputData: freezed == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as ProfileInfoData?,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
      nameController: freezed == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      postalCodeController: freezed == postalCodeController
          ? _value.postalCodeController
          : postalCodeController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
    ));
  }
}

/// @nodoc

class _$_ProfileEditState implements _ProfileEditState {
  const _$_ProfileEditState(
      {this.inputData,
      this.saving = false,
      this.nameController,
      this.postalCodeController});

  @override
  final ProfileInfoData? inputData;
  @override
  @JsonKey()
  final bool saving;
// バリデーション用
  @override
  final FormControl<String>? nameController;
  @override
  final FormControl<String>? postalCodeController;

  @override
  String toString() {
    return 'ProfileEditState(inputData: $inputData, saving: $saving, nameController: $nameController, postalCodeController: $postalCodeController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileEditState &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.saving, saving) || other.saving == saving) &&
            (identical(other.nameController, nameController) ||
                other.nameController == nameController) &&
            (identical(other.postalCodeController, postalCodeController) ||
                other.postalCodeController == postalCodeController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, inputData, saving, nameController, postalCodeController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileEditStateCopyWith<_$_ProfileEditState> get copyWith =>
      __$$_ProfileEditStateCopyWithImpl<_$_ProfileEditState>(this, _$identity);
}

abstract class _ProfileEditState implements ProfileEditState {
  const factory _ProfileEditState(
      {final ProfileInfoData? inputData,
      final bool saving,
      final FormControl<String>? nameController,
      final FormControl<String>? postalCodeController}) = _$_ProfileEditState;

  @override
  ProfileInfoData? get inputData;
  @override
  bool get saving;
  @override // バリデーション用
  FormControl<String>? get nameController;
  @override
  FormControl<String>? get postalCodeController;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileEditStateCopyWith<_$_ProfileEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

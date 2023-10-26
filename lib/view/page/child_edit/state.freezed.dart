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
mixin _$ChildEditState {
  ChildEditData get inputData => throw _privateConstructorUsedError;
  bool get saving => throw _privateConstructorUsedError;
  bool get isShowGenderValidateMessage =>
      throw _privateConstructorUsedError; // 名前、性別、生年月日のバリデーション用
  FormControl<String>? get nameController => throw _privateConstructorUsedError;
  FormControl<Gender?>? get genderController =>
      throw _privateConstructorUsedError;
  FormControl<String>? get birthdayController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildEditStateCopyWith<ChildEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildEditStateCopyWith<$Res> {
  factory $ChildEditStateCopyWith(
          ChildEditState value, $Res Function(ChildEditState) then) =
      _$ChildEditStateCopyWithImpl<$Res, ChildEditState>;
  @useResult
  $Res call(
      {ChildEditData inputData,
      bool saving,
      bool isShowGenderValidateMessage,
      FormControl<String>? nameController,
      FormControl<Gender?>? genderController,
      FormControl<String>? birthdayController});

  $ChildEditDataCopyWith<$Res> get inputData;
}

/// @nodoc
class _$ChildEditStateCopyWithImpl<$Res, $Val extends ChildEditState>
    implements $ChildEditStateCopyWith<$Res> {
  _$ChildEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? saving = null,
    Object? isShowGenderValidateMessage = null,
    Object? nameController = freezed,
    Object? genderController = freezed,
    Object? birthdayController = freezed,
  }) {
    return _then(_value.copyWith(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as ChildEditData,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowGenderValidateMessage: null == isShowGenderValidateMessage
          ? _value.isShowGenderValidateMessage
          : isShowGenderValidateMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      nameController: freezed == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      genderController: freezed == genderController
          ? _value.genderController
          : genderController // ignore: cast_nullable_to_non_nullable
              as FormControl<Gender?>?,
      birthdayController: freezed == birthdayController
          ? _value.birthdayController
          : birthdayController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChildEditDataCopyWith<$Res> get inputData {
    return $ChildEditDataCopyWith<$Res>(_value.inputData, (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChildEditStateCopyWith<$Res>
    implements $ChildEditStateCopyWith<$Res> {
  factory _$$_ChildEditStateCopyWith(
          _$_ChildEditState value, $Res Function(_$_ChildEditState) then) =
      __$$_ChildEditStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChildEditData inputData,
      bool saving,
      bool isShowGenderValidateMessage,
      FormControl<String>? nameController,
      FormControl<Gender?>? genderController,
      FormControl<String>? birthdayController});

  @override
  $ChildEditDataCopyWith<$Res> get inputData;
}

/// @nodoc
class __$$_ChildEditStateCopyWithImpl<$Res>
    extends _$ChildEditStateCopyWithImpl<$Res, _$_ChildEditState>
    implements _$$_ChildEditStateCopyWith<$Res> {
  __$$_ChildEditStateCopyWithImpl(
      _$_ChildEditState _value, $Res Function(_$_ChildEditState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? saving = null,
    Object? isShowGenderValidateMessage = null,
    Object? nameController = freezed,
    Object? genderController = freezed,
    Object? birthdayController = freezed,
  }) {
    return _then(_$_ChildEditState(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as ChildEditData,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowGenderValidateMessage: null == isShowGenderValidateMessage
          ? _value.isShowGenderValidateMessage
          : isShowGenderValidateMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      nameController: freezed == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      genderController: freezed == genderController
          ? _value.genderController
          : genderController // ignore: cast_nullable_to_non_nullable
              as FormControl<Gender?>?,
      birthdayController: freezed == birthdayController
          ? _value.birthdayController
          : birthdayController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
    ));
  }
}

/// @nodoc

class _$_ChildEditState implements _ChildEditState {
  const _$_ChildEditState(
      {this.inputData = const ChildEditData(),
      this.saving = false,
      this.isShowGenderValidateMessage = false,
      this.nameController,
      this.genderController,
      this.birthdayController});

  @override
  @JsonKey()
  final ChildEditData inputData;
  @override
  @JsonKey()
  final bool saving;
  @override
  @JsonKey()
  final bool isShowGenderValidateMessage;
// 名前、性別、生年月日のバリデーション用
  @override
  final FormControl<String>? nameController;
  @override
  final FormControl<Gender?>? genderController;
  @override
  final FormControl<String>? birthdayController;

  @override
  String toString() {
    return 'ChildEditState(inputData: $inputData, saving: $saving, isShowGenderValidateMessage: $isShowGenderValidateMessage, nameController: $nameController, genderController: $genderController, birthdayController: $birthdayController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildEditState &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.saving, saving) || other.saving == saving) &&
            (identical(other.isShowGenderValidateMessage,
                    isShowGenderValidateMessage) ||
                other.isShowGenderValidateMessage ==
                    isShowGenderValidateMessage) &&
            (identical(other.nameController, nameController) ||
                other.nameController == nameController) &&
            (identical(other.genderController, genderController) ||
                other.genderController == genderController) &&
            (identical(other.birthdayController, birthdayController) ||
                other.birthdayController == birthdayController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      inputData,
      saving,
      isShowGenderValidateMessage,
      nameController,
      genderController,
      birthdayController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildEditStateCopyWith<_$_ChildEditState> get copyWith =>
      __$$_ChildEditStateCopyWithImpl<_$_ChildEditState>(this, _$identity);
}

abstract class _ChildEditState implements ChildEditState {
  const factory _ChildEditState(
      {final ChildEditData inputData,
      final bool saving,
      final bool isShowGenderValidateMessage,
      final FormControl<String>? nameController,
      final FormControl<Gender?>? genderController,
      final FormControl<String>? birthdayController}) = _$_ChildEditState;

  @override
  ChildEditData get inputData;
  @override
  bool get saving;
  @override
  bool get isShowGenderValidateMessage;
  @override // 名前、性別、生年月日のバリデーション用
  FormControl<String>? get nameController;
  @override
  FormControl<Gender?>? get genderController;
  @override
  FormControl<String>? get birthdayController;
  @override
  @JsonKey(ignore: true)
  _$$_ChildEditStateCopyWith<_$_ChildEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChildEditData {
  /// 名前（ニックネーム）
  String get name => throw _privateConstructorUsedError;

  /// 性別
  Gender? get gender => throw _privateConstructorUsedError;

  /// 出産予定日
  DateTime? get birthday => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildEditDataCopyWith<ChildEditData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildEditDataCopyWith<$Res> {
  factory $ChildEditDataCopyWith(
          ChildEditData value, $Res Function(ChildEditData) then) =
      _$ChildEditDataCopyWithImpl<$Res, ChildEditData>;
  @useResult
  $Res call({String name, Gender? gender, DateTime? birthday});
}

/// @nodoc
class _$ChildEditDataCopyWithImpl<$Res, $Val extends ChildEditData>
    implements $ChildEditDataCopyWith<$Res> {
  _$ChildEditDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = freezed,
    Object? birthday = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildEditDataCopyWith<$Res>
    implements $ChildEditDataCopyWith<$Res> {
  factory _$$_ChildEditDataCopyWith(
          _$_ChildEditData value, $Res Function(_$_ChildEditData) then) =
      __$$_ChildEditDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Gender? gender, DateTime? birthday});
}

/// @nodoc
class __$$_ChildEditDataCopyWithImpl<$Res>
    extends _$ChildEditDataCopyWithImpl<$Res, _$_ChildEditData>
    implements _$$_ChildEditDataCopyWith<$Res> {
  __$$_ChildEditDataCopyWithImpl(
      _$_ChildEditData _value, $Res Function(_$_ChildEditData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = freezed,
    Object? birthday = freezed,
  }) {
    return _then(_$_ChildEditData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_ChildEditData implements _ChildEditData {
  const _$_ChildEditData({this.name = '', this.gender, this.birthday});

  /// 名前（ニックネーム）
  @override
  @JsonKey()
  final String name;

  /// 性別
  @override
  final Gender? gender;

  /// 出産予定日
  @override
  final DateTime? birthday;

  @override
  String toString() {
    return 'ChildEditData(name: $name, gender: $gender, birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildEditData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, gender, birthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildEditDataCopyWith<_$_ChildEditData> get copyWith =>
      __$$_ChildEditDataCopyWithImpl<_$_ChildEditData>(this, _$identity);
}

abstract class _ChildEditData implements ChildEditData {
  const factory _ChildEditData(
      {final String name,
      final Gender? gender,
      final DateTime? birthday}) = _$_ChildEditData;

  @override

  /// 名前（ニックネーム）
  String get name;
  @override

  /// 性別
  Gender? get gender;
  @override

  /// 出産予定日
  DateTime? get birthday;
  @override
  @JsonKey(ignore: true)
  _$$_ChildEditDataCopyWith<_$_ChildEditData> get copyWith =>
      throw _privateConstructorUsedError;
}

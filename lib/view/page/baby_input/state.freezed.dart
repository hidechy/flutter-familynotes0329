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
mixin _$BabyInputState {
  BabyInputData get inputData =>
      throw _privateConstructorUsedError; // 名前、出産予定日のバリデーション用
  FormControl<String>? get nameController => throw _privateConstructorUsedError;
  FormControl<String>? get scheduledBirthdayController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BabyInputStateCopyWith<BabyInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BabyInputStateCopyWith<$Res> {
  factory $BabyInputStateCopyWith(
          BabyInputState value, $Res Function(BabyInputState) then) =
      _$BabyInputStateCopyWithImpl<$Res, BabyInputState>;
  @useResult
  $Res call(
      {BabyInputData inputData,
      FormControl<String>? nameController,
      FormControl<String>? scheduledBirthdayController});

  $BabyInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class _$BabyInputStateCopyWithImpl<$Res, $Val extends BabyInputState>
    implements $BabyInputStateCopyWith<$Res> {
  _$BabyInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? nameController = freezed,
    Object? scheduledBirthdayController = freezed,
  }) {
    return _then(_value.copyWith(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as BabyInputData,
      nameController: freezed == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      scheduledBirthdayController: freezed == scheduledBirthdayController
          ? _value.scheduledBirthdayController
          : scheduledBirthdayController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BabyInputDataCopyWith<$Res> get inputData {
    return $BabyInputDataCopyWith<$Res>(_value.inputData, (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BabyInputStateCopyWith<$Res>
    implements $BabyInputStateCopyWith<$Res> {
  factory _$$_BabyInputStateCopyWith(
          _$_BabyInputState value, $Res Function(_$_BabyInputState) then) =
      __$$_BabyInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BabyInputData inputData,
      FormControl<String>? nameController,
      FormControl<String>? scheduledBirthdayController});

  @override
  $BabyInputDataCopyWith<$Res> get inputData;
}

/// @nodoc
class __$$_BabyInputStateCopyWithImpl<$Res>
    extends _$BabyInputStateCopyWithImpl<$Res, _$_BabyInputState>
    implements _$$_BabyInputStateCopyWith<$Res> {
  __$$_BabyInputStateCopyWithImpl(
      _$_BabyInputState _value, $Res Function(_$_BabyInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? nameController = freezed,
    Object? scheduledBirthdayController = freezed,
  }) {
    return _then(_$_BabyInputState(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as BabyInputData,
      nameController: freezed == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
      scheduledBirthdayController: freezed == scheduledBirthdayController
          ? _value.scheduledBirthdayController
          : scheduledBirthdayController // ignore: cast_nullable_to_non_nullable
              as FormControl<String>?,
    ));
  }
}

/// @nodoc

class _$_BabyInputState implements _BabyInputState {
  const _$_BabyInputState(
      {this.inputData = const BabyInputData(),
      this.nameController,
      this.scheduledBirthdayController});

  @override
  @JsonKey()
  final BabyInputData inputData;
// 名前、出産予定日のバリデーション用
  @override
  final FormControl<String>? nameController;
  @override
  final FormControl<String>? scheduledBirthdayController;

  @override
  String toString() {
    return 'BabyInputState(inputData: $inputData, nameController: $nameController, scheduledBirthdayController: $scheduledBirthdayController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BabyInputState &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.nameController, nameController) ||
                other.nameController == nameController) &&
            (identical(other.scheduledBirthdayController,
                    scheduledBirthdayController) ||
                other.scheduledBirthdayController ==
                    scheduledBirthdayController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, inputData, nameController, scheduledBirthdayController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BabyInputStateCopyWith<_$_BabyInputState> get copyWith =>
      __$$_BabyInputStateCopyWithImpl<_$_BabyInputState>(this, _$identity);
}

abstract class _BabyInputState implements BabyInputState {
  const factory _BabyInputState(
          {final BabyInputData inputData,
          final FormControl<String>? nameController,
          final FormControl<String>? scheduledBirthdayController}) =
      _$_BabyInputState;

  @override
  BabyInputData get inputData;
  @override // 名前、出産予定日のバリデーション用
  FormControl<String>? get nameController;
  @override
  FormControl<String>? get scheduledBirthdayController;
  @override
  @JsonKey(ignore: true)
  _$$_BabyInputStateCopyWith<_$_BabyInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BabyInputData {
  /// 名前（ニックネーム）
  String get name => throw _privateConstructorUsedError;

  /// 出産予定日
  DateTime? get scheduledBirthday => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BabyInputDataCopyWith<BabyInputData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BabyInputDataCopyWith<$Res> {
  factory $BabyInputDataCopyWith(
          BabyInputData value, $Res Function(BabyInputData) then) =
      _$BabyInputDataCopyWithImpl<$Res, BabyInputData>;
  @useResult
  $Res call({String name, DateTime? scheduledBirthday});
}

/// @nodoc
class _$BabyInputDataCopyWithImpl<$Res, $Val extends BabyInputData>
    implements $BabyInputDataCopyWith<$Res> {
  _$BabyInputDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? scheduledBirthday = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledBirthday: freezed == scheduledBirthday
          ? _value.scheduledBirthday
          : scheduledBirthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BabyInputDataCopyWith<$Res>
    implements $BabyInputDataCopyWith<$Res> {
  factory _$$_BabyInputDataCopyWith(
          _$_BabyInputData value, $Res Function(_$_BabyInputData) then) =
      __$$_BabyInputDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, DateTime? scheduledBirthday});
}

/// @nodoc
class __$$_BabyInputDataCopyWithImpl<$Res>
    extends _$BabyInputDataCopyWithImpl<$Res, _$_BabyInputData>
    implements _$$_BabyInputDataCopyWith<$Res> {
  __$$_BabyInputDataCopyWithImpl(
      _$_BabyInputData _value, $Res Function(_$_BabyInputData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? scheduledBirthday = freezed,
  }) {
    return _then(_$_BabyInputData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledBirthday: freezed == scheduledBirthday
          ? _value.scheduledBirthday
          : scheduledBirthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_BabyInputData implements _BabyInputData {
  const _$_BabyInputData({this.name = '', this.scheduledBirthday});

  /// 名前（ニックネーム）
  @override
  @JsonKey()
  final String name;

  /// 出産予定日
  @override
  final DateTime? scheduledBirthday;

  @override
  String toString() {
    return 'BabyInputData(name: $name, scheduledBirthday: $scheduledBirthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BabyInputData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.scheduledBirthday, scheduledBirthday) ||
                other.scheduledBirthday == scheduledBirthday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, scheduledBirthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BabyInputDataCopyWith<_$_BabyInputData> get copyWith =>
      __$$_BabyInputDataCopyWithImpl<_$_BabyInputData>(this, _$identity);
}

abstract class _BabyInputData implements BabyInputData {
  const factory _BabyInputData(
      {final String name,
      final DateTime? scheduledBirthday}) = _$_BabyInputData;

  @override

  /// 名前（ニックネーム）
  String get name;
  @override

  /// 出産予定日
  DateTime? get scheduledBirthday;
  @override
  @JsonKey(ignore: true)
  _$$_BabyInputDataCopyWith<_$_BabyInputData> get copyWith =>
      throw _privateConstructorUsedError;
}

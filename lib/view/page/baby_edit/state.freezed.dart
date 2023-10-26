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
mixin _$BabyEditState {
  BabyEditData get inputData =>
      throw _privateConstructorUsedError; // 名前、出産予定日のバリデーション用
  FormControl<String>? get nameController => throw _privateConstructorUsedError;
  FormControl<String>? get scheduledBirthdayController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BabyEditStateCopyWith<BabyEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BabyEditStateCopyWith<$Res> {
  factory $BabyEditStateCopyWith(
          BabyEditState value, $Res Function(BabyEditState) then) =
      _$BabyEditStateCopyWithImpl<$Res, BabyEditState>;
  @useResult
  $Res call(
      {BabyEditData inputData,
      FormControl<String>? nameController,
      FormControl<String>? scheduledBirthdayController});

  $BabyEditDataCopyWith<$Res> get inputData;
}

/// @nodoc
class _$BabyEditStateCopyWithImpl<$Res, $Val extends BabyEditState>
    implements $BabyEditStateCopyWith<$Res> {
  _$BabyEditStateCopyWithImpl(this._value, this._then);

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
              as BabyEditData,
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
  $BabyEditDataCopyWith<$Res> get inputData {
    return $BabyEditDataCopyWith<$Res>(_value.inputData, (value) {
      return _then(_value.copyWith(inputData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BabyEditStateCopyWith<$Res>
    implements $BabyEditStateCopyWith<$Res> {
  factory _$$_BabyEditStateCopyWith(
          _$_BabyEditState value, $Res Function(_$_BabyEditState) then) =
      __$$_BabyEditStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BabyEditData inputData,
      FormControl<String>? nameController,
      FormControl<String>? scheduledBirthdayController});

  @override
  $BabyEditDataCopyWith<$Res> get inputData;
}

/// @nodoc
class __$$_BabyEditStateCopyWithImpl<$Res>
    extends _$BabyEditStateCopyWithImpl<$Res, _$_BabyEditState>
    implements _$$_BabyEditStateCopyWith<$Res> {
  __$$_BabyEditStateCopyWithImpl(
      _$_BabyEditState _value, $Res Function(_$_BabyEditState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = null,
    Object? nameController = freezed,
    Object? scheduledBirthdayController = freezed,
  }) {
    return _then(_$_BabyEditState(
      inputData: null == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as BabyEditData,
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

class _$_BabyEditState implements _BabyEditState {
  const _$_BabyEditState(
      {this.inputData = const BabyEditData(),
      this.nameController,
      this.scheduledBirthdayController});

  @override
  @JsonKey()
  final BabyEditData inputData;
// 名前、出産予定日のバリデーション用
  @override
  final FormControl<String>? nameController;
  @override
  final FormControl<String>? scheduledBirthdayController;

  @override
  String toString() {
    return 'BabyEditState(inputData: $inputData, nameController: $nameController, scheduledBirthdayController: $scheduledBirthdayController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BabyEditState &&
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
  _$$_BabyEditStateCopyWith<_$_BabyEditState> get copyWith =>
      __$$_BabyEditStateCopyWithImpl<_$_BabyEditState>(this, _$identity);
}

abstract class _BabyEditState implements BabyEditState {
  const factory _BabyEditState(
          {final BabyEditData inputData,
          final FormControl<String>? nameController,
          final FormControl<String>? scheduledBirthdayController}) =
      _$_BabyEditState;

  @override
  BabyEditData get inputData;
  @override // 名前、出産予定日のバリデーション用
  FormControl<String>? get nameController;
  @override
  FormControl<String>? get scheduledBirthdayController;
  @override
  @JsonKey(ignore: true)
  _$$_BabyEditStateCopyWith<_$_BabyEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BabyEditData {
  /// 名前（ニックネーム）
  String get name => throw _privateConstructorUsedError;

  /// 出産予定日
  DateTime? get scheduledBirthday => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BabyEditDataCopyWith<BabyEditData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BabyEditDataCopyWith<$Res> {
  factory $BabyEditDataCopyWith(
          BabyEditData value, $Res Function(BabyEditData) then) =
      _$BabyEditDataCopyWithImpl<$Res, BabyEditData>;
  @useResult
  $Res call({String name, DateTime? scheduledBirthday});
}

/// @nodoc
class _$BabyEditDataCopyWithImpl<$Res, $Val extends BabyEditData>
    implements $BabyEditDataCopyWith<$Res> {
  _$BabyEditDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_BabyEditDataCopyWith<$Res>
    implements $BabyEditDataCopyWith<$Res> {
  factory _$$_BabyEditDataCopyWith(
          _$_BabyEditData value, $Res Function(_$_BabyEditData) then) =
      __$$_BabyEditDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, DateTime? scheduledBirthday});
}

/// @nodoc
class __$$_BabyEditDataCopyWithImpl<$Res>
    extends _$BabyEditDataCopyWithImpl<$Res, _$_BabyEditData>
    implements _$$_BabyEditDataCopyWith<$Res> {
  __$$_BabyEditDataCopyWithImpl(
      _$_BabyEditData _value, $Res Function(_$_BabyEditData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? scheduledBirthday = freezed,
  }) {
    return _then(_$_BabyEditData(
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

class _$_BabyEditData implements _BabyEditData {
  const _$_BabyEditData({this.name = '', this.scheduledBirthday});

  /// 名前（ニックネーム）
  @override
  @JsonKey()
  final String name;

  /// 出産予定日
  @override
  final DateTime? scheduledBirthday;

  @override
  String toString() {
    return 'BabyEditData(name: $name, scheduledBirthday: $scheduledBirthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BabyEditData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.scheduledBirthday, scheduledBirthday) ||
                other.scheduledBirthday == scheduledBirthday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, scheduledBirthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BabyEditDataCopyWith<_$_BabyEditData> get copyWith =>
      __$$_BabyEditDataCopyWithImpl<_$_BabyEditData>(this, _$identity);
}

abstract class _BabyEditData implements BabyEditData {
  const factory _BabyEditData(
      {final String name, final DateTime? scheduledBirthday}) = _$_BabyEditData;

  @override

  /// 名前（ニックネーム）
  String get name;
  @override

  /// 出産予定日
  DateTime? get scheduledBirthday;
  @override
  @JsonKey(ignore: true)
  _$$_BabyEditDataCopyWith<_$_BabyEditData> get copyWith =>
      throw _privateConstructorUsedError;
}

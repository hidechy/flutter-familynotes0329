// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BabyInfoData {
  /// 名前(ニックネーム)
  String get name => throw _privateConstructorUsedError;

  /// 出産予定日
  DateTime get scheduledBirthday => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BabyInfoDataCopyWith<BabyInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BabyInfoDataCopyWith<$Res> {
  factory $BabyInfoDataCopyWith(
          BabyInfoData value, $Res Function(BabyInfoData) then) =
      _$BabyInfoDataCopyWithImpl<$Res, BabyInfoData>;
  @useResult
  $Res call({String name, DateTime scheduledBirthday});
}

/// @nodoc
class _$BabyInfoDataCopyWithImpl<$Res, $Val extends BabyInfoData>
    implements $BabyInfoDataCopyWith<$Res> {
  _$BabyInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? scheduledBirthday = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledBirthday: null == scheduledBirthday
          ? _value.scheduledBirthday
          : scheduledBirthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BabyInfoDataCopyWith<$Res>
    implements $BabyInfoDataCopyWith<$Res> {
  factory _$$_BabyInfoDataCopyWith(
          _$_BabyInfoData value, $Res Function(_$_BabyInfoData) then) =
      __$$_BabyInfoDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, DateTime scheduledBirthday});
}

/// @nodoc
class __$$_BabyInfoDataCopyWithImpl<$Res>
    extends _$BabyInfoDataCopyWithImpl<$Res, _$_BabyInfoData>
    implements _$$_BabyInfoDataCopyWith<$Res> {
  __$$_BabyInfoDataCopyWithImpl(
      _$_BabyInfoData _value, $Res Function(_$_BabyInfoData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? scheduledBirthday = null,
  }) {
    return _then(_$_BabyInfoData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledBirthday: null == scheduledBirthday
          ? _value.scheduledBirthday
          : scheduledBirthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_BabyInfoData implements _BabyInfoData {
  const _$_BabyInfoData({required this.name, required this.scheduledBirthday});

  /// 名前(ニックネーム)
  @override
  final String name;

  /// 出産予定日
  @override
  final DateTime scheduledBirthday;

  @override
  String toString() {
    return 'BabyInfoData(name: $name, scheduledBirthday: $scheduledBirthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BabyInfoData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.scheduledBirthday, scheduledBirthday) ||
                other.scheduledBirthday == scheduledBirthday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, scheduledBirthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BabyInfoDataCopyWith<_$_BabyInfoData> get copyWith =>
      __$$_BabyInfoDataCopyWithImpl<_$_BabyInfoData>(this, _$identity);
}

abstract class _BabyInfoData implements BabyInfoData {
  const factory _BabyInfoData(
      {required final String name,
      required final DateTime scheduledBirthday}) = _$_BabyInfoData;

  @override

  /// 名前(ニックネーム)
  String get name;
  @override

  /// 出産予定日
  DateTime get scheduledBirthday;
  @override
  @JsonKey(ignore: true)
  _$$_BabyInfoDataCopyWith<_$_BabyInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

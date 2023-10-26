// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BabyModel _$BabyModelFromJson(Map<String, dynamic> json) {
  return _BabyModel.fromJson(json);
}

/// @nodoc
mixin _$BabyModel {
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_schedule_date')
  String get birthScheduleDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BabyModelCopyWith<BabyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BabyModelCopyWith<$Res> {
  factory $BabyModelCopyWith(BabyModel value, $Res Function(BabyModel) then) =
      _$BabyModelCopyWithImpl<$Res, BabyModel>;
  @useResult
  $Res call(
      {String nickname,
      @JsonKey(name: 'birth_schedule_date') String birthScheduleDate});
}

/// @nodoc
class _$BabyModelCopyWithImpl<$Res, $Val extends BabyModel>
    implements $BabyModelCopyWith<$Res> {
  _$BabyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? birthScheduleDate = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      birthScheduleDate: null == birthScheduleDate
          ? _value.birthScheduleDate
          : birthScheduleDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BabyModelCopyWith<$Res> implements $BabyModelCopyWith<$Res> {
  factory _$$_BabyModelCopyWith(
          _$_BabyModel value, $Res Function(_$_BabyModel) then) =
      __$$_BabyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nickname,
      @JsonKey(name: 'birth_schedule_date') String birthScheduleDate});
}

/// @nodoc
class __$$_BabyModelCopyWithImpl<$Res>
    extends _$BabyModelCopyWithImpl<$Res, _$_BabyModel>
    implements _$$_BabyModelCopyWith<$Res> {
  __$$_BabyModelCopyWithImpl(
      _$_BabyModel _value, $Res Function(_$_BabyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? birthScheduleDate = null,
  }) {
    return _then(_$_BabyModel(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      birthScheduleDate: null == birthScheduleDate
          ? _value.birthScheduleDate
          : birthScheduleDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BabyModel implements _BabyModel {
  const _$_BabyModel(
      {this.nickname = '',
      @JsonKey(name: 'birth_schedule_date') required this.birthScheduleDate});

  factory _$_BabyModel.fromJson(Map<String, dynamic> json) =>
      _$$_BabyModelFromJson(json);

  @override
  @JsonKey()
  final String nickname;
  @override
  @JsonKey(name: 'birth_schedule_date')
  final String birthScheduleDate;

  @override
  String toString() {
    return 'BabyModel(nickname: $nickname, birthScheduleDate: $birthScheduleDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BabyModel &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.birthScheduleDate, birthScheduleDate) ||
                other.birthScheduleDate == birthScheduleDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, birthScheduleDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BabyModelCopyWith<_$_BabyModel> get copyWith =>
      __$$_BabyModelCopyWithImpl<_$_BabyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BabyModelToJson(
      this,
    );
  }
}

abstract class _BabyModel implements BabyModel {
  const factory _BabyModel(
      {final String nickname,
      @JsonKey(name: 'birth_schedule_date')
          required final String birthScheduleDate}) = _$_BabyModel;

  factory _BabyModel.fromJson(Map<String, dynamic> json) =
      _$_BabyModel.fromJson;

  @override
  String get nickname;
  @override
  @JsonKey(name: 'birth_schedule_date')
  String get birthScheduleDate;
  @override
  @JsonKey(ignore: true)
  _$$_BabyModelCopyWith<_$_BabyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

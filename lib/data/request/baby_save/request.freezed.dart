// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BabySaveRequest _$BabySaveRequestFromJson(Map<String, dynamic> json) {
  return _BabyBabySaveRequest.fromJson(json);
}

/// @nodoc
mixin _$BabySaveRequest {
  @JsonKey(name: 'child_id')
  int? get childId => throw _privateConstructorUsedError; // 追記の場合null
  @JsonKey(name: 'baby_nickname')
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_schedule_date')
  String get birthScheduleDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BabySaveRequestCopyWith<BabySaveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BabySaveRequestCopyWith<$Res> {
  factory $BabySaveRequestCopyWith(
          BabySaveRequest value, $Res Function(BabySaveRequest) then) =
      _$BabySaveRequestCopyWithImpl<$Res, BabySaveRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int? childId,
      @JsonKey(name: 'baby_nickname') String nickname,
      @JsonKey(name: 'birth_schedule_date') String birthScheduleDate});
}

/// @nodoc
class _$BabySaveRequestCopyWithImpl<$Res, $Val extends BabySaveRequest>
    implements $BabySaveRequestCopyWith<$Res> {
  _$BabySaveRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = freezed,
    Object? nickname = null,
    Object? birthScheduleDate = null,
  }) {
    return _then(_value.copyWith(
      childId: freezed == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_BabyBabySaveRequestCopyWith<$Res>
    implements $BabySaveRequestCopyWith<$Res> {
  factory _$$_BabyBabySaveRequestCopyWith(_$_BabyBabySaveRequest value,
          $Res Function(_$_BabyBabySaveRequest) then) =
      __$$_BabyBabySaveRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int? childId,
      @JsonKey(name: 'baby_nickname') String nickname,
      @JsonKey(name: 'birth_schedule_date') String birthScheduleDate});
}

/// @nodoc
class __$$_BabyBabySaveRequestCopyWithImpl<$Res>
    extends _$BabySaveRequestCopyWithImpl<$Res, _$_BabyBabySaveRequest>
    implements _$$_BabyBabySaveRequestCopyWith<$Res> {
  __$$_BabyBabySaveRequestCopyWithImpl(_$_BabyBabySaveRequest _value,
      $Res Function(_$_BabyBabySaveRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = freezed,
    Object? nickname = null,
    Object? birthScheduleDate = null,
  }) {
    return _then(_$_BabyBabySaveRequest(
      childId: freezed == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_BabyBabySaveRequest implements _BabyBabySaveRequest {
  const _$_BabyBabySaveRequest(
      {@JsonKey(name: 'child_id') required this.childId,
      @JsonKey(name: 'baby_nickname') required this.nickname,
      @JsonKey(name: 'birth_schedule_date') required this.birthScheduleDate});

  factory _$_BabyBabySaveRequest.fromJson(Map<String, dynamic> json) =>
      _$$_BabyBabySaveRequestFromJson(json);

  @override
  @JsonKey(name: 'child_id')
  final int? childId;
// 追記の場合null
  @override
  @JsonKey(name: 'baby_nickname')
  final String nickname;
  @override
  @JsonKey(name: 'birth_schedule_date')
  final String birthScheduleDate;

  @override
  String toString() {
    return 'BabySaveRequest(childId: $childId, nickname: $nickname, birthScheduleDate: $birthScheduleDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BabyBabySaveRequest &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.birthScheduleDate, birthScheduleDate) ||
                other.birthScheduleDate == birthScheduleDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, childId, nickname, birthScheduleDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BabyBabySaveRequestCopyWith<_$_BabyBabySaveRequest> get copyWith =>
      __$$_BabyBabySaveRequestCopyWithImpl<_$_BabyBabySaveRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BabyBabySaveRequestToJson(
      this,
    );
  }
}

abstract class _BabyBabySaveRequest implements BabySaveRequest {
  const factory _BabyBabySaveRequest(
      {@JsonKey(name: 'child_id')
          required final int? childId,
      @JsonKey(name: 'baby_nickname')
          required final String nickname,
      @JsonKey(name: 'birth_schedule_date')
          required final String birthScheduleDate}) = _$_BabyBabySaveRequest;

  factory _BabyBabySaveRequest.fromJson(Map<String, dynamic> json) =
      _$_BabyBabySaveRequest.fromJson;

  @override
  @JsonKey(name: 'child_id')
  int? get childId;
  @override // 追記の場合null
  @JsonKey(name: 'baby_nickname')
  String get nickname;
  @override
  @JsonKey(name: 'birth_schedule_date')
  String get birthScheduleDate;
  @override
  @JsonKey(ignore: true)
  _$$_BabyBabySaveRequestCopyWith<_$_BabyBabySaveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

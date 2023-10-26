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

ProfileEditRequest _$ProfileEditRequestFromJson(Map<String, dynamic> json) {
  return _ProfileEditRequest.fromJson(json);
}

/// @nodoc
mixin _$ProfileEditRequest {
  String? get nickname => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError; // 男:1, 女:2,
  @JsonKey(name: 'postal_code')
  String? get postalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileEditRequestCopyWith<ProfileEditRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEditRequestCopyWith<$Res> {
  factory $ProfileEditRequestCopyWith(
          ProfileEditRequest value, $Res Function(ProfileEditRequest) then) =
      _$ProfileEditRequestCopyWithImpl<$Res, ProfileEditRequest>;
  @useResult
  $Res call(
      {String? nickname,
      String? birthday,
      int? gender,
      @JsonKey(name: 'postal_code') String? postalCode});
}

/// @nodoc
class _$ProfileEditRequestCopyWithImpl<$Res, $Val extends ProfileEditRequest>
    implements $ProfileEditRequestCopyWith<$Res> {
  _$ProfileEditRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(_value.copyWith(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileEditRequestCopyWith<$Res>
    implements $ProfileEditRequestCopyWith<$Res> {
  factory _$$_ProfileEditRequestCopyWith(_$_ProfileEditRequest value,
          $Res Function(_$_ProfileEditRequest) then) =
      __$$_ProfileEditRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? nickname,
      String? birthday,
      int? gender,
      @JsonKey(name: 'postal_code') String? postalCode});
}

/// @nodoc
class __$$_ProfileEditRequestCopyWithImpl<$Res>
    extends _$ProfileEditRequestCopyWithImpl<$Res, _$_ProfileEditRequest>
    implements _$$_ProfileEditRequestCopyWith<$Res> {
  __$$_ProfileEditRequestCopyWithImpl(
      _$_ProfileEditRequest _value, $Res Function(_$_ProfileEditRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(_$_ProfileEditRequest(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileEditRequest implements _ProfileEditRequest {
  const _$_ProfileEditRequest(
      {required this.nickname,
      required this.birthday,
      required this.gender,
      @JsonKey(name: 'postal_code') required this.postalCode});

  factory _$_ProfileEditRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileEditRequestFromJson(json);

  @override
  final String? nickname;
  @override
  final String? birthday;
  @override
  final int? gender;
// 男:1, 女:2,
  @override
  @JsonKey(name: 'postal_code')
  final String? postalCode;

  @override
  String toString() {
    return 'ProfileEditRequest(nickname: $nickname, birthday: $birthday, gender: $gender, postalCode: $postalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileEditRequest &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nickname, birthday, gender, postalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileEditRequestCopyWith<_$_ProfileEditRequest> get copyWith =>
      __$$_ProfileEditRequestCopyWithImpl<_$_ProfileEditRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileEditRequestToJson(
      this,
    );
  }
}

abstract class _ProfileEditRequest implements ProfileEditRequest {
  const factory _ProfileEditRequest(
          {required final String? nickname,
          required final String? birthday,
          required final int? gender,
          @JsonKey(name: 'postal_code') required final String? postalCode}) =
      _$_ProfileEditRequest;

  factory _ProfileEditRequest.fromJson(Map<String, dynamic> json) =
      _$_ProfileEditRequest.fromJson;

  @override
  String? get nickname;
  @override
  String? get birthday;
  @override
  int? get gender;
  @override // 男:1, 女:2,
  @JsonKey(name: 'postal_code')
  String? get postalCode;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileEditRequestCopyWith<_$_ProfileEditRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

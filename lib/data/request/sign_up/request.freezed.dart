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

SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'baby':
      return BabySignUpRequest.fromJson(json);
    case 'child':
      return ChildSignUpRequest.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SignUpRequest',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SignUpRequest {
  @JsonKey(name: 'auth_code')
  String get authCode => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError; // 男:1, 女:2,
  @JsonKey(name: 'postal_code')
  String get postalCode => throw _privateConstructorUsedError; // 同意したプラポリのID
  @JsonKey(name: 'privacy_policy_consent_id')
  int get privacyPolicyConsentId =>
      throw _privateConstructorUsedError; // 同意した利用規約のID
  @JsonKey(name: 'service_terms_consent_id')
  int get serviceTermsConsentId => throw _privateConstructorUsedError;
  dynamic get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'baby_nickname')
                String babyNickname,
            @JsonKey(name: 'birth_schedule_date')
                String birthScheduleDate)
        baby,
    required TResult Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'child_nickname')
                String childNickname,
            @JsonKey(name: 'child_gender')
                int childGender,
            @JsonKey(name: 'child_birthday')
                String childBirthday)
        child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'baby_nickname')
                String babyNickname,
            @JsonKey(name: 'birth_schedule_date')
                String birthScheduleDate)?
        baby,
    TResult? Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'child_nickname')
                String childNickname,
            @JsonKey(name: 'child_gender')
                int childGender,
            @JsonKey(name: 'child_birthday')
                String childBirthday)?
        child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'baby_nickname')
                String babyNickname,
            @JsonKey(name: 'birth_schedule_date')
                String birthScheduleDate)?
        baby,
    TResult Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'child_nickname')
                String childNickname,
            @JsonKey(name: 'child_gender')
                int childGender,
            @JsonKey(name: 'child_birthday')
                String childBirthday)?
        child,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BabySignUpRequest value) baby,
    required TResult Function(ChildSignUpRequest value) child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BabySignUpRequest value)? baby,
    TResult? Function(ChildSignUpRequest value)? child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BabySignUpRequest value)? baby,
    TResult Function(ChildSignUpRequest value)? child,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpRequestCopyWith<SignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestCopyWith<$Res> {
  factory $SignUpRequestCopyWith(
          SignUpRequest value, $Res Function(SignUpRequest) then) =
      _$SignUpRequestCopyWithImpl<$Res, SignUpRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'auth_code') String authCode,
      String nickname,
      String email,
      String password,
      String birthday,
      int gender,
      @JsonKey(name: 'postal_code') String postalCode,
      @JsonKey(name: 'privacy_policy_consent_id') int privacyPolicyConsentId,
      @JsonKey(name: 'service_terms_consent_id') int serviceTermsConsentId,
      dynamic type});
}

/// @nodoc
class _$SignUpRequestCopyWithImpl<$Res, $Val extends SignUpRequest>
    implements $SignUpRequestCopyWith<$Res> {
  _$SignUpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authCode = null,
    Object? nickname = null,
    Object? email = null,
    Object? password = null,
    Object? birthday = null,
    Object? gender = null,
    Object? postalCode = null,
    Object? privacyPolicyConsentId = null,
    Object? serviceTermsConsentId = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      authCode: null == authCode
          ? _value.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      privacyPolicyConsentId: null == privacyPolicyConsentId
          ? _value.privacyPolicyConsentId
          : privacyPolicyConsentId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceTermsConsentId: null == serviceTermsConsentId
          ? _value.serviceTermsConsentId
          : serviceTermsConsentId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BabySignUpRequestCopyWith<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  factory _$$BabySignUpRequestCopyWith(
          _$BabySignUpRequest value, $Res Function(_$BabySignUpRequest) then) =
      __$$BabySignUpRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'auth_code') String authCode,
      String nickname,
      String email,
      String password,
      String birthday,
      int gender,
      @JsonKey(name: 'postal_code') String postalCode,
      @JsonKey(name: 'privacy_policy_consent_id') int privacyPolicyConsentId,
      @JsonKey(name: 'service_terms_consent_id') int serviceTermsConsentId,
      dynamic type,
      @JsonKey(name: 'baby_nickname') String babyNickname,
      @JsonKey(name: 'birth_schedule_date') String birthScheduleDate});
}

/// @nodoc
class __$$BabySignUpRequestCopyWithImpl<$Res>
    extends _$SignUpRequestCopyWithImpl<$Res, _$BabySignUpRequest>
    implements _$$BabySignUpRequestCopyWith<$Res> {
  __$$BabySignUpRequestCopyWithImpl(
      _$BabySignUpRequest _value, $Res Function(_$BabySignUpRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authCode = null,
    Object? nickname = null,
    Object? email = null,
    Object? password = null,
    Object? birthday = null,
    Object? gender = null,
    Object? postalCode = null,
    Object? privacyPolicyConsentId = null,
    Object? serviceTermsConsentId = null,
    Object? type = null,
    Object? babyNickname = null,
    Object? birthScheduleDate = null,
  }) {
    return _then(_$BabySignUpRequest(
      authCode: null == authCode
          ? _value.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      privacyPolicyConsentId: null == privacyPolicyConsentId
          ? _value.privacyPolicyConsentId
          : privacyPolicyConsentId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceTermsConsentId: null == serviceTermsConsentId
          ? _value.serviceTermsConsentId
          : serviceTermsConsentId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type ? _value.type : type,
      babyNickname: null == babyNickname
          ? _value.babyNickname
          : babyNickname // ignore: cast_nullable_to_non_nullable
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
class _$BabySignUpRequest implements BabySignUpRequest {
  const _$BabySignUpRequest(
      {@JsonKey(name: 'auth_code')
          required this.authCode,
      required this.nickname,
      required this.email,
      required this.password,
      required this.birthday,
      required this.gender,
      @JsonKey(name: 'postal_code')
          required this.postalCode,
      @JsonKey(name: 'privacy_policy_consent_id')
          required this.privacyPolicyConsentId,
      @JsonKey(name: 'service_terms_consent_id')
          required this.serviceTermsConsentId,
      this.type = 'baby',
      @JsonKey(name: 'baby_nickname')
          required this.babyNickname,
      @JsonKey(name: 'birth_schedule_date')
          required this.birthScheduleDate,
      final String? $type})
      : $type = $type ?? 'baby';

  factory _$BabySignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$$BabySignUpRequestFromJson(json);

  @override
  @JsonKey(name: 'auth_code')
  final String authCode;
  @override
  final String nickname;
  @override
  final String email;
  @override
  final String password;
  @override
  final String birthday;
  @override
  final int gender;
// 男:1, 女:2,
  @override
  @JsonKey(name: 'postal_code')
  final String postalCode;
// 同意したプラポリのID
  @override
  @JsonKey(name: 'privacy_policy_consent_id')
  final int privacyPolicyConsentId;
// 同意した利用規約のID
  @override
  @JsonKey(name: 'service_terms_consent_id')
  final int serviceTermsConsentId;
  @override
  @JsonKey()
  final dynamic type;
  @override
  @JsonKey(name: 'baby_nickname')
  final String babyNickname;
  @override
  @JsonKey(name: 'birth_schedule_date')
  final String birthScheduleDate;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignUpRequest.baby(authCode: $authCode, nickname: $nickname, email: $email, password: $password, birthday: $birthday, gender: $gender, postalCode: $postalCode, privacyPolicyConsentId: $privacyPolicyConsentId, serviceTermsConsentId: $serviceTermsConsentId, type: $type, babyNickname: $babyNickname, birthScheduleDate: $birthScheduleDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BabySignUpRequest &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.privacyPolicyConsentId, privacyPolicyConsentId) ||
                other.privacyPolicyConsentId == privacyPolicyConsentId) &&
            (identical(other.serviceTermsConsentId, serviceTermsConsentId) ||
                other.serviceTermsConsentId == serviceTermsConsentId) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            (identical(other.babyNickname, babyNickname) ||
                other.babyNickname == babyNickname) &&
            (identical(other.birthScheduleDate, birthScheduleDate) ||
                other.birthScheduleDate == birthScheduleDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      authCode,
      nickname,
      email,
      password,
      birthday,
      gender,
      postalCode,
      privacyPolicyConsentId,
      serviceTermsConsentId,
      const DeepCollectionEquality().hash(type),
      babyNickname,
      birthScheduleDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BabySignUpRequestCopyWith<_$BabySignUpRequest> get copyWith =>
      __$$BabySignUpRequestCopyWithImpl<_$BabySignUpRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'baby_nickname')
                String babyNickname,
            @JsonKey(name: 'birth_schedule_date')
                String birthScheduleDate)
        baby,
    required TResult Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'child_nickname')
                String childNickname,
            @JsonKey(name: 'child_gender')
                int childGender,
            @JsonKey(name: 'child_birthday')
                String childBirthday)
        child,
  }) {
    return baby(
        authCode,
        nickname,
        email,
        password,
        birthday,
        gender,
        postalCode,
        privacyPolicyConsentId,
        serviceTermsConsentId,
        type,
        babyNickname,
        birthScheduleDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'baby_nickname')
                String babyNickname,
            @JsonKey(name: 'birth_schedule_date')
                String birthScheduleDate)?
        baby,
    TResult? Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'child_nickname')
                String childNickname,
            @JsonKey(name: 'child_gender')
                int childGender,
            @JsonKey(name: 'child_birthday')
                String childBirthday)?
        child,
  }) {
    return baby?.call(
        authCode,
        nickname,
        email,
        password,
        birthday,
        gender,
        postalCode,
        privacyPolicyConsentId,
        serviceTermsConsentId,
        type,
        babyNickname,
        birthScheduleDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'baby_nickname')
                String babyNickname,
            @JsonKey(name: 'birth_schedule_date')
                String birthScheduleDate)?
        baby,
    TResult Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'child_nickname')
                String childNickname,
            @JsonKey(name: 'child_gender')
                int childGender,
            @JsonKey(name: 'child_birthday')
                String childBirthday)?
        child,
    required TResult orElse(),
  }) {
    if (baby != null) {
      return baby(
          authCode,
          nickname,
          email,
          password,
          birthday,
          gender,
          postalCode,
          privacyPolicyConsentId,
          serviceTermsConsentId,
          type,
          babyNickname,
          birthScheduleDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BabySignUpRequest value) baby,
    required TResult Function(ChildSignUpRequest value) child,
  }) {
    return baby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BabySignUpRequest value)? baby,
    TResult? Function(ChildSignUpRequest value)? child,
  }) {
    return baby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BabySignUpRequest value)? baby,
    TResult Function(ChildSignUpRequest value)? child,
    required TResult orElse(),
  }) {
    if (baby != null) {
      return baby(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BabySignUpRequestToJson(
      this,
    );
  }
}

abstract class BabySignUpRequest implements SignUpRequest {
  const factory BabySignUpRequest(
      {@JsonKey(name: 'auth_code')
          required final String authCode,
      required final String nickname,
      required final String email,
      required final String password,
      required final String birthday,
      required final int gender,
      @JsonKey(name: 'postal_code')
          required final String postalCode,
      @JsonKey(name: 'privacy_policy_consent_id')
          required final int privacyPolicyConsentId,
      @JsonKey(name: 'service_terms_consent_id')
          required final int serviceTermsConsentId,
      final dynamic type,
      @JsonKey(name: 'baby_nickname')
          required final String babyNickname,
      @JsonKey(name: 'birth_schedule_date')
          required final String birthScheduleDate}) = _$BabySignUpRequest;

  factory BabySignUpRequest.fromJson(Map<String, dynamic> json) =
      _$BabySignUpRequest.fromJson;

  @override
  @JsonKey(name: 'auth_code')
  String get authCode;
  @override
  String get nickname;
  @override
  String get email;
  @override
  String get password;
  @override
  String get birthday;
  @override
  int get gender;
  @override // 男:1, 女:2,
  @JsonKey(name: 'postal_code')
  String get postalCode;
  @override // 同意したプラポリのID
  @JsonKey(name: 'privacy_policy_consent_id')
  int get privacyPolicyConsentId;
  @override // 同意した利用規約のID
  @JsonKey(name: 'service_terms_consent_id')
  int get serviceTermsConsentId;
  @override
  dynamic get type;
  @JsonKey(name: 'baby_nickname')
  String get babyNickname;
  @JsonKey(name: 'birth_schedule_date')
  String get birthScheduleDate;
  @override
  @JsonKey(ignore: true)
  _$$BabySignUpRequestCopyWith<_$BabySignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChildSignUpRequestCopyWith<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  factory _$$ChildSignUpRequestCopyWith(_$ChildSignUpRequest value,
          $Res Function(_$ChildSignUpRequest) then) =
      __$$ChildSignUpRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'auth_code') String authCode,
      String nickname,
      String email,
      String password,
      String birthday,
      int gender,
      @JsonKey(name: 'postal_code') String postalCode,
      @JsonKey(name: 'privacy_policy_consent_id') int privacyPolicyConsentId,
      @JsonKey(name: 'service_terms_consent_id') int serviceTermsConsentId,
      dynamic type,
      @JsonKey(name: 'child_nickname') String childNickname,
      @JsonKey(name: 'child_gender') int childGender,
      @JsonKey(name: 'child_birthday') String childBirthday});
}

/// @nodoc
class __$$ChildSignUpRequestCopyWithImpl<$Res>
    extends _$SignUpRequestCopyWithImpl<$Res, _$ChildSignUpRequest>
    implements _$$ChildSignUpRequestCopyWith<$Res> {
  __$$ChildSignUpRequestCopyWithImpl(
      _$ChildSignUpRequest _value, $Res Function(_$ChildSignUpRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authCode = null,
    Object? nickname = null,
    Object? email = null,
    Object? password = null,
    Object? birthday = null,
    Object? gender = null,
    Object? postalCode = null,
    Object? privacyPolicyConsentId = null,
    Object? serviceTermsConsentId = null,
    Object? type = null,
    Object? childNickname = null,
    Object? childGender = null,
    Object? childBirthday = null,
  }) {
    return _then(_$ChildSignUpRequest(
      authCode: null == authCode
          ? _value.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      privacyPolicyConsentId: null == privacyPolicyConsentId
          ? _value.privacyPolicyConsentId
          : privacyPolicyConsentId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceTermsConsentId: null == serviceTermsConsentId
          ? _value.serviceTermsConsentId
          : serviceTermsConsentId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type ? _value.type : type,
      childNickname: null == childNickname
          ? _value.childNickname
          : childNickname // ignore: cast_nullable_to_non_nullable
              as String,
      childGender: null == childGender
          ? _value.childGender
          : childGender // ignore: cast_nullable_to_non_nullable
              as int,
      childBirthday: null == childBirthday
          ? _value.childBirthday
          : childBirthday // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildSignUpRequest implements ChildSignUpRequest {
  const _$ChildSignUpRequest(
      {@JsonKey(name: 'auth_code')
          required this.authCode,
      required this.nickname,
      required this.email,
      required this.password,
      required this.birthday,
      required this.gender,
      @JsonKey(name: 'postal_code')
          required this.postalCode,
      @JsonKey(name: 'privacy_policy_consent_id')
          required this.privacyPolicyConsentId,
      @JsonKey(name: 'service_terms_consent_id')
          required this.serviceTermsConsentId,
      this.type = 'child',
      @JsonKey(name: 'child_nickname')
          required this.childNickname,
      @JsonKey(name: 'child_gender')
          required this.childGender,
      @JsonKey(name: 'child_birthday')
          required this.childBirthday,
      final String? $type})
      : $type = $type ?? 'child';

  factory _$ChildSignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$$ChildSignUpRequestFromJson(json);

  @override
  @JsonKey(name: 'auth_code')
  final String authCode;
  @override
  final String nickname;
  @override
  final String email;
  @override
  final String password;
  @override
  final String birthday;
  @override
  final int gender;
// 男:1, 女:2,
  @override
  @JsonKey(name: 'postal_code')
  final String postalCode;
// 同意したプラポリのID
  @override
  @JsonKey(name: 'privacy_policy_consent_id')
  final int privacyPolicyConsentId;
// 同意した利用規約のID
  @override
  @JsonKey(name: 'service_terms_consent_id')
  final int serviceTermsConsentId;
  @override
  @JsonKey()
  final dynamic type;
  @override
  @JsonKey(name: 'child_nickname')
  final String childNickname;
  @override
  @JsonKey(name: 'child_gender')
  final int childGender;
  @override
  @JsonKey(name: 'child_birthday')
  final String childBirthday;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SignUpRequest.child(authCode: $authCode, nickname: $nickname, email: $email, password: $password, birthday: $birthday, gender: $gender, postalCode: $postalCode, privacyPolicyConsentId: $privacyPolicyConsentId, serviceTermsConsentId: $serviceTermsConsentId, type: $type, childNickname: $childNickname, childGender: $childGender, childBirthday: $childBirthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildSignUpRequest &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.privacyPolicyConsentId, privacyPolicyConsentId) ||
                other.privacyPolicyConsentId == privacyPolicyConsentId) &&
            (identical(other.serviceTermsConsentId, serviceTermsConsentId) ||
                other.serviceTermsConsentId == serviceTermsConsentId) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            (identical(other.childNickname, childNickname) ||
                other.childNickname == childNickname) &&
            (identical(other.childGender, childGender) ||
                other.childGender == childGender) &&
            (identical(other.childBirthday, childBirthday) ||
                other.childBirthday == childBirthday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      authCode,
      nickname,
      email,
      password,
      birthday,
      gender,
      postalCode,
      privacyPolicyConsentId,
      serviceTermsConsentId,
      const DeepCollectionEquality().hash(type),
      childNickname,
      childGender,
      childBirthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildSignUpRequestCopyWith<_$ChildSignUpRequest> get copyWith =>
      __$$ChildSignUpRequestCopyWithImpl<_$ChildSignUpRequest>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'baby_nickname')
                String babyNickname,
            @JsonKey(name: 'birth_schedule_date')
                String birthScheduleDate)
        baby,
    required TResult Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'child_nickname')
                String childNickname,
            @JsonKey(name: 'child_gender')
                int childGender,
            @JsonKey(name: 'child_birthday')
                String childBirthday)
        child,
  }) {
    return child(
        authCode,
        nickname,
        email,
        password,
        birthday,
        gender,
        postalCode,
        privacyPolicyConsentId,
        serviceTermsConsentId,
        type,
        childNickname,
        childGender,
        childBirthday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'baby_nickname')
                String babyNickname,
            @JsonKey(name: 'birth_schedule_date')
                String birthScheduleDate)?
        baby,
    TResult? Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'child_nickname')
                String childNickname,
            @JsonKey(name: 'child_gender')
                int childGender,
            @JsonKey(name: 'child_birthday')
                String childBirthday)?
        child,
  }) {
    return child?.call(
        authCode,
        nickname,
        email,
        password,
        birthday,
        gender,
        postalCode,
        privacyPolicyConsentId,
        serviceTermsConsentId,
        type,
        childNickname,
        childGender,
        childBirthday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'baby_nickname')
                String babyNickname,
            @JsonKey(name: 'birth_schedule_date')
                String birthScheduleDate)?
        baby,
    TResult Function(
            @JsonKey(name: 'auth_code')
                String authCode,
            String nickname,
            String email,
            String password,
            String birthday,
            int gender,
            @JsonKey(name: 'postal_code')
                String postalCode,
            @JsonKey(name: 'privacy_policy_consent_id')
                int privacyPolicyConsentId,
            @JsonKey(name: 'service_terms_consent_id')
                int serviceTermsConsentId,
            dynamic type,
            @JsonKey(name: 'child_nickname')
                String childNickname,
            @JsonKey(name: 'child_gender')
                int childGender,
            @JsonKey(name: 'child_birthday')
                String childBirthday)?
        child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(
          authCode,
          nickname,
          email,
          password,
          birthday,
          gender,
          postalCode,
          privacyPolicyConsentId,
          serviceTermsConsentId,
          type,
          childNickname,
          childGender,
          childBirthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BabySignUpRequest value) baby,
    required TResult Function(ChildSignUpRequest value) child,
  }) {
    return child(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BabySignUpRequest value)? baby,
    TResult? Function(ChildSignUpRequest value)? child,
  }) {
    return child?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BabySignUpRequest value)? baby,
    TResult Function(ChildSignUpRequest value)? child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildSignUpRequestToJson(
      this,
    );
  }
}

abstract class ChildSignUpRequest implements SignUpRequest {
  const factory ChildSignUpRequest(
      {@JsonKey(name: 'auth_code')
          required final String authCode,
      required final String nickname,
      required final String email,
      required final String password,
      required final String birthday,
      required final int gender,
      @JsonKey(name: 'postal_code')
          required final String postalCode,
      @JsonKey(name: 'privacy_policy_consent_id')
          required final int privacyPolicyConsentId,
      @JsonKey(name: 'service_terms_consent_id')
          required final int serviceTermsConsentId,
      final dynamic type,
      @JsonKey(name: 'child_nickname')
          required final String childNickname,
      @JsonKey(name: 'child_gender')
          required final int childGender,
      @JsonKey(name: 'child_birthday')
          required final String childBirthday}) = _$ChildSignUpRequest;

  factory ChildSignUpRequest.fromJson(Map<String, dynamic> json) =
      _$ChildSignUpRequest.fromJson;

  @override
  @JsonKey(name: 'auth_code')
  String get authCode;
  @override
  String get nickname;
  @override
  String get email;
  @override
  String get password;
  @override
  String get birthday;
  @override
  int get gender;
  @override // 男:1, 女:2,
  @JsonKey(name: 'postal_code')
  String get postalCode;
  @override // 同意したプラポリのID
  @JsonKey(name: 'privacy_policy_consent_id')
  int get privacyPolicyConsentId;
  @override // 同意した利用規約のID
  @JsonKey(name: 'service_terms_consent_id')
  int get serviceTermsConsentId;
  @override
  dynamic get type;
  @JsonKey(name: 'child_nickname')
  String get childNickname;
  @JsonKey(name: 'child_gender')
  int get childGender;
  @JsonKey(name: 'child_birthday')
  String get childBirthday;
  @override
  @JsonKey(ignore: true)
  _$$ChildSignUpRequestCopyWith<_$ChildSignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

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
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            String? nickname,
            String? email,
            String? password,
            String? birthday,
            int? gender,
            String? postalCode,
            int? privacyPolicyConsentId,
            int? serviceTermsConsentId,
            SignUpChild? child)
        inProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            String? nickname,
            String? email,
            String? password,
            String? birthday,
            int? gender,
            String? postalCode,
            int? privacyPolicyConsentId,
            int? serviceTermsConsentId,
            SignUpChild? child)?
        inProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String? nickname,
            String? email,
            String? password,
            String? birthday,
            int? gender,
            String? postalCode,
            int? privacyPolicyConsentId,
            int? serviceTermsConsentId,
            SignUpChild? child)?
        inProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInit value) init,
    required TResult Function(SignUpStateInProcess value) inProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInit value)? init,
    TResult? Function(SignUpStateInProcess value)? inProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInit value)? init,
    TResult Function(SignUpStateInProcess value)? inProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpStateInitCopyWith<$Res> {
  factory _$$SignUpStateInitCopyWith(
          _$SignUpStateInit value, $Res Function(_$SignUpStateInit) then) =
      __$$SignUpStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateInitCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateInit>
    implements _$$SignUpStateInitCopyWith<$Res> {
  __$$SignUpStateInitCopyWithImpl(
      _$SignUpStateInit _value, $Res Function(_$SignUpStateInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpStateInit implements SignUpStateInit {
  const _$SignUpStateInit();

  @override
  String toString() {
    return 'SignUpState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            String? nickname,
            String? email,
            String? password,
            String? birthday,
            int? gender,
            String? postalCode,
            int? privacyPolicyConsentId,
            int? serviceTermsConsentId,
            SignUpChild? child)
        inProcess,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            String? nickname,
            String? email,
            String? password,
            String? birthday,
            int? gender,
            String? postalCode,
            int? privacyPolicyConsentId,
            int? serviceTermsConsentId,
            SignUpChild? child)?
        inProcess,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String? nickname,
            String? email,
            String? password,
            String? birthday,
            int? gender,
            String? postalCode,
            int? privacyPolicyConsentId,
            int? serviceTermsConsentId,
            SignUpChild? child)?
        inProcess,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInit value) init,
    required TResult Function(SignUpStateInProcess value) inProcess,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInit value)? init,
    TResult? Function(SignUpStateInProcess value)? inProcess,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInit value)? init,
    TResult Function(SignUpStateInProcess value)? inProcess,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SignUpStateInit implements SignUpState {
  const factory SignUpStateInit() = _$SignUpStateInit;
}

/// @nodoc
abstract class _$$SignUpStateInProcessCopyWith<$Res> {
  factory _$$SignUpStateInProcessCopyWith(_$SignUpStateInProcess value,
          $Res Function(_$SignUpStateInProcess) then) =
      __$$SignUpStateInProcessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? nickname,
      String? email,
      String? password,
      String? birthday,
      int? gender,
      String? postalCode,
      int? privacyPolicyConsentId,
      int? serviceTermsConsentId,
      SignUpChild? child});

  $SignUpChildCopyWith<$Res>? get child;
}

/// @nodoc
class __$$SignUpStateInProcessCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateInProcess>
    implements _$$SignUpStateInProcessCopyWith<$Res> {
  __$$SignUpStateInProcessCopyWithImpl(_$SignUpStateInProcess _value,
      $Res Function(_$SignUpStateInProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? postalCode = freezed,
    Object? privacyPolicyConsentId = freezed,
    Object? serviceTermsConsentId = freezed,
    Object? child = freezed,
  }) {
    return _then(_$SignUpStateInProcess(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
      privacyPolicyConsentId: freezed == privacyPolicyConsentId
          ? _value.privacyPolicyConsentId
          : privacyPolicyConsentId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceTermsConsentId: freezed == serviceTermsConsentId
          ? _value.serviceTermsConsentId
          : serviceTermsConsentId // ignore: cast_nullable_to_non_nullable
              as int?,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as SignUpChild?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SignUpChildCopyWith<$Res>? get child {
    if (_value.child == null) {
      return null;
    }

    return $SignUpChildCopyWith<$Res>(_value.child!, (value) {
      return _then(_value.copyWith(child: value));
    });
  }
}

/// @nodoc

class _$SignUpStateInProcess implements SignUpStateInProcess {
  const _$SignUpStateInProcess(
      {this.nickname,
      this.email,
      this.password,
      this.birthday,
      this.gender,
      this.postalCode,
      this.privacyPolicyConsentId,
      this.serviceTermsConsentId,
      this.child});

  @override
  final String? nickname;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? birthday;
  @override
  final int? gender;
// 男:1, 女:2,
  @override
  final String? postalCode;
// 同意したプラポリのID
  @override
  final int? privacyPolicyConsentId;
// 同意した利用規約のID
  @override
  final int? serviceTermsConsentId;
  @override
  final SignUpChild? child;

  @override
  String toString() {
    return 'SignUpState.inProcess(nickname: $nickname, email: $email, password: $password, birthday: $birthday, gender: $gender, postalCode: $postalCode, privacyPolicyConsentId: $privacyPolicyConsentId, serviceTermsConsentId: $serviceTermsConsentId, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateInProcess &&
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
            (identical(other.child, child) || other.child == child));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      nickname,
      email,
      password,
      birthday,
      gender,
      postalCode,
      privacyPolicyConsentId,
      serviceTermsConsentId,
      child);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateInProcessCopyWith<_$SignUpStateInProcess> get copyWith =>
      __$$SignUpStateInProcessCopyWithImpl<_$SignUpStateInProcess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            String? nickname,
            String? email,
            String? password,
            String? birthday,
            int? gender,
            String? postalCode,
            int? privacyPolicyConsentId,
            int? serviceTermsConsentId,
            SignUpChild? child)
        inProcess,
  }) {
    return inProcess(nickname, email, password, birthday, gender, postalCode,
        privacyPolicyConsentId, serviceTermsConsentId, child);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            String? nickname,
            String? email,
            String? password,
            String? birthday,
            int? gender,
            String? postalCode,
            int? privacyPolicyConsentId,
            int? serviceTermsConsentId,
            SignUpChild? child)?
        inProcess,
  }) {
    return inProcess?.call(nickname, email, password, birthday, gender,
        postalCode, privacyPolicyConsentId, serviceTermsConsentId, child);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            String? nickname,
            String? email,
            String? password,
            String? birthday,
            int? gender,
            String? postalCode,
            int? privacyPolicyConsentId,
            int? serviceTermsConsentId,
            SignUpChild? child)?
        inProcess,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(nickname, email, password, birthday, gender, postalCode,
          privacyPolicyConsentId, serviceTermsConsentId, child);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInit value) init,
    required TResult Function(SignUpStateInProcess value) inProcess,
  }) {
    return inProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInit value)? init,
    TResult? Function(SignUpStateInProcess value)? inProcess,
  }) {
    return inProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInit value)? init,
    TResult Function(SignUpStateInProcess value)? inProcess,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(this);
    }
    return orElse();
  }
}

abstract class SignUpStateInProcess implements SignUpState {
  const factory SignUpStateInProcess(
      {final String? nickname,
      final String? email,
      final String? password,
      final String? birthday,
      final int? gender,
      final String? postalCode,
      final int? privacyPolicyConsentId,
      final int? serviceTermsConsentId,
      final SignUpChild? child}) = _$SignUpStateInProcess;

  String? get nickname;
  String? get email;
  String? get password;
  String? get birthday;
  int? get gender; // 男:1, 女:2,
  String? get postalCode; // 同意したプラポリのID
  int? get privacyPolicyConsentId; // 同意した利用規約のID
  int? get serviceTermsConsentId;
  SignUpChild? get child;
  @JsonKey(ignore: true)
  _$$SignUpStateInProcessCopyWith<_$SignUpStateInProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpChild {
  String get nickname => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nickname, String birthScheduledDate) baby,
    required TResult Function(String nickname, int gender, String birthday)
        child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, String birthScheduledDate)? baby,
    TResult? Function(String nickname, int gender, String birthday)? child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, String birthScheduledDate)? baby,
    TResult Function(String nickname, int gender, String birthday)? child,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpChildBaby value) baby,
    required TResult Function(SignUpChildChild value) child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpChildBaby value)? baby,
    TResult? Function(SignUpChildChild value)? child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpChildBaby value)? baby,
    TResult Function(SignUpChildChild value)? child,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpChildCopyWith<SignUpChild> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpChildCopyWith<$Res> {
  factory $SignUpChildCopyWith(
          SignUpChild value, $Res Function(SignUpChild) then) =
      _$SignUpChildCopyWithImpl<$Res, SignUpChild>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class _$SignUpChildCopyWithImpl<$Res, $Val extends SignUpChild>
    implements $SignUpChildCopyWith<$Res> {
  _$SignUpChildCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpChildBabyCopyWith<$Res>
    implements $SignUpChildCopyWith<$Res> {
  factory _$$SignUpChildBabyCopyWith(
          _$SignUpChildBaby value, $Res Function(_$SignUpChildBaby) then) =
      __$$SignUpChildBabyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname, String birthScheduledDate});
}

/// @nodoc
class __$$SignUpChildBabyCopyWithImpl<$Res>
    extends _$SignUpChildCopyWithImpl<$Res, _$SignUpChildBaby>
    implements _$$SignUpChildBabyCopyWith<$Res> {
  __$$SignUpChildBabyCopyWithImpl(
      _$SignUpChildBaby _value, $Res Function(_$SignUpChildBaby) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? birthScheduledDate = null,
  }) {
    return _then(_$SignUpChildBaby(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      birthScheduledDate: null == birthScheduledDate
          ? _value.birthScheduledDate
          : birthScheduledDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpChildBaby implements SignUpChildBaby {
  const _$SignUpChildBaby({this.nickname = '', this.birthScheduledDate = ''});

  @override
  @JsonKey()
  final String nickname;
  @override
  @JsonKey()
  final String birthScheduledDate;

  @override
  String toString() {
    return 'SignUpChild.baby(nickname: $nickname, birthScheduledDate: $birthScheduledDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpChildBaby &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.birthScheduledDate, birthScheduledDate) ||
                other.birthScheduledDate == birthScheduledDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname, birthScheduledDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpChildBabyCopyWith<_$SignUpChildBaby> get copyWith =>
      __$$SignUpChildBabyCopyWithImpl<_$SignUpChildBaby>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nickname, String birthScheduledDate) baby,
    required TResult Function(String nickname, int gender, String birthday)
        child,
  }) {
    return baby(nickname, birthScheduledDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, String birthScheduledDate)? baby,
    TResult? Function(String nickname, int gender, String birthday)? child,
  }) {
    return baby?.call(nickname, birthScheduledDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, String birthScheduledDate)? baby,
    TResult Function(String nickname, int gender, String birthday)? child,
    required TResult orElse(),
  }) {
    if (baby != null) {
      return baby(nickname, birthScheduledDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpChildBaby value) baby,
    required TResult Function(SignUpChildChild value) child,
  }) {
    return baby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpChildBaby value)? baby,
    TResult? Function(SignUpChildChild value)? child,
  }) {
    return baby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpChildBaby value)? baby,
    TResult Function(SignUpChildChild value)? child,
    required TResult orElse(),
  }) {
    if (baby != null) {
      return baby(this);
    }
    return orElse();
  }
}

abstract class SignUpChildBaby implements SignUpChild {
  const factory SignUpChildBaby(
      {final String nickname,
      final String birthScheduledDate}) = _$SignUpChildBaby;

  @override
  String get nickname;
  String get birthScheduledDate;
  @override
  @JsonKey(ignore: true)
  _$$SignUpChildBabyCopyWith<_$SignUpChildBaby> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpChildChildCopyWith<$Res>
    implements $SignUpChildCopyWith<$Res> {
  factory _$$SignUpChildChildCopyWith(
          _$SignUpChildChild value, $Res Function(_$SignUpChildChild) then) =
      __$$SignUpChildChildCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname, int gender, String birthday});
}

/// @nodoc
class __$$SignUpChildChildCopyWithImpl<$Res>
    extends _$SignUpChildCopyWithImpl<$Res, _$SignUpChildChild>
    implements _$$SignUpChildChildCopyWith<$Res> {
  __$$SignUpChildChildCopyWithImpl(
      _$SignUpChildChild _value, $Res Function(_$SignUpChildChild) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? gender = null,
    Object? birthday = null,
  }) {
    return _then(_$SignUpChildChild(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpChildChild implements SignUpChildChild {
  const _$SignUpChildChild(
      {this.nickname = '', this.gender = 0, this.birthday = ''});

  @override
  @JsonKey()
  final String nickname;
  @override
  @JsonKey()
  final int gender;
// 男:1, 女:2,
  @override
  @JsonKey()
  final String birthday;

  @override
  String toString() {
    return 'SignUpChild.child(nickname: $nickname, gender: $gender, birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpChildChild &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname, gender, birthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpChildChildCopyWith<_$SignUpChildChild> get copyWith =>
      __$$SignUpChildChildCopyWithImpl<_$SignUpChildChild>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nickname, String birthScheduledDate) baby,
    required TResult Function(String nickname, int gender, String birthday)
        child,
  }) {
    return child(nickname, gender, birthday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nickname, String birthScheduledDate)? baby,
    TResult? Function(String nickname, int gender, String birthday)? child,
  }) {
    return child?.call(nickname, gender, birthday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nickname, String birthScheduledDate)? baby,
    TResult Function(String nickname, int gender, String birthday)? child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(nickname, gender, birthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpChildBaby value) baby,
    required TResult Function(SignUpChildChild value) child,
  }) {
    return child(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpChildBaby value)? baby,
    TResult? Function(SignUpChildChild value)? child,
  }) {
    return child?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpChildBaby value)? baby,
    TResult Function(SignUpChildChild value)? child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(this);
    }
    return orElse();
  }
}

abstract class SignUpChildChild implements SignUpChild {
  const factory SignUpChildChild(
      {final String nickname,
      final int gender,
      final String birthday}) = _$SignUpChildChild;

  @override
  String get nickname;
  int get gender; // 男:1, 女:2,
  String get birthday;
  @override
  @JsonKey(ignore: true)
  _$$SignUpChildChildCopyWith<_$SignUpChildChild> get copyWith =>
      throw _privateConstructorUsedError;
}

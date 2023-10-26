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
mixin _$ProfileInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileInfoData? inputData, bool saving) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileInfoData? inputData, bool saving)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileInfoData? inputData, bool saving)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInfoLoading value) loading,
    required TResult Function(ProfileInfoLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInfoLoading value)? loading,
    TResult? Function(ProfileInfoLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInfoLoading value)? loading,
    TResult Function(ProfileInfoLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInfoStateCopyWith<$Res> {
  factory $ProfileInfoStateCopyWith(
          ProfileInfoState value, $Res Function(ProfileInfoState) then) =
      _$ProfileInfoStateCopyWithImpl<$Res, ProfileInfoState>;
}

/// @nodoc
class _$ProfileInfoStateCopyWithImpl<$Res, $Val extends ProfileInfoState>
    implements $ProfileInfoStateCopyWith<$Res> {
  _$ProfileInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileInfoLoadingCopyWith<$Res> {
  factory _$$ProfileInfoLoadingCopyWith(_$ProfileInfoLoading value,
          $Res Function(_$ProfileInfoLoading) then) =
      __$$ProfileInfoLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileInfoLoadingCopyWithImpl<$Res>
    extends _$ProfileInfoStateCopyWithImpl<$Res, _$ProfileInfoLoading>
    implements _$$ProfileInfoLoadingCopyWith<$Res> {
  __$$ProfileInfoLoadingCopyWithImpl(
      _$ProfileInfoLoading _value, $Res Function(_$ProfileInfoLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileInfoLoading implements ProfileInfoLoading {
  const _$ProfileInfoLoading();

  @override
  String toString() {
    return 'ProfileInfoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileInfoLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileInfoData? inputData, bool saving) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileInfoData? inputData, bool saving)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileInfoData? inputData, bool saving)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInfoLoading value) loading,
    required TResult Function(ProfileInfoLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInfoLoading value)? loading,
    TResult? Function(ProfileInfoLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInfoLoading value)? loading,
    TResult Function(ProfileInfoLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileInfoLoading implements ProfileInfoState {
  const factory ProfileInfoLoading() = _$ProfileInfoLoading;
}

/// @nodoc
abstract class _$$ProfileInfoLoadedCopyWith<$Res> {
  factory _$$ProfileInfoLoadedCopyWith(
          _$ProfileInfoLoaded value, $Res Function(_$ProfileInfoLoaded) then) =
      __$$ProfileInfoLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileInfoData? inputData, bool saving});

  $ProfileInfoDataCopyWith<$Res>? get inputData;
}

/// @nodoc
class __$$ProfileInfoLoadedCopyWithImpl<$Res>
    extends _$ProfileInfoStateCopyWithImpl<$Res, _$ProfileInfoLoaded>
    implements _$$ProfileInfoLoadedCopyWith<$Res> {
  __$$ProfileInfoLoadedCopyWithImpl(
      _$ProfileInfoLoaded _value, $Res Function(_$ProfileInfoLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputData = freezed,
    Object? saving = null,
  }) {
    return _then(_$ProfileInfoLoaded(
      inputData: freezed == inputData
          ? _value.inputData
          : inputData // ignore: cast_nullable_to_non_nullable
              as ProfileInfoData?,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileInfoDataCopyWith<$Res>? get inputData {
    if (_value.inputData == null) {
      return null;
    }

    return $ProfileInfoDataCopyWith<$Res>(_value.inputData!, (value) {
      return _then(_value.copyWith(inputData: value));
    });
  }
}

/// @nodoc

class _$ProfileInfoLoaded implements ProfileInfoLoaded {
  const _$ProfileInfoLoaded({this.inputData, this.saving = false});

  @override
  final ProfileInfoData? inputData;
  @override
  @JsonKey()
  final bool saving;

  @override
  String toString() {
    return 'ProfileInfoState.loaded(inputData: $inputData, saving: $saving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInfoLoaded &&
            (identical(other.inputData, inputData) ||
                other.inputData == inputData) &&
            (identical(other.saving, saving) || other.saving == saving));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputData, saving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileInfoLoadedCopyWith<_$ProfileInfoLoaded> get copyWith =>
      __$$ProfileInfoLoadedCopyWithImpl<_$ProfileInfoLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileInfoData? inputData, bool saving) loaded,
  }) {
    return loaded(inputData, saving);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileInfoData? inputData, bool saving)? loaded,
  }) {
    return loaded?.call(inputData, saving);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileInfoData? inputData, bool saving)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(inputData, saving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInfoLoading value) loading,
    required TResult Function(ProfileInfoLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInfoLoading value)? loading,
    TResult? Function(ProfileInfoLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInfoLoading value)? loading,
    TResult Function(ProfileInfoLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileInfoLoaded implements ProfileInfoState {
  const factory ProfileInfoLoaded(
      {final ProfileInfoData? inputData,
      final bool saving}) = _$ProfileInfoLoaded;

  ProfileInfoData? get inputData;
  bool get saving;
  @JsonKey(ignore: true)
  _$$ProfileInfoLoadedCopyWith<_$ProfileInfoLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileInfoData {
  /// 名前（ニックネーム）
  String get name => throw _privateConstructorUsedError;

  /// 生年月日
  DateTime? get birthday => throw _privateConstructorUsedError;

  /// 性別
  Gender get gender => throw _privateConstructorUsedError;

  /// 郵便番号
  String get postalCode => throw _privateConstructorUsedError;

  /// メールアドレス
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileInfoDataCopyWith<ProfileInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInfoDataCopyWith<$Res> {
  factory $ProfileInfoDataCopyWith(
          ProfileInfoData value, $Res Function(ProfileInfoData) then) =
      _$ProfileInfoDataCopyWithImpl<$Res, ProfileInfoData>;
  @useResult
  $Res call(
      {String name,
      DateTime? birthday,
      Gender gender,
      String postalCode,
      String email});
}

/// @nodoc
class _$ProfileInfoDataCopyWithImpl<$Res, $Val extends ProfileInfoData>
    implements $ProfileInfoDataCopyWith<$Res> {
  _$ProfileInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? birthday = freezed,
    Object? gender = null,
    Object? postalCode = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileInfoDataCopyWith<$Res>
    implements $ProfileInfoDataCopyWith<$Res> {
  factory _$$_ProfileInfoDataCopyWith(
          _$_ProfileInfoData value, $Res Function(_$_ProfileInfoData) then) =
      __$$_ProfileInfoDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime? birthday,
      Gender gender,
      String postalCode,
      String email});
}

/// @nodoc
class __$$_ProfileInfoDataCopyWithImpl<$Res>
    extends _$ProfileInfoDataCopyWithImpl<$Res, _$_ProfileInfoData>
    implements _$$_ProfileInfoDataCopyWith<$Res> {
  __$$_ProfileInfoDataCopyWithImpl(
      _$_ProfileInfoData _value, $Res Function(_$_ProfileInfoData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? birthday = freezed,
    Object? gender = null,
    Object? postalCode = null,
    Object? email = null,
  }) {
    return _then(_$_ProfileInfoData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileInfoData implements _ProfileInfoData {
  const _$_ProfileInfoData(
      {this.name = '',
      this.birthday,
      this.gender = Gender.woman,
      this.postalCode = '',
      this.email = ''});

  /// 名前（ニックネーム）
  @override
  @JsonKey()
  final String name;

  /// 生年月日
  @override
  final DateTime? birthday;

  /// 性別
  @override
  @JsonKey()
  final Gender gender;

  /// 郵便番号
  @override
  @JsonKey()
  final String postalCode;

  /// メールアドレス
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'ProfileInfoData(name: $name, birthday: $birthday, gender: $gender, postalCode: $postalCode, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileInfoData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, birthday, gender, postalCode, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileInfoDataCopyWith<_$_ProfileInfoData> get copyWith =>
      __$$_ProfileInfoDataCopyWithImpl<_$_ProfileInfoData>(this, _$identity);
}

abstract class _ProfileInfoData implements ProfileInfoData {
  const factory _ProfileInfoData(
      {final String name,
      final DateTime? birthday,
      final Gender gender,
      final String postalCode,
      final String email}) = _$_ProfileInfoData;

  @override

  /// 名前（ニックネーム）
  String get name;
  @override

  /// 生年月日
  DateTime? get birthday;
  @override

  /// 性別
  Gender get gender;
  @override

  /// 郵便番号
  String get postalCode;
  @override

  /// メールアドレス
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileInfoDataCopyWith<_$_ProfileInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

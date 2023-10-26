// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() unauthenticated,
    required TResult Function(
            int userId, String accessToken, int? selectedChildId)
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? unauthenticated,
    TResult? Function(int userId, String accessToken, int? selectedChildId)?
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? unauthenticated,
    TResult Function(int userId, String accessToken, int? selectedChildId)?
        authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInit value) init,
    required TResult Function(UserStateUnauthenticated value) unauthenticated,
    required TResult Function(UserStateAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInit value)? init,
    TResult? Function(UserStateUnauthenticated value)? unauthenticated,
    TResult? Function(UserStateAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInit value)? init,
    TResult Function(UserStateUnauthenticated value)? unauthenticated,
    TResult Function(UserStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserStateInitCopyWith<$Res> {
  factory _$$UserStateInitCopyWith(
          _$UserStateInit value, $Res Function(_$UserStateInit) then) =
      __$$UserStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateInitCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateInit>
    implements _$$UserStateInitCopyWith<$Res> {
  __$$UserStateInitCopyWithImpl(
      _$UserStateInit _value, $Res Function(_$UserStateInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserStateInit implements UserStateInit {
  const _$UserStateInit();

  @override
  String toString() {
    return 'UserState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() unauthenticated,
    required TResult Function(
            int userId, String accessToken, int? selectedChildId)
        authenticated,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? unauthenticated,
    TResult? Function(int userId, String accessToken, int? selectedChildId)?
        authenticated,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? unauthenticated,
    TResult Function(int userId, String accessToken, int? selectedChildId)?
        authenticated,
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
    required TResult Function(UserStateInit value) init,
    required TResult Function(UserStateUnauthenticated value) unauthenticated,
    required TResult Function(UserStateAuthenticated value) authenticated,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInit value)? init,
    TResult? Function(UserStateUnauthenticated value)? unauthenticated,
    TResult? Function(UserStateAuthenticated value)? authenticated,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInit value)? init,
    TResult Function(UserStateUnauthenticated value)? unauthenticated,
    TResult Function(UserStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UserStateInit implements UserState {
  const factory UserStateInit() = _$UserStateInit;
}

/// @nodoc
abstract class _$$UserStateUnauthenticatedCopyWith<$Res> {
  factory _$$UserStateUnauthenticatedCopyWith(_$UserStateUnauthenticated value,
          $Res Function(_$UserStateUnauthenticated) then) =
      __$$UserStateUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateUnauthenticatedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateUnauthenticated>
    implements _$$UserStateUnauthenticatedCopyWith<$Res> {
  __$$UserStateUnauthenticatedCopyWithImpl(_$UserStateUnauthenticated _value,
      $Res Function(_$UserStateUnauthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserStateUnauthenticated implements UserStateUnauthenticated {
  const _$UserStateUnauthenticated();

  @override
  String toString() {
    return 'UserState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() unauthenticated,
    required TResult Function(
            int userId, String accessToken, int? selectedChildId)
        authenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? unauthenticated,
    TResult? Function(int userId, String accessToken, int? selectedChildId)?
        authenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? unauthenticated,
    TResult Function(int userId, String accessToken, int? selectedChildId)?
        authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInit value) init,
    required TResult Function(UserStateUnauthenticated value) unauthenticated,
    required TResult Function(UserStateAuthenticated value) authenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInit value)? init,
    TResult? Function(UserStateUnauthenticated value)? unauthenticated,
    TResult? Function(UserStateAuthenticated value)? authenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInit value)? init,
    TResult Function(UserStateUnauthenticated value)? unauthenticated,
    TResult Function(UserStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UserStateUnauthenticated implements UserState {
  const factory UserStateUnauthenticated() = _$UserStateUnauthenticated;
}

/// @nodoc
abstract class _$$UserStateAuthenticatedCopyWith<$Res> {
  factory _$$UserStateAuthenticatedCopyWith(_$UserStateAuthenticated value,
          $Res Function(_$UserStateAuthenticated) then) =
      __$$UserStateAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId, String accessToken, int? selectedChildId});
}

/// @nodoc
class __$$UserStateAuthenticatedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateAuthenticated>
    implements _$$UserStateAuthenticatedCopyWith<$Res> {
  __$$UserStateAuthenticatedCopyWithImpl(_$UserStateAuthenticated _value,
      $Res Function(_$UserStateAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? accessToken = null,
    Object? selectedChildId = freezed,
  }) {
    return _then(_$UserStateAuthenticated(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      selectedChildId: freezed == selectedChildId
          ? _value.selectedChildId
          : selectedChildId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UserStateAuthenticated implements UserStateAuthenticated {
  const _$UserStateAuthenticated(
      {required this.userId, required this.accessToken, this.selectedChildId});

  /// ユーザーID
  @override
  final int userId;

  /// アクセストークン
  @override
  final String accessToken;

  /// 選択済み子どもID
  @override
  final int? selectedChildId;

  @override
  String toString() {
    return 'UserState.authenticated(userId: $userId, accessToken: $accessToken, selectedChildId: $selectedChildId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateAuthenticated &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.selectedChildId, selectedChildId) ||
                other.selectedChildId == selectedChildId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, accessToken, selectedChildId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateAuthenticatedCopyWith<_$UserStateAuthenticated> get copyWith =>
      __$$UserStateAuthenticatedCopyWithImpl<_$UserStateAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() unauthenticated,
    required TResult Function(
            int userId, String accessToken, int? selectedChildId)
        authenticated,
  }) {
    return authenticated(userId, accessToken, selectedChildId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? unauthenticated,
    TResult? Function(int userId, String accessToken, int? selectedChildId)?
        authenticated,
  }) {
    return authenticated?.call(userId, accessToken, selectedChildId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? unauthenticated,
    TResult Function(int userId, String accessToken, int? selectedChildId)?
        authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(userId, accessToken, selectedChildId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInit value) init,
    required TResult Function(UserStateUnauthenticated value) unauthenticated,
    required TResult Function(UserStateAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInit value)? init,
    TResult? Function(UserStateUnauthenticated value)? unauthenticated,
    TResult? Function(UserStateAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInit value)? init,
    TResult Function(UserStateUnauthenticated value)? unauthenticated,
    TResult Function(UserStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class UserStateAuthenticated implements UserState {
  const factory UserStateAuthenticated(
      {required final int userId,
      required final String accessToken,
      final int? selectedChildId}) = _$UserStateAuthenticated;

  /// ユーザーID
  int get userId;

  /// アクセストークン
  String get accessToken;

  /// 選択済み子どもID
  int? get selectedChildId;
  @JsonKey(ignore: true)
  _$$UserStateAuthenticatedCopyWith<_$UserStateAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

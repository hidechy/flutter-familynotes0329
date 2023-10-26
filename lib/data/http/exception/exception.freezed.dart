// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HttpStatusException {
  String get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) maintenanceMode,
    required TResult Function(String msg) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? maintenanceMode,
    TResult? Function(String msg)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? maintenanceMode,
    TResult Function(String msg)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeoutHttpStatusException value) timeout,
    required TResult Function(MaintenanceModeHttpStatusException value)
        maintenanceMode,
    required TResult Function(OtherHttpStatusException value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeoutHttpStatusException value)? timeout,
    TResult? Function(MaintenanceModeHttpStatusException value)?
        maintenanceMode,
    TResult? Function(OtherHttpStatusException value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeoutHttpStatusException value)? timeout,
    TResult Function(MaintenanceModeHttpStatusException value)? maintenanceMode,
    TResult Function(OtherHttpStatusException value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HttpStatusExceptionCopyWith<HttpStatusException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpStatusExceptionCopyWith<$Res> {
  factory $HttpStatusExceptionCopyWith(
          HttpStatusException value, $Res Function(HttpStatusException) then) =
      _$HttpStatusExceptionCopyWithImpl<$Res, HttpStatusException>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$HttpStatusExceptionCopyWithImpl<$Res, $Val extends HttpStatusException>
    implements $HttpStatusExceptionCopyWith<$Res> {
  _$HttpStatusExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeoutHttpStatusExceptionCopyWith<$Res>
    implements $HttpStatusExceptionCopyWith<$Res> {
  factory _$$TimeoutHttpStatusExceptionCopyWith(
          _$TimeoutHttpStatusException value,
          $Res Function(_$TimeoutHttpStatusException) then) =
      __$$TimeoutHttpStatusExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$TimeoutHttpStatusExceptionCopyWithImpl<$Res>
    extends _$HttpStatusExceptionCopyWithImpl<$Res,
        _$TimeoutHttpStatusException>
    implements _$$TimeoutHttpStatusExceptionCopyWith<$Res> {
  __$$TimeoutHttpStatusExceptionCopyWithImpl(
      _$TimeoutHttpStatusException _value,
      $Res Function(_$TimeoutHttpStatusException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$TimeoutHttpStatusException(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TimeoutHttpStatusException extends TimeoutHttpStatusException {
  const _$TimeoutHttpStatusException({this.msg = 'Request Timeout'})
      : super._();

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'HttpStatusException.timeout(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeoutHttpStatusException &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeoutHttpStatusExceptionCopyWith<_$TimeoutHttpStatusException>
      get copyWith => __$$TimeoutHttpStatusExceptionCopyWithImpl<
          _$TimeoutHttpStatusException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) maintenanceMode,
    required TResult Function(String msg) other,
  }) {
    return timeout(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? maintenanceMode,
    TResult? Function(String msg)? other,
  }) {
    return timeout?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? maintenanceMode,
    TResult Function(String msg)? other,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeoutHttpStatusException value) timeout,
    required TResult Function(MaintenanceModeHttpStatusException value)
        maintenanceMode,
    required TResult Function(OtherHttpStatusException value) other,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeoutHttpStatusException value)? timeout,
    TResult? Function(MaintenanceModeHttpStatusException value)?
        maintenanceMode,
    TResult? Function(OtherHttpStatusException value)? other,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeoutHttpStatusException value)? timeout,
    TResult Function(MaintenanceModeHttpStatusException value)? maintenanceMode,
    TResult Function(OtherHttpStatusException value)? other,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class TimeoutHttpStatusException extends HttpStatusException {
  const factory TimeoutHttpStatusException({final String msg}) =
      _$TimeoutHttpStatusException;
  const TimeoutHttpStatusException._() : super._();

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$TimeoutHttpStatusExceptionCopyWith<_$TimeoutHttpStatusException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaintenanceModeHttpStatusExceptionCopyWith<$Res>
    implements $HttpStatusExceptionCopyWith<$Res> {
  factory _$$MaintenanceModeHttpStatusExceptionCopyWith(
          _$MaintenanceModeHttpStatusException value,
          $Res Function(_$MaintenanceModeHttpStatusException) then) =
      __$$MaintenanceModeHttpStatusExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$MaintenanceModeHttpStatusExceptionCopyWithImpl<$Res>
    extends _$HttpStatusExceptionCopyWithImpl<$Res,
        _$MaintenanceModeHttpStatusException>
    implements _$$MaintenanceModeHttpStatusExceptionCopyWith<$Res> {
  __$$MaintenanceModeHttpStatusExceptionCopyWithImpl(
      _$MaintenanceModeHttpStatusException _value,
      $Res Function(_$MaintenanceModeHttpStatusException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$MaintenanceModeHttpStatusException(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MaintenanceModeHttpStatusException
    extends MaintenanceModeHttpStatusException {
  const _$MaintenanceModeHttpStatusException({this.msg = 'Maintenance On'})
      : super._();

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'HttpStatusException.maintenanceMode(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceModeHttpStatusException &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceModeHttpStatusExceptionCopyWith<
          _$MaintenanceModeHttpStatusException>
      get copyWith => __$$MaintenanceModeHttpStatusExceptionCopyWithImpl<
          _$MaintenanceModeHttpStatusException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) maintenanceMode,
    required TResult Function(String msg) other,
  }) {
    return maintenanceMode(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? maintenanceMode,
    TResult? Function(String msg)? other,
  }) {
    return maintenanceMode?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? maintenanceMode,
    TResult Function(String msg)? other,
    required TResult orElse(),
  }) {
    if (maintenanceMode != null) {
      return maintenanceMode(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeoutHttpStatusException value) timeout,
    required TResult Function(MaintenanceModeHttpStatusException value)
        maintenanceMode,
    required TResult Function(OtherHttpStatusException value) other,
  }) {
    return maintenanceMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeoutHttpStatusException value)? timeout,
    TResult? Function(MaintenanceModeHttpStatusException value)?
        maintenanceMode,
    TResult? Function(OtherHttpStatusException value)? other,
  }) {
    return maintenanceMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeoutHttpStatusException value)? timeout,
    TResult Function(MaintenanceModeHttpStatusException value)? maintenanceMode,
    TResult Function(OtherHttpStatusException value)? other,
    required TResult orElse(),
  }) {
    if (maintenanceMode != null) {
      return maintenanceMode(this);
    }
    return orElse();
  }
}

abstract class MaintenanceModeHttpStatusException extends HttpStatusException {
  const factory MaintenanceModeHttpStatusException({final String msg}) =
      _$MaintenanceModeHttpStatusException;
  const MaintenanceModeHttpStatusException._() : super._();

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$MaintenanceModeHttpStatusExceptionCopyWith<
          _$MaintenanceModeHttpStatusException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtherHttpStatusExceptionCopyWith<$Res>
    implements $HttpStatusExceptionCopyWith<$Res> {
  factory _$$OtherHttpStatusExceptionCopyWith(_$OtherHttpStatusException value,
          $Res Function(_$OtherHttpStatusException) then) =
      __$$OtherHttpStatusExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$OtherHttpStatusExceptionCopyWithImpl<$Res>
    extends _$HttpStatusExceptionCopyWithImpl<$Res, _$OtherHttpStatusException>
    implements _$$OtherHttpStatusExceptionCopyWith<$Res> {
  __$$OtherHttpStatusExceptionCopyWithImpl(_$OtherHttpStatusException _value,
      $Res Function(_$OtherHttpStatusException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$OtherHttpStatusException(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtherHttpStatusException extends OtherHttpStatusException {
  const _$OtherHttpStatusException({this.msg = 'Status Code Error'})
      : super._();

  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'HttpStatusException.other(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherHttpStatusException &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherHttpStatusExceptionCopyWith<_$OtherHttpStatusException>
      get copyWith =>
          __$$OtherHttpStatusExceptionCopyWithImpl<_$OtherHttpStatusException>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) timeout,
    required TResult Function(String msg) maintenanceMode,
    required TResult Function(String msg) other,
  }) {
    return other(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? timeout,
    TResult? Function(String msg)? maintenanceMode,
    TResult? Function(String msg)? other,
  }) {
    return other?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? timeout,
    TResult Function(String msg)? maintenanceMode,
    TResult Function(String msg)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeoutHttpStatusException value) timeout,
    required TResult Function(MaintenanceModeHttpStatusException value)
        maintenanceMode,
    required TResult Function(OtherHttpStatusException value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeoutHttpStatusException value)? timeout,
    TResult? Function(MaintenanceModeHttpStatusException value)?
        maintenanceMode,
    TResult? Function(OtherHttpStatusException value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeoutHttpStatusException value)? timeout,
    TResult Function(MaintenanceModeHttpStatusException value)? maintenanceMode,
    TResult Function(OtherHttpStatusException value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class OtherHttpStatusException extends HttpStatusException {
  const factory OtherHttpStatusException({final String msg}) =
      _$OtherHttpStatusException;
  const OtherHttpStatusException._() : super._();

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$OtherHttpStatusExceptionCopyWith<_$OtherHttpStatusException>
      get copyWith => throw _privateConstructorUsedError;
}

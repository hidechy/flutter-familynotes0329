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
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showIndicator) maintenanceOff,
    required TResult Function() maintenanceOn,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showIndicator)? maintenanceOff,
    TResult? Function()? maintenanceOn,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showIndicator)? maintenanceOff,
    TResult Function()? maintenanceOn,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateMaintenanceOff value) maintenanceOff,
    required TResult Function(AppStateMaintenanceOn value) maintenanceOn,
    required TResult Function(AppStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateMaintenanceOff value)? maintenanceOff,
    TResult? Function(AppStateMaintenanceOn value)? maintenanceOn,
    TResult? Function(AppStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateMaintenanceOff value)? maintenanceOff,
    TResult Function(AppStateMaintenanceOn value)? maintenanceOn,
    TResult Function(AppStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppStateMaintenanceOffCopyWith<$Res> {
  factory _$$AppStateMaintenanceOffCopyWith(_$AppStateMaintenanceOff value,
          $Res Function(_$AppStateMaintenanceOff) then) =
      __$$AppStateMaintenanceOffCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showIndicator});
}

/// @nodoc
class __$$AppStateMaintenanceOffCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateMaintenanceOff>
    implements _$$AppStateMaintenanceOffCopyWith<$Res> {
  __$$AppStateMaintenanceOffCopyWithImpl(_$AppStateMaintenanceOff _value,
      $Res Function(_$AppStateMaintenanceOff) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showIndicator = null,
  }) {
    return _then(_$AppStateMaintenanceOff(
      showIndicator: null == showIndicator
          ? _value.showIndicator
          : showIndicator // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppStateMaintenanceOff implements AppStateMaintenanceOff {
  const _$AppStateMaintenanceOff({this.showIndicator = false});

  @override
  @JsonKey()
  final bool showIndicator;

  @override
  String toString() {
    return 'AppState.maintenanceOff(showIndicator: $showIndicator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateMaintenanceOff &&
            (identical(other.showIndicator, showIndicator) ||
                other.showIndicator == showIndicator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showIndicator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateMaintenanceOffCopyWith<_$AppStateMaintenanceOff> get copyWith =>
      __$$AppStateMaintenanceOffCopyWithImpl<_$AppStateMaintenanceOff>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showIndicator) maintenanceOff,
    required TResult Function() maintenanceOn,
    required TResult Function() error,
  }) {
    return maintenanceOff(showIndicator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showIndicator)? maintenanceOff,
    TResult? Function()? maintenanceOn,
    TResult? Function()? error,
  }) {
    return maintenanceOff?.call(showIndicator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showIndicator)? maintenanceOff,
    TResult Function()? maintenanceOn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (maintenanceOff != null) {
      return maintenanceOff(showIndicator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateMaintenanceOff value) maintenanceOff,
    required TResult Function(AppStateMaintenanceOn value) maintenanceOn,
    required TResult Function(AppStateError value) error,
  }) {
    return maintenanceOff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateMaintenanceOff value)? maintenanceOff,
    TResult? Function(AppStateMaintenanceOn value)? maintenanceOn,
    TResult? Function(AppStateError value)? error,
  }) {
    return maintenanceOff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateMaintenanceOff value)? maintenanceOff,
    TResult Function(AppStateMaintenanceOn value)? maintenanceOn,
    TResult Function(AppStateError value)? error,
    required TResult orElse(),
  }) {
    if (maintenanceOff != null) {
      return maintenanceOff(this);
    }
    return orElse();
  }
}

abstract class AppStateMaintenanceOff implements AppState {
  const factory AppStateMaintenanceOff({final bool showIndicator}) =
      _$AppStateMaintenanceOff;

  bool get showIndicator;
  @JsonKey(ignore: true)
  _$$AppStateMaintenanceOffCopyWith<_$AppStateMaintenanceOff> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppStateMaintenanceOnCopyWith<$Res> {
  factory _$$AppStateMaintenanceOnCopyWith(_$AppStateMaintenanceOn value,
          $Res Function(_$AppStateMaintenanceOn) then) =
      __$$AppStateMaintenanceOnCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateMaintenanceOnCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateMaintenanceOn>
    implements _$$AppStateMaintenanceOnCopyWith<$Res> {
  __$$AppStateMaintenanceOnCopyWithImpl(_$AppStateMaintenanceOn _value,
      $Res Function(_$AppStateMaintenanceOn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateMaintenanceOn implements AppStateMaintenanceOn {
  const _$AppStateMaintenanceOn();

  @override
  String toString() {
    return 'AppState.maintenanceOn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateMaintenanceOn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showIndicator) maintenanceOff,
    required TResult Function() maintenanceOn,
    required TResult Function() error,
  }) {
    return maintenanceOn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showIndicator)? maintenanceOff,
    TResult? Function()? maintenanceOn,
    TResult? Function()? error,
  }) {
    return maintenanceOn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showIndicator)? maintenanceOff,
    TResult Function()? maintenanceOn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (maintenanceOn != null) {
      return maintenanceOn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateMaintenanceOff value) maintenanceOff,
    required TResult Function(AppStateMaintenanceOn value) maintenanceOn,
    required TResult Function(AppStateError value) error,
  }) {
    return maintenanceOn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateMaintenanceOff value)? maintenanceOff,
    TResult? Function(AppStateMaintenanceOn value)? maintenanceOn,
    TResult? Function(AppStateError value)? error,
  }) {
    return maintenanceOn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateMaintenanceOff value)? maintenanceOff,
    TResult Function(AppStateMaintenanceOn value)? maintenanceOn,
    TResult Function(AppStateError value)? error,
    required TResult orElse(),
  }) {
    if (maintenanceOn != null) {
      return maintenanceOn(this);
    }
    return orElse();
  }
}

abstract class AppStateMaintenanceOn implements AppState {
  const factory AppStateMaintenanceOn() = _$AppStateMaintenanceOn;
}

/// @nodoc
abstract class _$$AppStateErrorCopyWith<$Res> {
  factory _$$AppStateErrorCopyWith(
          _$AppStateError value, $Res Function(_$AppStateError) then) =
      __$$AppStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateErrorCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateError>
    implements _$$AppStateErrorCopyWith<$Res> {
  __$$AppStateErrorCopyWithImpl(
      _$AppStateError _value, $Res Function(_$AppStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStateError implements AppStateError {
  const _$AppStateError();

  @override
  String toString() {
    return 'AppState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showIndicator) maintenanceOff,
    required TResult Function() maintenanceOn,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showIndicator)? maintenanceOff,
    TResult? Function()? maintenanceOn,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showIndicator)? maintenanceOff,
    TResult Function()? maintenanceOn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateMaintenanceOff value) maintenanceOff,
    required TResult Function(AppStateMaintenanceOn value) maintenanceOn,
    required TResult Function(AppStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStateMaintenanceOff value)? maintenanceOff,
    TResult? Function(AppStateMaintenanceOn value)? maintenanceOn,
    TResult? Function(AppStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateMaintenanceOff value)? maintenanceOff,
    TResult Function(AppStateMaintenanceOn value)? maintenanceOn,
    TResult Function(AppStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AppStateError implements AppState {
  const factory AppStateError() = _$AppStateError;
}

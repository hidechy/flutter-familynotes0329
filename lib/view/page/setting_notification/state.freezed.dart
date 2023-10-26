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
mixin _$SettingNotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool permission) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool permission)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool permission)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingNotificationStateLoading value) loading,
    required TResult Function(SettingNotificationStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingNotificationStateLoading value)? loading,
    TResult? Function(SettingNotificationStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingNotificationStateLoading value)? loading,
    TResult Function(SettingNotificationStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingNotificationStateCopyWith<$Res> {
  factory $SettingNotificationStateCopyWith(SettingNotificationState value,
          $Res Function(SettingNotificationState) then) =
      _$SettingNotificationStateCopyWithImpl<$Res, SettingNotificationState>;
}

/// @nodoc
class _$SettingNotificationStateCopyWithImpl<$Res,
        $Val extends SettingNotificationState>
    implements $SettingNotificationStateCopyWith<$Res> {
  _$SettingNotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SettingNotificationStateLoadingCopyWith<$Res> {
  factory _$$SettingNotificationStateLoadingCopyWith(
          _$SettingNotificationStateLoading value,
          $Res Function(_$SettingNotificationStateLoading) then) =
      __$$SettingNotificationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingNotificationStateLoadingCopyWithImpl<$Res>
    extends _$SettingNotificationStateCopyWithImpl<$Res,
        _$SettingNotificationStateLoading>
    implements _$$SettingNotificationStateLoadingCopyWith<$Res> {
  __$$SettingNotificationStateLoadingCopyWithImpl(
      _$SettingNotificationStateLoading _value,
      $Res Function(_$SettingNotificationStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingNotificationStateLoading
    implements SettingNotificationStateLoading {
  const _$SettingNotificationStateLoading();

  @override
  String toString() {
    return 'SettingNotificationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingNotificationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool permission) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool permission)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool permission)? loaded,
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
    required TResult Function(SettingNotificationStateLoading value) loading,
    required TResult Function(SettingNotificationStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingNotificationStateLoading value)? loading,
    TResult? Function(SettingNotificationStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingNotificationStateLoading value)? loading,
    TResult Function(SettingNotificationStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SettingNotificationStateLoading
    implements SettingNotificationState {
  const factory SettingNotificationStateLoading() =
      _$SettingNotificationStateLoading;
}

/// @nodoc
abstract class _$$SettingNotificationStateLoadedCopyWith<$Res> {
  factory _$$SettingNotificationStateLoadedCopyWith(
          _$SettingNotificationStateLoaded value,
          $Res Function(_$SettingNotificationStateLoaded) then) =
      __$$SettingNotificationStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool permission});
}

/// @nodoc
class __$$SettingNotificationStateLoadedCopyWithImpl<$Res>
    extends _$SettingNotificationStateCopyWithImpl<$Res,
        _$SettingNotificationStateLoaded>
    implements _$$SettingNotificationStateLoadedCopyWith<$Res> {
  __$$SettingNotificationStateLoadedCopyWithImpl(
      _$SettingNotificationStateLoaded _value,
      $Res Function(_$SettingNotificationStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permission = null,
  }) {
    return _then(_$SettingNotificationStateLoaded(
      permission: null == permission
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingNotificationStateLoaded
    implements SettingNotificationStateLoaded {
  const _$SettingNotificationStateLoaded({this.permission = true});

// 有効無効
  @override
  @JsonKey()
  final bool permission;

  @override
  String toString() {
    return 'SettingNotificationState.loaded(permission: $permission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingNotificationStateLoaded &&
            (identical(other.permission, permission) ||
                other.permission == permission));
  }

  @override
  int get hashCode => Object.hash(runtimeType, permission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingNotificationStateLoadedCopyWith<_$SettingNotificationStateLoaded>
      get copyWith => __$$SettingNotificationStateLoadedCopyWithImpl<
          _$SettingNotificationStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool permission) loaded,
  }) {
    return loaded(permission);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool permission)? loaded,
  }) {
    return loaded?.call(permission);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool permission)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(permission);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingNotificationStateLoading value) loading,
    required TResult Function(SettingNotificationStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingNotificationStateLoading value)? loading,
    TResult? Function(SettingNotificationStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingNotificationStateLoading value)? loading,
    TResult Function(SettingNotificationStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SettingNotificationStateLoaded
    implements SettingNotificationState {
  const factory SettingNotificationStateLoaded({final bool permission}) =
      _$SettingNotificationStateLoaded;

// 有効無効
  bool get permission;
  @JsonKey(ignore: true)
  _$$SettingNotificationStateLoadedCopyWith<_$SettingNotificationStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

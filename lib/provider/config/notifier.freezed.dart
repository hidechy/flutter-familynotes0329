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
mixin _$AppConfigState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ConfigModel config) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ConfigModel config)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ConfigModel config)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppConfigStateInit value) init,
    required TResult Function(AppConfigStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppConfigStateInit value)? init,
    TResult? Function(AppConfigStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppConfigStateInit value)? init,
    TResult Function(AppConfigStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigStateCopyWith<$Res> {
  factory $AppConfigStateCopyWith(
          AppConfigState value, $Res Function(AppConfigState) then) =
      _$AppConfigStateCopyWithImpl<$Res, AppConfigState>;
}

/// @nodoc
class _$AppConfigStateCopyWithImpl<$Res, $Val extends AppConfigState>
    implements $AppConfigStateCopyWith<$Res> {
  _$AppConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppConfigStateInitCopyWith<$Res> {
  factory _$$AppConfigStateInitCopyWith(_$AppConfigStateInit value,
          $Res Function(_$AppConfigStateInit) then) =
      __$$AppConfigStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppConfigStateInitCopyWithImpl<$Res>
    extends _$AppConfigStateCopyWithImpl<$Res, _$AppConfigStateInit>
    implements _$$AppConfigStateInitCopyWith<$Res> {
  __$$AppConfigStateInitCopyWithImpl(
      _$AppConfigStateInit _value, $Res Function(_$AppConfigStateInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppConfigStateInit implements AppConfigStateInit {
  const _$AppConfigStateInit();

  @override
  String toString() {
    return 'AppConfigState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppConfigStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ConfigModel config) loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ConfigModel config)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ConfigModel config)? loaded,
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
    required TResult Function(AppConfigStateInit value) init,
    required TResult Function(AppConfigStateLoaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppConfigStateInit value)? init,
    TResult? Function(AppConfigStateLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppConfigStateInit value)? init,
    TResult Function(AppConfigStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class AppConfigStateInit implements AppConfigState {
  const factory AppConfigStateInit() = _$AppConfigStateInit;
}

/// @nodoc
abstract class _$$AppConfigStateLoadedCopyWith<$Res> {
  factory _$$AppConfigStateLoadedCopyWith(_$AppConfigStateLoaded value,
          $Res Function(_$AppConfigStateLoaded) then) =
      __$$AppConfigStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ConfigModel config});

  $ConfigModelCopyWith<$Res> get config;
}

/// @nodoc
class __$$AppConfigStateLoadedCopyWithImpl<$Res>
    extends _$AppConfigStateCopyWithImpl<$Res, _$AppConfigStateLoaded>
    implements _$$AppConfigStateLoadedCopyWith<$Res> {
  __$$AppConfigStateLoadedCopyWithImpl(_$AppConfigStateLoaded _value,
      $Res Function(_$AppConfigStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = null,
  }) {
    return _then(_$AppConfigStateLoaded(
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as ConfigModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ConfigModelCopyWith<$Res> get config {
    return $ConfigModelCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value));
    });
  }
}

/// @nodoc

class _$AppConfigStateLoaded implements AppConfigStateLoaded {
  const _$AppConfigStateLoaded({required this.config});

  @override
  final ConfigModel config;

  @override
  String toString() {
    return 'AppConfigState.loaded(config: $config)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigStateLoaded &&
            (identical(other.config, config) || other.config == config));
  }

  @override
  int get hashCode => Object.hash(runtimeType, config);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigStateLoadedCopyWith<_$AppConfigStateLoaded> get copyWith =>
      __$$AppConfigStateLoadedCopyWithImpl<_$AppConfigStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ConfigModel config) loaded,
  }) {
    return loaded(config);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ConfigModel config)? loaded,
  }) {
    return loaded?.call(config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ConfigModel config)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppConfigStateInit value) init,
    required TResult Function(AppConfigStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppConfigStateInit value)? init,
    TResult? Function(AppConfigStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppConfigStateInit value)? init,
    TResult Function(AppConfigStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AppConfigStateLoaded implements AppConfigState {
  const factory AppConfigStateLoaded({required final ConfigModel config}) =
      _$AppConfigStateLoaded;

  ConfigModel get config;
  @JsonKey(ignore: true)
  _$$AppConfigStateLoadedCopyWith<_$AppConfigStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

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
mixin _$HomeBodyPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(HomeLayout currentLayout) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(HomeLayout currentLayout)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(HomeLayout currentLayout)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeBodyPageStateInit value) init,
    required TResult Function(HomeBodyPageStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeBodyPageStateInit value)? init,
    TResult? Function(HomeBodyPageStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeBodyPageStateInit value)? init,
    TResult Function(HomeBodyPageStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBodyPageStateCopyWith<$Res> {
  factory $HomeBodyPageStateCopyWith(
          HomeBodyPageState value, $Res Function(HomeBodyPageState) then) =
      _$HomeBodyPageStateCopyWithImpl<$Res, HomeBodyPageState>;
}

/// @nodoc
class _$HomeBodyPageStateCopyWithImpl<$Res, $Val extends HomeBodyPageState>
    implements $HomeBodyPageStateCopyWith<$Res> {
  _$HomeBodyPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeBodyPageStateInitCopyWith<$Res> {
  factory _$$HomeBodyPageStateInitCopyWith(_$HomeBodyPageStateInit value,
          $Res Function(_$HomeBodyPageStateInit) then) =
      __$$HomeBodyPageStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeBodyPageStateInitCopyWithImpl<$Res>
    extends _$HomeBodyPageStateCopyWithImpl<$Res, _$HomeBodyPageStateInit>
    implements _$$HomeBodyPageStateInitCopyWith<$Res> {
  __$$HomeBodyPageStateInitCopyWithImpl(_$HomeBodyPageStateInit _value,
      $Res Function(_$HomeBodyPageStateInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeBodyPageStateInit implements HomeBodyPageStateInit {
  const _$HomeBodyPageStateInit();

  @override
  String toString() {
    return 'HomeBodyPageState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeBodyPageStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(HomeLayout currentLayout) loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(HomeLayout currentLayout)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(HomeLayout currentLayout)? loaded,
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
    required TResult Function(HomeBodyPageStateInit value) init,
    required TResult Function(HomeBodyPageStateLoaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeBodyPageStateInit value)? init,
    TResult? Function(HomeBodyPageStateLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeBodyPageStateInit value)? init,
    TResult Function(HomeBodyPageStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class HomeBodyPageStateInit implements HomeBodyPageState {
  const factory HomeBodyPageStateInit() = _$HomeBodyPageStateInit;
}

/// @nodoc
abstract class _$$HomeBodyPageStateLoadedCopyWith<$Res> {
  factory _$$HomeBodyPageStateLoadedCopyWith(_$HomeBodyPageStateLoaded value,
          $Res Function(_$HomeBodyPageStateLoaded) then) =
      __$$HomeBodyPageStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeLayout currentLayout});
}

/// @nodoc
class __$$HomeBodyPageStateLoadedCopyWithImpl<$Res>
    extends _$HomeBodyPageStateCopyWithImpl<$Res, _$HomeBodyPageStateLoaded>
    implements _$$HomeBodyPageStateLoadedCopyWith<$Res> {
  __$$HomeBodyPageStateLoadedCopyWithImpl(_$HomeBodyPageStateLoaded _value,
      $Res Function(_$HomeBodyPageStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLayout = null,
  }) {
    return _then(_$HomeBodyPageStateLoaded(
      currentLayout: null == currentLayout
          ? _value.currentLayout
          : currentLayout // ignore: cast_nullable_to_non_nullable
              as HomeLayout,
    ));
  }
}

/// @nodoc

class _$HomeBodyPageStateLoaded implements HomeBodyPageStateLoaded {
  const _$HomeBodyPageStateLoaded({required this.currentLayout});

  @override
  final HomeLayout currentLayout;

  @override
  String toString() {
    return 'HomeBodyPageState.loaded(currentLayout: $currentLayout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBodyPageStateLoaded &&
            (identical(other.currentLayout, currentLayout) ||
                other.currentLayout == currentLayout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLayout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBodyPageStateLoadedCopyWith<_$HomeBodyPageStateLoaded> get copyWith =>
      __$$HomeBodyPageStateLoadedCopyWithImpl<_$HomeBodyPageStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(HomeLayout currentLayout) loaded,
  }) {
    return loaded(currentLayout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(HomeLayout currentLayout)? loaded,
  }) {
    return loaded?.call(currentLayout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(HomeLayout currentLayout)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentLayout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeBodyPageStateInit value) init,
    required TResult Function(HomeBodyPageStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeBodyPageStateInit value)? init,
    TResult? Function(HomeBodyPageStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeBodyPageStateInit value)? init,
    TResult Function(HomeBodyPageStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeBodyPageStateLoaded implements HomeBodyPageState {
  const factory HomeBodyPageStateLoaded(
      {required final HomeLayout currentLayout}) = _$HomeBodyPageStateLoaded;

  HomeLayout get currentLayout;
  @JsonKey(ignore: true)
  _$$HomeBodyPageStateLoadedCopyWith<_$HomeBodyPageStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

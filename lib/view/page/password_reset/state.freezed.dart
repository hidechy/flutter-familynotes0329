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
mixin _$PasswordResetState {
  String get email => throw _privateConstructorUsedError;
  bool get saving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordResetStateCopyWith<PasswordResetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetStateCopyWith<$Res> {
  factory $PasswordResetStateCopyWith(
          PasswordResetState value, $Res Function(PasswordResetState) then) =
      _$PasswordResetStateCopyWithImpl<$Res, PasswordResetState>;
  @useResult
  $Res call({String email, bool saving});
}

/// @nodoc
class _$PasswordResetStateCopyWithImpl<$Res, $Val extends PasswordResetState>
    implements $PasswordResetStateCopyWith<$Res> {
  _$PasswordResetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? saving = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PasswordResetStateCopyWith<$Res>
    implements $PasswordResetStateCopyWith<$Res> {
  factory _$$_PasswordResetStateCopyWith(_$_PasswordResetState value,
          $Res Function(_$_PasswordResetState) then) =
      __$$_PasswordResetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, bool saving});
}

/// @nodoc
class __$$_PasswordResetStateCopyWithImpl<$Res>
    extends _$PasswordResetStateCopyWithImpl<$Res, _$_PasswordResetState>
    implements _$$_PasswordResetStateCopyWith<$Res> {
  __$$_PasswordResetStateCopyWithImpl(
      _$_PasswordResetState _value, $Res Function(_$_PasswordResetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? saving = null,
  }) {
    return _then(_$_PasswordResetState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      saving: null == saving
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PasswordResetState implements _PasswordResetState {
  const _$_PasswordResetState({this.email = '', this.saving = false});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final bool saving;

  @override
  String toString() {
    return 'PasswordResetState(email: $email, saving: $saving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordResetState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.saving, saving) || other.saving == saving));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, saving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordResetStateCopyWith<_$_PasswordResetState> get copyWith =>
      __$$_PasswordResetStateCopyWithImpl<_$_PasswordResetState>(
          this, _$identity);
}

abstract class _PasswordResetState implements PasswordResetState {
  const factory _PasswordResetState({final String email, final bool saving}) =
      _$_PasswordResetState;

  @override
  String get email;
  @override
  bool get saving;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordResetStateCopyWith<_$_PasswordResetState> get copyWith =>
      throw _privateConstructorUsedError;
}

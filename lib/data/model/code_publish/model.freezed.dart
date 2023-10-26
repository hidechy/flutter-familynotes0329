// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CodePublishModel _$CodePublishModelFromJson(Map<String, dynamic> json) {
  return _CodePublishModel.fromJson(json);
}

/// @nodoc
mixin _$CodePublishModel {
  @JsonKey(name: 'auth_code')
  String get authCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodePublishModelCopyWith<CodePublishModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodePublishModelCopyWith<$Res> {
  factory $CodePublishModelCopyWith(
          CodePublishModel value, $Res Function(CodePublishModel) then) =
      _$CodePublishModelCopyWithImpl<$Res, CodePublishModel>;
  @useResult
  $Res call({@JsonKey(name: 'auth_code') String authCode});
}

/// @nodoc
class _$CodePublishModelCopyWithImpl<$Res, $Val extends CodePublishModel>
    implements $CodePublishModelCopyWith<$Res> {
  _$CodePublishModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authCode = null,
  }) {
    return _then(_value.copyWith(
      authCode: null == authCode
          ? _value.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CodePublishModelCopyWith<$Res>
    implements $CodePublishModelCopyWith<$Res> {
  factory _$$_CodePublishModelCopyWith(
          _$_CodePublishModel value, $Res Function(_$_CodePublishModel) then) =
      __$$_CodePublishModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'auth_code') String authCode});
}

/// @nodoc
class __$$_CodePublishModelCopyWithImpl<$Res>
    extends _$CodePublishModelCopyWithImpl<$Res, _$_CodePublishModel>
    implements _$$_CodePublishModelCopyWith<$Res> {
  __$$_CodePublishModelCopyWithImpl(
      _$_CodePublishModel _value, $Res Function(_$_CodePublishModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authCode = null,
  }) {
    return _then(_$_CodePublishModel(
      authCode: null == authCode
          ? _value.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CodePublishModel implements _CodePublishModel {
  const _$_CodePublishModel(
      {@JsonKey(name: 'auth_code') required this.authCode});

  factory _$_CodePublishModel.fromJson(Map<String, dynamic> json) =>
      _$$_CodePublishModelFromJson(json);

  @override
  @JsonKey(name: 'auth_code')
  final String authCode;

  @override
  String toString() {
    return 'CodePublishModel(authCode: $authCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CodePublishModel &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, authCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CodePublishModelCopyWith<_$_CodePublishModel> get copyWith =>
      __$$_CodePublishModelCopyWithImpl<_$_CodePublishModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CodePublishModelToJson(
      this,
    );
  }
}

abstract class _CodePublishModel implements CodePublishModel {
  const factory _CodePublishModel(
          {@JsonKey(name: 'auth_code') required final String authCode}) =
      _$_CodePublishModel;

  factory _CodePublishModel.fromJson(Map<String, dynamic> json) =
      _$_CodePublishModel.fromJson;

  @override
  @JsonKey(name: 'auth_code')
  String get authCode;
  @override
  @JsonKey(ignore: true)
  _$$_CodePublishModelCopyWith<_$_CodePublishModel> get copyWith =>
      throw _privateConstructorUsedError;
}

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

ConfigModel _$ConfigModelFromJson(Map<String, dynamic> json) {
  return _ConfigModel.fromJson(json);
}

/// @nodoc
mixin _$ConfigModel {
  List<ConfigItemModel> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigModelCopyWith<ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigModelCopyWith<$Res> {
  factory $ConfigModelCopyWith(
          ConfigModel value, $Res Function(ConfigModel) then) =
      _$ConfigModelCopyWithImpl<$Res, ConfigModel>;
  @useResult
  $Res call({List<ConfigItemModel> list});
}

/// @nodoc
class _$ConfigModelCopyWithImpl<$Res, $Val extends ConfigModel>
    implements $ConfigModelCopyWith<$Res> {
  _$ConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ConfigItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfigModelCopyWith<$Res>
    implements $ConfigModelCopyWith<$Res> {
  factory _$$_ConfigModelCopyWith(
          _$_ConfigModel value, $Res Function(_$_ConfigModel) then) =
      __$$_ConfigModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ConfigItemModel> list});
}

/// @nodoc
class __$$_ConfigModelCopyWithImpl<$Res>
    extends _$ConfigModelCopyWithImpl<$Res, _$_ConfigModel>
    implements _$$_ConfigModelCopyWith<$Res> {
  __$$_ConfigModelCopyWithImpl(
      _$_ConfigModel _value, $Res Function(_$_ConfigModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_ConfigModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ConfigItemModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ConfigModel implements _ConfigModel {
  const _$_ConfigModel({final List<ConfigItemModel> list = const []})
      : _list = list;

  factory _$_ConfigModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigModelFromJson(json);

  final List<ConfigItemModel> _list;
  @override
  @JsonKey()
  List<ConfigItemModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ConfigModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigModelCopyWith<_$_ConfigModel> get copyWith =>
      __$$_ConfigModelCopyWithImpl<_$_ConfigModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigModelToJson(
      this,
    );
  }
}

abstract class _ConfigModel implements ConfigModel {
  const factory _ConfigModel({final List<ConfigItemModel> list}) =
      _$_ConfigModel;

  factory _ConfigModel.fromJson(Map<String, dynamic> json) =
      _$_ConfigModel.fromJson;

  @override
  List<ConfigItemModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigModelCopyWith<_$_ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ConfigItemModel _$ConfigItemModelFromJson(Map<String, dynamic> json) {
  return _ConfigItemModel.fromJson(json);
}

/// @nodoc
mixin _$ConfigItemModel {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigItemModelCopyWith<ConfigItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigItemModelCopyWith<$Res> {
  factory $ConfigItemModelCopyWith(
          ConfigItemModel value, $Res Function(ConfigItemModel) then) =
      _$ConfigItemModelCopyWithImpl<$Res, ConfigItemModel>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$ConfigItemModelCopyWithImpl<$Res, $Val extends ConfigItemModel>
    implements $ConfigItemModelCopyWith<$Res> {
  _$ConfigItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfigItemModelCopyWith<$Res>
    implements $ConfigItemModelCopyWith<$Res> {
  factory _$$_ConfigItemModelCopyWith(
          _$_ConfigItemModel value, $Res Function(_$_ConfigItemModel) then) =
      __$$_ConfigItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$_ConfigItemModelCopyWithImpl<$Res>
    extends _$ConfigItemModelCopyWithImpl<$Res, _$_ConfigItemModel>
    implements _$$_ConfigItemModelCopyWith<$Res> {
  __$$_ConfigItemModelCopyWithImpl(
      _$_ConfigItemModel _value, $Res Function(_$_ConfigItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$_ConfigItemModel(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfigItemModel implements _ConfigItemModel {
  const _$_ConfigItemModel({required this.key, required this.value});

  factory _$_ConfigItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigItemModelFromJson(json);

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'ConfigItemModel(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigItemModel &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigItemModelCopyWith<_$_ConfigItemModel> get copyWith =>
      __$$_ConfigItemModelCopyWithImpl<_$_ConfigItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigItemModelToJson(
      this,
    );
  }
}

abstract class _ConfigItemModel implements ConfigItemModel {
  const factory _ConfigItemModel(
      {required final String key,
      required final String value}) = _$_ConfigItemModel;

  factory _ConfigItemModel.fromJson(Map<String, dynamic> json) =
      _$_ConfigItemModel.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigItemModelCopyWith<_$_ConfigItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

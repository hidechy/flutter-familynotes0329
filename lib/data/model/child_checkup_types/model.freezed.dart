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

ChildCheckupTypesModel _$ChildCheckupTypesModelFromJson(
    Map<String, dynamic> json) {
  return _ChildCheckupTypesModel.fromJson(json);
}

/// @nodoc
mixin _$ChildCheckupTypesModel {
  List<ChildCheckupType> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildCheckupTypesModelCopyWith<ChildCheckupTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCheckupTypesModelCopyWith<$Res> {
  factory $ChildCheckupTypesModelCopyWith(ChildCheckupTypesModel value,
          $Res Function(ChildCheckupTypesModel) then) =
      _$ChildCheckupTypesModelCopyWithImpl<$Res, ChildCheckupTypesModel>;
  @useResult
  $Res call({List<ChildCheckupType> list});
}

/// @nodoc
class _$ChildCheckupTypesModelCopyWithImpl<$Res,
        $Val extends ChildCheckupTypesModel>
    implements $ChildCheckupTypesModelCopyWith<$Res> {
  _$ChildCheckupTypesModelCopyWithImpl(this._value, this._then);

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
              as List<ChildCheckupType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildCheckupTypesModelCopyWith<$Res>
    implements $ChildCheckupTypesModelCopyWith<$Res> {
  factory _$$_ChildCheckupTypesModelCopyWith(_$_ChildCheckupTypesModel value,
          $Res Function(_$_ChildCheckupTypesModel) then) =
      __$$_ChildCheckupTypesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChildCheckupType> list});
}

/// @nodoc
class __$$_ChildCheckupTypesModelCopyWithImpl<$Res>
    extends _$ChildCheckupTypesModelCopyWithImpl<$Res,
        _$_ChildCheckupTypesModel>
    implements _$$_ChildCheckupTypesModelCopyWith<$Res> {
  __$$_ChildCheckupTypesModelCopyWithImpl(_$_ChildCheckupTypesModel _value,
      $Res Function(_$_ChildCheckupTypesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_ChildCheckupTypesModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ChildCheckupType>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChildCheckupTypesModel implements _ChildCheckupTypesModel {
  const _$_ChildCheckupTypesModel(
      {final List<ChildCheckupType> list = const []})
      : _list = list;

  factory _$_ChildCheckupTypesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChildCheckupTypesModelFromJson(json);

  final List<ChildCheckupType> _list;
  @override
  @JsonKey()
  List<ChildCheckupType> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ChildCheckupTypesModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildCheckupTypesModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildCheckupTypesModelCopyWith<_$_ChildCheckupTypesModel> get copyWith =>
      __$$_ChildCheckupTypesModelCopyWithImpl<_$_ChildCheckupTypesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildCheckupTypesModelToJson(
      this,
    );
  }
}

abstract class _ChildCheckupTypesModel implements ChildCheckupTypesModel {
  const factory _ChildCheckupTypesModel({final List<ChildCheckupType> list}) =
      _$_ChildCheckupTypesModel;

  factory _ChildCheckupTypesModel.fromJson(Map<String, dynamic> json) =
      _$_ChildCheckupTypesModel.fromJson;

  @override
  List<ChildCheckupType> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ChildCheckupTypesModelCopyWith<_$_ChildCheckupTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildCheckupType _$ChildCheckupTypeFromJson(Map<String, dynamic> json) {
  return _ChildCheckupType.fromJson(json);
}

/// @nodoc
mixin _$ChildCheckupType {
  @JsonKey(name: 'child_checkup_type_id')
  int? get childCheckupTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkup_name')
  String? get checkUpName => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkup_short_name')
  String? get checkUpShortName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildCheckupTypeCopyWith<ChildCheckupType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCheckupTypeCopyWith<$Res> {
  factory $ChildCheckupTypeCopyWith(
          ChildCheckupType value, $Res Function(ChildCheckupType) then) =
      _$ChildCheckupTypeCopyWithImpl<$Res, ChildCheckupType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_checkup_type_id') int? childCheckupTypeId,
      @JsonKey(name: 'checkup_name') String? checkUpName,
      @JsonKey(name: 'checkup_short_name') String? checkUpShortName});
}

/// @nodoc
class _$ChildCheckupTypeCopyWithImpl<$Res, $Val extends ChildCheckupType>
    implements $ChildCheckupTypeCopyWith<$Res> {
  _$ChildCheckupTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childCheckupTypeId = freezed,
    Object? checkUpName = freezed,
    Object? checkUpShortName = freezed,
  }) {
    return _then(_value.copyWith(
      childCheckupTypeId: freezed == childCheckupTypeId
          ? _value.childCheckupTypeId
          : childCheckupTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      checkUpName: freezed == checkUpName
          ? _value.checkUpName
          : checkUpName // ignore: cast_nullable_to_non_nullable
              as String?,
      checkUpShortName: freezed == checkUpShortName
          ? _value.checkUpShortName
          : checkUpShortName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildCheckupTypeCopyWith<$Res>
    implements $ChildCheckupTypeCopyWith<$Res> {
  factory _$$_ChildCheckupTypeCopyWith(
          _$_ChildCheckupType value, $Res Function(_$_ChildCheckupType) then) =
      __$$_ChildCheckupTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_checkup_type_id') int? childCheckupTypeId,
      @JsonKey(name: 'checkup_name') String? checkUpName,
      @JsonKey(name: 'checkup_short_name') String? checkUpShortName});
}

/// @nodoc
class __$$_ChildCheckupTypeCopyWithImpl<$Res>
    extends _$ChildCheckupTypeCopyWithImpl<$Res, _$_ChildCheckupType>
    implements _$$_ChildCheckupTypeCopyWith<$Res> {
  __$$_ChildCheckupTypeCopyWithImpl(
      _$_ChildCheckupType _value, $Res Function(_$_ChildCheckupType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childCheckupTypeId = freezed,
    Object? checkUpName = freezed,
    Object? checkUpShortName = freezed,
  }) {
    return _then(_$_ChildCheckupType(
      childCheckupTypeId: freezed == childCheckupTypeId
          ? _value.childCheckupTypeId
          : childCheckupTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      checkUpName: freezed == checkUpName
          ? _value.checkUpName
          : checkUpName // ignore: cast_nullable_to_non_nullable
              as String?,
      checkUpShortName: freezed == checkUpShortName
          ? _value.checkUpShortName
          : checkUpShortName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildCheckupType implements _ChildCheckupType {
  const _$_ChildCheckupType(
      {@JsonKey(name: 'child_checkup_type_id') required this.childCheckupTypeId,
      @JsonKey(name: 'checkup_name') required this.checkUpName,
      @JsonKey(name: 'checkup_short_name') required this.checkUpShortName});

  factory _$_ChildCheckupType.fromJson(Map<String, dynamic> json) =>
      _$$_ChildCheckupTypeFromJson(json);

  @override
  @JsonKey(name: 'child_checkup_type_id')
  final int? childCheckupTypeId;
  @override
  @JsonKey(name: 'checkup_name')
  final String? checkUpName;
  @override
  @JsonKey(name: 'checkup_short_name')
  final String? checkUpShortName;

  @override
  String toString() {
    return 'ChildCheckupType(childCheckupTypeId: $childCheckupTypeId, checkUpName: $checkUpName, checkUpShortName: $checkUpShortName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildCheckupType &&
            (identical(other.childCheckupTypeId, childCheckupTypeId) ||
                other.childCheckupTypeId == childCheckupTypeId) &&
            (identical(other.checkUpName, checkUpName) ||
                other.checkUpName == checkUpName) &&
            (identical(other.checkUpShortName, checkUpShortName) ||
                other.checkUpShortName == checkUpShortName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, childCheckupTypeId, checkUpName, checkUpShortName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildCheckupTypeCopyWith<_$_ChildCheckupType> get copyWith =>
      __$$_ChildCheckupTypeCopyWithImpl<_$_ChildCheckupType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildCheckupTypeToJson(
      this,
    );
  }
}

abstract class _ChildCheckupType implements ChildCheckupType {
  const factory _ChildCheckupType(
      {@JsonKey(name: 'child_checkup_type_id')
          required final int? childCheckupTypeId,
      @JsonKey(name: 'checkup_name')
          required final String? checkUpName,
      @JsonKey(name: 'checkup_short_name')
          required final String? checkUpShortName}) = _$_ChildCheckupType;

  factory _ChildCheckupType.fromJson(Map<String, dynamic> json) =
      _$_ChildCheckupType.fromJson;

  @override
  @JsonKey(name: 'child_checkup_type_id')
  int? get childCheckupTypeId;
  @override
  @JsonKey(name: 'checkup_name')
  String? get checkUpName;
  @override
  @JsonKey(name: 'checkup_short_name')
  String? get checkUpShortName;
  @override
  @JsonKey(ignore: true)
  _$$_ChildCheckupTypeCopyWith<_$_ChildCheckupType> get copyWith =>
      throw _privateConstructorUsedError;
}

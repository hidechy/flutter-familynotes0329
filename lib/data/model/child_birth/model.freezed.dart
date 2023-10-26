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

ChildBirthListModel _$ChildBirthListModelFromJson(Map<String, dynamic> json) {
  return _ChildBirthListModel.fromJson(json);
}

/// @nodoc
mixin _$ChildBirthListModel {
  List<ChildBirthModel> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildBirthListModelCopyWith<ChildBirthListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildBirthListModelCopyWith<$Res> {
  factory $ChildBirthListModelCopyWith(
          ChildBirthListModel value, $Res Function(ChildBirthListModel) then) =
      _$ChildBirthListModelCopyWithImpl<$Res, ChildBirthListModel>;
  @useResult
  $Res call({List<ChildBirthModel> list});
}

/// @nodoc
class _$ChildBirthListModelCopyWithImpl<$Res, $Val extends ChildBirthListModel>
    implements $ChildBirthListModelCopyWith<$Res> {
  _$ChildBirthListModelCopyWithImpl(this._value, this._then);

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
              as List<ChildBirthModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildBirthListModelCopyWith<$Res>
    implements $ChildBirthListModelCopyWith<$Res> {
  factory _$$_ChildBirthListModelCopyWith(_$_ChildBirthListModel value,
          $Res Function(_$_ChildBirthListModel) then) =
      __$$_ChildBirthListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChildBirthModel> list});
}

/// @nodoc
class __$$_ChildBirthListModelCopyWithImpl<$Res>
    extends _$ChildBirthListModelCopyWithImpl<$Res, _$_ChildBirthListModel>
    implements _$$_ChildBirthListModelCopyWith<$Res> {
  __$$_ChildBirthListModelCopyWithImpl(_$_ChildBirthListModel _value,
      $Res Function(_$_ChildBirthListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_ChildBirthListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ChildBirthModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChildBirthListModel implements _ChildBirthListModel {
  const _$_ChildBirthListModel({final List<ChildBirthModel> list = const []})
      : _list = list;

  factory _$_ChildBirthListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChildBirthListModelFromJson(json);

  final List<ChildBirthModel> _list;
  @override
  @JsonKey()
  List<ChildBirthModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ChildBirthListModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildBirthListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildBirthListModelCopyWith<_$_ChildBirthListModel> get copyWith =>
      __$$_ChildBirthListModelCopyWithImpl<_$_ChildBirthListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildBirthListModelToJson(
      this,
    );
  }
}

abstract class _ChildBirthListModel implements ChildBirthListModel {
  const factory _ChildBirthListModel({final List<ChildBirthModel> list}) =
      _$_ChildBirthListModel;

  factory _ChildBirthListModel.fromJson(Map<String, dynamic> json) =
      _$_ChildBirthListModel.fromJson;

  @override
  List<ChildBirthModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ChildBirthListModelCopyWith<_$_ChildBirthListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildBirthModel _$ChildBirthModelFromJson(Map<String, dynamic> json) {
  return _ChildBirthModel.fromJson(json);
}

/// @nodoc
mixin _$ChildBirthModel {
  @JsonKey(name: 'child_id')
  int get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildBirthModelCopyWith<ChildBirthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildBirthModelCopyWith<$Res> {
  factory $ChildBirthModelCopyWith(
          ChildBirthModel value, $Res Function(ChildBirthModel) then) =
      _$ChildBirthModelCopyWithImpl<$Res, ChildBirthModel>;
  @useResult
  $Res call({@JsonKey(name: 'child_id') int id, String nickname});
}

/// @nodoc
class _$ChildBirthModelCopyWithImpl<$Res, $Val extends ChildBirthModel>
    implements $ChildBirthModelCopyWith<$Res> {
  _$ChildBirthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildBirthModelCopyWith<$Res>
    implements $ChildBirthModelCopyWith<$Res> {
  factory _$$_ChildBirthModelCopyWith(
          _$_ChildBirthModel value, $Res Function(_$_ChildBirthModel) then) =
      __$$_ChildBirthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'child_id') int id, String nickname});
}

/// @nodoc
class __$$_ChildBirthModelCopyWithImpl<$Res>
    extends _$ChildBirthModelCopyWithImpl<$Res, _$_ChildBirthModel>
    implements _$$_ChildBirthModelCopyWith<$Res> {
  __$$_ChildBirthModelCopyWithImpl(
      _$_ChildBirthModel _value, $Res Function(_$_ChildBirthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
  }) {
    return _then(_$_ChildBirthModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildBirthModel implements _ChildBirthModel {
  const _$_ChildBirthModel(
      {@JsonKey(name: 'child_id') required this.id, this.nickname = ''});

  factory _$_ChildBirthModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChildBirthModelFromJson(json);

  @override
  @JsonKey(name: 'child_id')
  final int id;
  @override
  @JsonKey()
  final String nickname;

  @override
  String toString() {
    return 'ChildBirthModel(id: $id, nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildBirthModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildBirthModelCopyWith<_$_ChildBirthModel> get copyWith =>
      __$$_ChildBirthModelCopyWithImpl<_$_ChildBirthModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildBirthModelToJson(
      this,
    );
  }
}

abstract class _ChildBirthModel implements ChildBirthModel {
  const factory _ChildBirthModel(
      {@JsonKey(name: 'child_id') required final int id,
      final String nickname}) = _$_ChildBirthModel;

  factory _ChildBirthModel.fromJson(Map<String, dynamic> json) =
      _$_ChildBirthModel.fromJson;

  @override
  @JsonKey(name: 'child_id')
  int get id;
  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$_ChildBirthModelCopyWith<_$_ChildBirthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

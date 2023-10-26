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

CategoryListModel _$CategoryListModelFromJson(Map<String, dynamic> json) {
  return _CategoryListModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryListModel {
  List<CategoryItemModel> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryListModelCopyWith<CategoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListModelCopyWith<$Res> {
  factory $CategoryListModelCopyWith(
          CategoryListModel value, $Res Function(CategoryListModel) then) =
      _$CategoryListModelCopyWithImpl<$Res, CategoryListModel>;
  @useResult
  $Res call({List<CategoryItemModel> list});
}

/// @nodoc
class _$CategoryListModelCopyWithImpl<$Res, $Val extends CategoryListModel>
    implements $CategoryListModelCopyWith<$Res> {
  _$CategoryListModelCopyWithImpl(this._value, this._then);

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
              as List<CategoryItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryListModelCopyWith<$Res>
    implements $CategoryListModelCopyWith<$Res> {
  factory _$$_CategoryListModelCopyWith(_$_CategoryListModel value,
          $Res Function(_$_CategoryListModel) then) =
      __$$_CategoryListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryItemModel> list});
}

/// @nodoc
class __$$_CategoryListModelCopyWithImpl<$Res>
    extends _$CategoryListModelCopyWithImpl<$Res, _$_CategoryListModel>
    implements _$$_CategoryListModelCopyWith<$Res> {
  __$$_CategoryListModelCopyWithImpl(
      _$_CategoryListModel _value, $Res Function(_$_CategoryListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_CategoryListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryListModel implements _CategoryListModel {
  const _$_CategoryListModel({final List<CategoryItemModel> list = const []})
      : _list = list;

  factory _$_CategoryListModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryListModelFromJson(json);

  final List<CategoryItemModel> _list;
  @override
  @JsonKey()
  List<CategoryItemModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'CategoryListModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryListModelCopyWith<_$_CategoryListModel> get copyWith =>
      __$$_CategoryListModelCopyWithImpl<_$_CategoryListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryListModelToJson(
      this,
    );
  }
}

abstract class _CategoryListModel implements CategoryListModel {
  const factory _CategoryListModel({final List<CategoryItemModel> list}) =
      _$_CategoryListModel;

  factory _CategoryListModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryListModel.fromJson;

  @override
  List<CategoryItemModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryListModelCopyWith<_$_CategoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryItemModel _$CategoryItemModelFromJson(Map<String, dynamic> json) {
  return _CategoryItemModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryItemModel {
  @JsonKey(name: 'notice_category_id')
  int get categoryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryItemModelCopyWith<CategoryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemModelCopyWith<$Res> {
  factory $CategoryItemModelCopyWith(
          CategoryItemModel value, $Res Function(CategoryItemModel) then) =
      _$CategoryItemModelCopyWithImpl<$Res, CategoryItemModel>;
  @useResult
  $Res call({@JsonKey(name: 'notice_category_id') int categoryId, String name});
}

/// @nodoc
class _$CategoryItemModelCopyWithImpl<$Res, $Val extends CategoryItemModel>
    implements $CategoryItemModelCopyWith<$Res> {
  _$CategoryItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryItemModelCopyWith<$Res>
    implements $CategoryItemModelCopyWith<$Res> {
  factory _$$_CategoryItemModelCopyWith(_$_CategoryItemModel value,
          $Res Function(_$_CategoryItemModel) then) =
      __$$_CategoryItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'notice_category_id') int categoryId, String name});
}

/// @nodoc
class __$$_CategoryItemModelCopyWithImpl<$Res>
    extends _$CategoryItemModelCopyWithImpl<$Res, _$_CategoryItemModel>
    implements _$$_CategoryItemModelCopyWith<$Res> {
  __$$_CategoryItemModelCopyWithImpl(
      _$_CategoryItemModel _value, $Res Function(_$_CategoryItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? name = null,
  }) {
    return _then(_$_CategoryItemModel(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryItemModel implements _CategoryItemModel {
  const _$_CategoryItemModel(
      {@JsonKey(name: 'notice_category_id') required this.categoryId,
      required this.name});

  factory _$_CategoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryItemModelFromJson(json);

  @override
  @JsonKey(name: 'notice_category_id')
  final int categoryId;
  @override
  final String name;

  @override
  String toString() {
    return 'CategoryItemModel(categoryId: $categoryId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryItemModel &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryItemModelCopyWith<_$_CategoryItemModel> get copyWith =>
      __$$_CategoryItemModelCopyWithImpl<_$_CategoryItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryItemModelToJson(
      this,
    );
  }
}

abstract class _CategoryItemModel implements CategoryItemModel {
  const factory _CategoryItemModel(
      {@JsonKey(name: 'notice_category_id') required final int categoryId,
      required final String name}) = _$_CategoryItemModel;

  factory _CategoryItemModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryItemModel.fromJson;

  @override
  @JsonKey(name: 'notice_category_id')
  int get categoryId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryItemModelCopyWith<_$_CategoryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

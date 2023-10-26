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

NoticeListModel _$NoticeListModelFromJson(Map<String, dynamic> json) {
  return _NoticeListModel.fromJson(json);
}

/// @nodoc
mixin _$NoticeListModel {
  List<NoticeListItemModel> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeListModelCopyWith<NoticeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeListModelCopyWith<$Res> {
  factory $NoticeListModelCopyWith(
          NoticeListModel value, $Res Function(NoticeListModel) then) =
      _$NoticeListModelCopyWithImpl<$Res, NoticeListModel>;
  @useResult
  $Res call({List<NoticeListItemModel> list});
}

/// @nodoc
class _$NoticeListModelCopyWithImpl<$Res, $Val extends NoticeListModel>
    implements $NoticeListModelCopyWith<$Res> {
  _$NoticeListModelCopyWithImpl(this._value, this._then);

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
              as List<NoticeListItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoticeListModelCopyWith<$Res>
    implements $NoticeListModelCopyWith<$Res> {
  factory _$$_NoticeListModelCopyWith(
          _$_NoticeListModel value, $Res Function(_$_NoticeListModel) then) =
      __$$_NoticeListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NoticeListItemModel> list});
}

/// @nodoc
class __$$_NoticeListModelCopyWithImpl<$Res>
    extends _$NoticeListModelCopyWithImpl<$Res, _$_NoticeListModel>
    implements _$$_NoticeListModelCopyWith<$Res> {
  __$$_NoticeListModelCopyWithImpl(
      _$_NoticeListModel _value, $Res Function(_$_NoticeListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_NoticeListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<NoticeListItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeListModel implements _NoticeListModel {
  const _$_NoticeListModel({final List<NoticeListItemModel> list = const []})
      : _list = list;

  factory _$_NoticeListModel.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeListModelFromJson(json);

  final List<NoticeListItemModel> _list;
  @override
  @JsonKey()
  List<NoticeListItemModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'NoticeListModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoticeListModelCopyWith<_$_NoticeListModel> get copyWith =>
      __$$_NoticeListModelCopyWithImpl<_$_NoticeListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeListModelToJson(
      this,
    );
  }
}

abstract class _NoticeListModel implements NoticeListModel {
  const factory _NoticeListModel({final List<NoticeListItemModel> list}) =
      _$_NoticeListModel;

  factory _NoticeListModel.fromJson(Map<String, dynamic> json) =
      _$_NoticeListModel.fromJson;

  @override
  List<NoticeListItemModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeListModelCopyWith<_$_NoticeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NoticeListItemModel _$NoticeListItemModelFromJson(Map<String, dynamic> json) {
  return _NoticeListItemModel.fromJson(json);
}

/// @nodoc
mixin _$NoticeListItemModel {
  @JsonKey(name: 'notice_read_id')
  int get noticeReadId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'delivery_at')
  DateTime get deliveryAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'read_at')
  DateTime? get readAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeListItemModelCopyWith<NoticeListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeListItemModelCopyWith<$Res> {
  factory $NoticeListItemModelCopyWith(
          NoticeListItemModel value, $Res Function(NoticeListItemModel) then) =
      _$NoticeListItemModelCopyWithImpl<$Res, NoticeListItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'notice_read_id') int noticeReadId,
      String title,
      @DateTimeConverter() @JsonKey(name: 'delivery_at') DateTime deliveryAt,
      @DateTimeConverter() @JsonKey(name: 'read_at') DateTime? readAt});
}

/// @nodoc
class _$NoticeListItemModelCopyWithImpl<$Res, $Val extends NoticeListItemModel>
    implements $NoticeListItemModelCopyWith<$Res> {
  _$NoticeListItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeReadId = null,
    Object? title = null,
    Object? deliveryAt = null,
    Object? readAt = freezed,
  }) {
    return _then(_value.copyWith(
      noticeReadId: null == noticeReadId
          ? _value.noticeReadId
          : noticeReadId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAt: null == deliveryAt
          ? _value.deliveryAt
          : deliveryAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoticeListItemModelCopyWith<$Res>
    implements $NoticeListItemModelCopyWith<$Res> {
  factory _$$_NoticeListItemModelCopyWith(_$_NoticeListItemModel value,
          $Res Function(_$_NoticeListItemModel) then) =
      __$$_NoticeListItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'notice_read_id') int noticeReadId,
      String title,
      @DateTimeConverter() @JsonKey(name: 'delivery_at') DateTime deliveryAt,
      @DateTimeConverter() @JsonKey(name: 'read_at') DateTime? readAt});
}

/// @nodoc
class __$$_NoticeListItemModelCopyWithImpl<$Res>
    extends _$NoticeListItemModelCopyWithImpl<$Res, _$_NoticeListItemModel>
    implements _$$_NoticeListItemModelCopyWith<$Res> {
  __$$_NoticeListItemModelCopyWithImpl(_$_NoticeListItemModel _value,
      $Res Function(_$_NoticeListItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeReadId = null,
    Object? title = null,
    Object? deliveryAt = null,
    Object? readAt = freezed,
  }) {
    return _then(_$_NoticeListItemModel(
      noticeReadId: null == noticeReadId
          ? _value.noticeReadId
          : noticeReadId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAt: null == deliveryAt
          ? _value.deliveryAt
          : deliveryAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeListItemModel implements _NoticeListItemModel {
  const _$_NoticeListItemModel(
      {@JsonKey(name: 'notice_read_id')
          required this.noticeReadId,
      this.title = '',
      @DateTimeConverter()
      @JsonKey(name: 'delivery_at')
          required this.deliveryAt,
      @DateTimeConverter()
      @JsonKey(name: 'read_at')
          this.readAt});

  factory _$_NoticeListItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeListItemModelFromJson(json);

  @override
  @JsonKey(name: 'notice_read_id')
  final int noticeReadId;
  @override
  @JsonKey()
  final String title;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'delivery_at')
  final DateTime deliveryAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'read_at')
  final DateTime? readAt;

  @override
  String toString() {
    return 'NoticeListItemModel(noticeReadId: $noticeReadId, title: $title, deliveryAt: $deliveryAt, readAt: $readAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeListItemModel &&
            (identical(other.noticeReadId, noticeReadId) ||
                other.noticeReadId == noticeReadId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.deliveryAt, deliveryAt) ||
                other.deliveryAt == deliveryAt) &&
            (identical(other.readAt, readAt) || other.readAt == readAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, noticeReadId, title, deliveryAt, readAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoticeListItemModelCopyWith<_$_NoticeListItemModel> get copyWith =>
      __$$_NoticeListItemModelCopyWithImpl<_$_NoticeListItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeListItemModelToJson(
      this,
    );
  }
}

abstract class _NoticeListItemModel implements NoticeListItemModel {
  const factory _NoticeListItemModel(
      {@JsonKey(name: 'notice_read_id')
          required final int noticeReadId,
      final String title,
      @DateTimeConverter()
      @JsonKey(name: 'delivery_at')
          required final DateTime deliveryAt,
      @DateTimeConverter()
      @JsonKey(name: 'read_at')
          final DateTime? readAt}) = _$_NoticeListItemModel;

  factory _NoticeListItemModel.fromJson(Map<String, dynamic> json) =
      _$_NoticeListItemModel.fromJson;

  @override
  @JsonKey(name: 'notice_read_id')
  int get noticeReadId;
  @override
  String get title;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'delivery_at')
  DateTime get deliveryAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'read_at')
  DateTime? get readAt;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeListItemModelCopyWith<_$_NoticeListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

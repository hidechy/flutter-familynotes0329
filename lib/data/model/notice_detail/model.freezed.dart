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

NoticeDetailModel _$NoticeDetailModelFromJson(Map<String, dynamic> json) {
  return _NoticeDetailModel.fromJson(json);
}

/// @nodoc
mixin _$NoticeDetailModel {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'delivery_at')
  DateTime get deliveryAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeDetailModelCopyWith<NoticeDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeDetailModelCopyWith<$Res> {
  factory $NoticeDetailModelCopyWith(
          NoticeDetailModel value, $Res Function(NoticeDetailModel) then) =
      _$NoticeDetailModelCopyWithImpl<$Res, NoticeDetailModel>;
  @useResult
  $Res call(
      {String title,
      String content,
      @DateTimeConverter() @JsonKey(name: 'delivery_at') DateTime deliveryAt});
}

/// @nodoc
class _$NoticeDetailModelCopyWithImpl<$Res, $Val extends NoticeDetailModel>
    implements $NoticeDetailModelCopyWith<$Res> {
  _$NoticeDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? deliveryAt = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAt: null == deliveryAt
          ? _value.deliveryAt
          : deliveryAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoticeDetailModelCopyWith<$Res>
    implements $NoticeDetailModelCopyWith<$Res> {
  factory _$$_NoticeDetailModelCopyWith(_$_NoticeDetailModel value,
          $Res Function(_$_NoticeDetailModel) then) =
      __$$_NoticeDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      @DateTimeConverter() @JsonKey(name: 'delivery_at') DateTime deliveryAt});
}

/// @nodoc
class __$$_NoticeDetailModelCopyWithImpl<$Res>
    extends _$NoticeDetailModelCopyWithImpl<$Res, _$_NoticeDetailModel>
    implements _$$_NoticeDetailModelCopyWith<$Res> {
  __$$_NoticeDetailModelCopyWithImpl(
      _$_NoticeDetailModel _value, $Res Function(_$_NoticeDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? deliveryAt = null,
  }) {
    return _then(_$_NoticeDetailModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAt: null == deliveryAt
          ? _value.deliveryAt
          : deliveryAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeDetailModel implements _NoticeDetailModel {
  const _$_NoticeDetailModel(
      {this.title = '',
      this.content = '',
      @DateTimeConverter()
      @JsonKey(name: 'delivery_at')
          required this.deliveryAt});

  factory _$_NoticeDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeDetailModelFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String content;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'delivery_at')
  final DateTime deliveryAt;

  @override
  String toString() {
    return 'NoticeDetailModel(title: $title, content: $content, deliveryAt: $deliveryAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeDetailModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.deliveryAt, deliveryAt) ||
                other.deliveryAt == deliveryAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, content, deliveryAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoticeDetailModelCopyWith<_$_NoticeDetailModel> get copyWith =>
      __$$_NoticeDetailModelCopyWithImpl<_$_NoticeDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeDetailModelToJson(
      this,
    );
  }
}

abstract class _NoticeDetailModel implements NoticeDetailModel {
  const factory _NoticeDetailModel(
      {final String title,
      final String content,
      @DateTimeConverter()
      @JsonKey(name: 'delivery_at')
          required final DateTime deliveryAt}) = _$_NoticeDetailModel;

  factory _NoticeDetailModel.fromJson(Map<String, dynamic> json) =
      _$_NoticeDetailModel.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'delivery_at')
  DateTime get deliveryAt;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeDetailModelCopyWith<_$_NoticeDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

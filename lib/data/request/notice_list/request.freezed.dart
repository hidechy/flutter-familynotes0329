// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticeListRequest _$NoticeListRequestFromJson(Map<String, dynamic> json) {
  return _NoticeListRequest.fromJson(json);
}

/// @nodoc
mixin _$NoticeListRequest {
  @JsonKey(name: 'notice_category_id')
  int? get categoryId =>
      throw _privateConstructorUsedError; // nullの場合、カテゴリーを絞らずに取得する
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeListRequestCopyWith<NoticeListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeListRequestCopyWith<$Res> {
  factory $NoticeListRequestCopyWith(
          NoticeListRequest value, $Res Function(NoticeListRequest) then) =
      _$NoticeListRequestCopyWithImpl<$Res, NoticeListRequest>;
  @useResult
  $Res call({@JsonKey(name: 'notice_category_id') int? categoryId, int page});
}

/// @nodoc
class _$NoticeListRequestCopyWithImpl<$Res, $Val extends NoticeListRequest>
    implements $NoticeListRequestCopyWith<$Res> {
  _$NoticeListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoticeListRequestCopyWith<$Res>
    implements $NoticeListRequestCopyWith<$Res> {
  factory _$$_NoticeListRequestCopyWith(_$_NoticeListRequest value,
          $Res Function(_$_NoticeListRequest) then) =
      __$$_NoticeListRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'notice_category_id') int? categoryId, int page});
}

/// @nodoc
class __$$_NoticeListRequestCopyWithImpl<$Res>
    extends _$NoticeListRequestCopyWithImpl<$Res, _$_NoticeListRequest>
    implements _$$_NoticeListRequestCopyWith<$Res> {
  __$$_NoticeListRequestCopyWithImpl(
      _$_NoticeListRequest _value, $Res Function(_$_NoticeListRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? page = null,
  }) {
    return _then(_$_NoticeListRequest(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeListRequest implements _NoticeListRequest {
  const _$_NoticeListRequest(
      {@JsonKey(name: 'notice_category_id') this.categoryId,
      required this.page});

  factory _$_NoticeListRequest.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeListRequestFromJson(json);

  @override
  @JsonKey(name: 'notice_category_id')
  final int? categoryId;
// nullの場合、カテゴリーを絞らずに取得する
  @override
  final int page;

  @override
  String toString() {
    return 'NoticeListRequest(categoryId: $categoryId, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeListRequest &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoticeListRequestCopyWith<_$_NoticeListRequest> get copyWith =>
      __$$_NoticeListRequestCopyWithImpl<_$_NoticeListRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeListRequestToJson(
      this,
    );
  }
}

abstract class _NoticeListRequest implements NoticeListRequest {
  const factory _NoticeListRequest(
      {@JsonKey(name: 'notice_category_id') final int? categoryId,
      required final int page}) = _$_NoticeListRequest;

  factory _NoticeListRequest.fromJson(Map<String, dynamic> json) =
      _$_NoticeListRequest.fromJson;

  @override
  @JsonKey(name: 'notice_category_id')
  int? get categoryId;
  @override // nullの場合、カテゴリーを絞らずに取得する
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeListRequestCopyWith<_$_NoticeListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

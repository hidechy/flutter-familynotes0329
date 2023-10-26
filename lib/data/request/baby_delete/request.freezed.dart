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

BabyDeleteRequest _$BabyDeleteRequestFromJson(Map<String, dynamic> json) {
  return _BabyDeleteRequest.fromJson(json);
}

/// @nodoc
mixin _$BabyDeleteRequest {
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BabyDeleteRequestCopyWith<BabyDeleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BabyDeleteRequestCopyWith<$Res> {
  factory $BabyDeleteRequestCopyWith(
          BabyDeleteRequest value, $Res Function(BabyDeleteRequest) then) =
      _$BabyDeleteRequestCopyWithImpl<$Res, BabyDeleteRequest>;
  @useResult
  $Res call({@JsonKey(name: 'child_id') int childId});
}

/// @nodoc
class _$BabyDeleteRequestCopyWithImpl<$Res, $Val extends BabyDeleteRequest>
    implements $BabyDeleteRequestCopyWith<$Res> {
  _$BabyDeleteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
  }) {
    return _then(_value.copyWith(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BabyDeleteRequestCopyWith<$Res>
    implements $BabyDeleteRequestCopyWith<$Res> {
  factory _$$_BabyDeleteRequestCopyWith(_$_BabyDeleteRequest value,
          $Res Function(_$_BabyDeleteRequest) then) =
      __$$_BabyDeleteRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'child_id') int childId});
}

/// @nodoc
class __$$_BabyDeleteRequestCopyWithImpl<$Res>
    extends _$BabyDeleteRequestCopyWithImpl<$Res, _$_BabyDeleteRequest>
    implements _$$_BabyDeleteRequestCopyWith<$Res> {
  __$$_BabyDeleteRequestCopyWithImpl(
      _$_BabyDeleteRequest _value, $Res Function(_$_BabyDeleteRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
  }) {
    return _then(_$_BabyDeleteRequest(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BabyDeleteRequest implements _BabyDeleteRequest {
  const _$_BabyDeleteRequest(
      {@JsonKey(name: 'child_id') required this.childId});

  factory _$_BabyDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_BabyDeleteRequestFromJson(json);

  @override
  @JsonKey(name: 'child_id')
  final int childId;

  @override
  String toString() {
    return 'BabyDeleteRequest(childId: $childId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BabyDeleteRequest &&
            (identical(other.childId, childId) || other.childId == childId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, childId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BabyDeleteRequestCopyWith<_$_BabyDeleteRequest> get copyWith =>
      __$$_BabyDeleteRequestCopyWithImpl<_$_BabyDeleteRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BabyDeleteRequestToJson(
      this,
    );
  }
}

abstract class _BabyDeleteRequest implements BabyDeleteRequest {
  const factory _BabyDeleteRequest(
          {@JsonKey(name: 'child_id') required final int childId}) =
      _$_BabyDeleteRequest;

  factory _BabyDeleteRequest.fromJson(Map<String, dynamic> json) =
      _$_BabyDeleteRequest.fromJson;

  @override
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(ignore: true)
  _$$_BabyDeleteRequestCopyWith<_$_BabyDeleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

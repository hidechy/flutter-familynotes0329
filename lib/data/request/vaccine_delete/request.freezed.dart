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

VaccineDeleteRequest _$VaccineDeleteRequestFromJson(Map<String, dynamic> json) {
  return _VaccineDeleteRequest.fromJson(json);
}

/// @nodoc
mixin _$VaccineDeleteRequest {
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaccine_type_id')
  int get vaccineTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineDeleteRequestCopyWith<VaccineDeleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineDeleteRequestCopyWith<$Res> {
  factory $VaccineDeleteRequestCopyWith(VaccineDeleteRequest value,
          $Res Function(VaccineDeleteRequest) then) =
      _$VaccineDeleteRequestCopyWithImpl<$Res, VaccineDeleteRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'vaccine_type_id') int vaccineTypeId,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$VaccineDeleteRequestCopyWithImpl<$Res,
        $Val extends VaccineDeleteRequest>
    implements $VaccineDeleteRequestCopyWith<$Res> {
  _$VaccineDeleteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? vaccineTypeId = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineTypeId: null == vaccineTypeId
          ? _value.vaccineTypeId
          : vaccineTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineDeleteRequestCopyWith<$Res>
    implements $VaccineDeleteRequestCopyWith<$Res> {
  factory _$$_VaccineDeleteRequestCopyWith(_$_VaccineDeleteRequest value,
          $Res Function(_$_VaccineDeleteRequest) then) =
      __$$_VaccineDeleteRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'vaccine_type_id') int vaccineTypeId,
      @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$$_VaccineDeleteRequestCopyWithImpl<$Res>
    extends _$VaccineDeleteRequestCopyWithImpl<$Res, _$_VaccineDeleteRequest>
    implements _$$_VaccineDeleteRequestCopyWith<$Res> {
  __$$_VaccineDeleteRequestCopyWithImpl(_$_VaccineDeleteRequest _value,
      $Res Function(_$_VaccineDeleteRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? vaccineTypeId = null,
    Object? status = null,
  }) {
    return _then(_$_VaccineDeleteRequest(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineTypeId: null == vaccineTypeId
          ? _value.vaccineTypeId
          : vaccineTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineDeleteRequest implements _VaccineDeleteRequest {
  const _$_VaccineDeleteRequest(
      {@JsonKey(name: 'child_id') required this.childId,
      @JsonKey(name: 'vaccine_type_id') required this.vaccineTypeId,
      @JsonKey(name: 'status') required this.status});

  factory _$_VaccineDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineDeleteRequestFromJson(json);

  @override
  @JsonKey(name: 'child_id')
  final int childId;
  @override
  @JsonKey(name: 'vaccine_type_id')
  final int vaccineTypeId;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString() {
    return 'VaccineDeleteRequest(childId: $childId, vaccineTypeId: $vaccineTypeId, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineDeleteRequest &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.vaccineTypeId, vaccineTypeId) ||
                other.vaccineTypeId == vaccineTypeId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, childId, vaccineTypeId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineDeleteRequestCopyWith<_$_VaccineDeleteRequest> get copyWith =>
      __$$_VaccineDeleteRequestCopyWithImpl<_$_VaccineDeleteRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineDeleteRequestToJson(
      this,
    );
  }
}

abstract class _VaccineDeleteRequest implements VaccineDeleteRequest {
  const factory _VaccineDeleteRequest(
          {@JsonKey(name: 'child_id') required final int childId,
          @JsonKey(name: 'vaccine_type_id') required final int vaccineTypeId,
          @JsonKey(name: 'status') required final String status}) =
      _$_VaccineDeleteRequest;

  factory _VaccineDeleteRequest.fromJson(Map<String, dynamic> json) =
      _$_VaccineDeleteRequest.fromJson;

  @override
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'vaccine_type_id')
  int get vaccineTypeId;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineDeleteRequestCopyWith<_$_VaccineDeleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

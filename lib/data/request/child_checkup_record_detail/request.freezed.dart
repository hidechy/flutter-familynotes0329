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

ChildCheckupRecordDetailRequest _$ChildCheckupRecordDetailRequestFromJson(
    Map<String, dynamic> json) {
  return _ChildCheckupRecordDetailRequest.fromJson(json);
}

/// @nodoc
mixin _$ChildCheckupRecordDetailRequest {
  @JsonKey(name: 'child_checkup_record_id')
  int get recordId => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildCheckupRecordDetailRequestCopyWith<ChildCheckupRecordDetailRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCheckupRecordDetailRequestCopyWith<$Res> {
  factory $ChildCheckupRecordDetailRequestCopyWith(
          ChildCheckupRecordDetailRequest value,
          $Res Function(ChildCheckupRecordDetailRequest) then) =
      _$ChildCheckupRecordDetailRequestCopyWithImpl<$Res,
          ChildCheckupRecordDetailRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_checkup_record_id') int recordId,
      @JsonKey(name: 'child_id') int childId});
}

/// @nodoc
class _$ChildCheckupRecordDetailRequestCopyWithImpl<$Res,
        $Val extends ChildCheckupRecordDetailRequest>
    implements $ChildCheckupRecordDetailRequestCopyWith<$Res> {
  _$ChildCheckupRecordDetailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = null,
    Object? childId = null,
  }) {
    return _then(_value.copyWith(
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildCheckupRecordDetailRequestCopyWith<$Res>
    implements $ChildCheckupRecordDetailRequestCopyWith<$Res> {
  factory _$$_ChildCheckupRecordDetailRequestCopyWith(
          _$_ChildCheckupRecordDetailRequest value,
          $Res Function(_$_ChildCheckupRecordDetailRequest) then) =
      __$$_ChildCheckupRecordDetailRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_checkup_record_id') int recordId,
      @JsonKey(name: 'child_id') int childId});
}

/// @nodoc
class __$$_ChildCheckupRecordDetailRequestCopyWithImpl<$Res>
    extends _$ChildCheckupRecordDetailRequestCopyWithImpl<$Res,
        _$_ChildCheckupRecordDetailRequest>
    implements _$$_ChildCheckupRecordDetailRequestCopyWith<$Res> {
  __$$_ChildCheckupRecordDetailRequestCopyWithImpl(
      _$_ChildCheckupRecordDetailRequest _value,
      $Res Function(_$_ChildCheckupRecordDetailRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = null,
    Object? childId = null,
  }) {
    return _then(_$_ChildCheckupRecordDetailRequest(
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildCheckupRecordDetailRequest
    implements _ChildCheckupRecordDetailRequest {
  const _$_ChildCheckupRecordDetailRequest(
      {@JsonKey(name: 'child_checkup_record_id') required this.recordId,
      @JsonKey(name: 'child_id') required this.childId});

  factory _$_ChildCheckupRecordDetailRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_ChildCheckupRecordDetailRequestFromJson(json);

  @override
  @JsonKey(name: 'child_checkup_record_id')
  final int recordId;
  @override
  @JsonKey(name: 'child_id')
  final int childId;

  @override
  String toString() {
    return 'ChildCheckupRecordDetailRequest(recordId: $recordId, childId: $childId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildCheckupRecordDetailRequest &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId) &&
            (identical(other.childId, childId) || other.childId == childId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recordId, childId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildCheckupRecordDetailRequestCopyWith<
          _$_ChildCheckupRecordDetailRequest>
      get copyWith => __$$_ChildCheckupRecordDetailRequestCopyWithImpl<
          _$_ChildCheckupRecordDetailRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildCheckupRecordDetailRequestToJson(
      this,
    );
  }
}

abstract class _ChildCheckupRecordDetailRequest
    implements ChildCheckupRecordDetailRequest {
  const factory _ChildCheckupRecordDetailRequest(
      {@JsonKey(name: 'child_checkup_record_id')
          required final int recordId,
      @JsonKey(name: 'child_id')
          required final int childId}) = _$_ChildCheckupRecordDetailRequest;

  factory _ChildCheckupRecordDetailRequest.fromJson(Map<String, dynamic> json) =
      _$_ChildCheckupRecordDetailRequest.fromJson;

  @override
  @JsonKey(name: 'child_checkup_record_id')
  int get recordId;
  @override
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(ignore: true)
  _$$_ChildCheckupRecordDetailRequestCopyWith<
          _$_ChildCheckupRecordDetailRequest>
      get copyWith => throw _privateConstructorUsedError;
}

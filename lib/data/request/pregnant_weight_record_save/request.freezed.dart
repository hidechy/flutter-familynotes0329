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

PregnantWeightRecordSaveRequest _$PregnantWeightRecordSaveRequestFromJson(
    Map<String, dynamic> json) {
  return _PregnantWeightRecordSaveRequest.fromJson(json);
}

/// @nodoc
mixin _$PregnantWeightRecordSaveRequest {
  @JsonKey(name: 'mother_weight_record_id')
  int? get recordId => throw _privateConstructorUsedError; // 新規の場合はnull
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_date')
  String get date => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PregnantWeightRecordSaveRequestCopyWith<PregnantWeightRecordSaveRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregnantWeightRecordSaveRequestCopyWith<$Res> {
  factory $PregnantWeightRecordSaveRequestCopyWith(
          PregnantWeightRecordSaveRequest value,
          $Res Function(PregnantWeightRecordSaveRequest) then) =
      _$PregnantWeightRecordSaveRequestCopyWithImpl<$Res,
          PregnantWeightRecordSaveRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mother_weight_record_id') int? recordId,
      @JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'measurement_date') String date,
      double weight});
}

/// @nodoc
class _$PregnantWeightRecordSaveRequestCopyWithImpl<$Res,
        $Val extends PregnantWeightRecordSaveRequest>
    implements $PregnantWeightRecordSaveRequestCopyWith<$Res> {
  _$PregnantWeightRecordSaveRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = freezed,
    Object? childId = null,
    Object? date = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      recordId: freezed == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int?,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PregnantWeightRecordSaveRequestCopyWith<$Res>
    implements $PregnantWeightRecordSaveRequestCopyWith<$Res> {
  factory _$$_PregnantWeightRecordSaveRequestCopyWith(
          _$_PregnantWeightRecordSaveRequest value,
          $Res Function(_$_PregnantWeightRecordSaveRequest) then) =
      __$$_PregnantWeightRecordSaveRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mother_weight_record_id') int? recordId,
      @JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'measurement_date') String date,
      double weight});
}

/// @nodoc
class __$$_PregnantWeightRecordSaveRequestCopyWithImpl<$Res>
    extends _$PregnantWeightRecordSaveRequestCopyWithImpl<$Res,
        _$_PregnantWeightRecordSaveRequest>
    implements _$$_PregnantWeightRecordSaveRequestCopyWith<$Res> {
  __$$_PregnantWeightRecordSaveRequestCopyWithImpl(
      _$_PregnantWeightRecordSaveRequest _value,
      $Res Function(_$_PregnantWeightRecordSaveRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = freezed,
    Object? childId = null,
    Object? date = null,
    Object? weight = null,
  }) {
    return _then(_$_PregnantWeightRecordSaveRequest(
      recordId: freezed == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int?,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PregnantWeightRecordSaveRequest
    implements _PregnantWeightRecordSaveRequest {
  const _$_PregnantWeightRecordSaveRequest(
      {@JsonKey(name: 'mother_weight_record_id') this.recordId,
      @JsonKey(name: 'child_id') required this.childId,
      @JsonKey(name: 'measurement_date') required this.date,
      required this.weight});

  factory _$_PregnantWeightRecordSaveRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_PregnantWeightRecordSaveRequestFromJson(json);

  @override
  @JsonKey(name: 'mother_weight_record_id')
  final int? recordId;
// 新規の場合はnull
  @override
  @JsonKey(name: 'child_id')
  final int childId;
  @override
  @JsonKey(name: 'measurement_date')
  final String date;
  @override
  final double weight;

  @override
  String toString() {
    return 'PregnantWeightRecordSaveRequest(recordId: $recordId, childId: $childId, date: $date, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PregnantWeightRecordSaveRequest &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recordId, childId, date, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PregnantWeightRecordSaveRequestCopyWith<
          _$_PregnantWeightRecordSaveRequest>
      get copyWith => __$$_PregnantWeightRecordSaveRequestCopyWithImpl<
          _$_PregnantWeightRecordSaveRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PregnantWeightRecordSaveRequestToJson(
      this,
    );
  }
}

abstract class _PregnantWeightRecordSaveRequest
    implements PregnantWeightRecordSaveRequest {
  const factory _PregnantWeightRecordSaveRequest(
      {@JsonKey(name: 'mother_weight_record_id') final int? recordId,
      @JsonKey(name: 'child_id') required final int childId,
      @JsonKey(name: 'measurement_date') required final String date,
      required final double weight}) = _$_PregnantWeightRecordSaveRequest;

  factory _PregnantWeightRecordSaveRequest.fromJson(Map<String, dynamic> json) =
      _$_PregnantWeightRecordSaveRequest.fromJson;

  @override
  @JsonKey(name: 'mother_weight_record_id')
  int? get recordId;
  @override // 新規の場合はnull
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'measurement_date')
  String get date;
  @override
  double get weight;
  @override
  @JsonKey(ignore: true)
  _$$_PregnantWeightRecordSaveRequestCopyWith<
          _$_PregnantWeightRecordSaveRequest>
      get copyWith => throw _privateConstructorUsedError;
}

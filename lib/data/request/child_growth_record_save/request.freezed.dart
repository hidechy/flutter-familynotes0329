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

ChildGrowthRecordSaveRequest _$ChildGrowthRecordSaveRequestFromJson(
    Map<String, dynamic> json) {
  return _ChildGrowthRecordSaveRequest.fromJson(json);
}

/// @nodoc
mixin _$ChildGrowthRecordSaveRequest {
  @JsonKey(name: 'child_body_record_id')
  int? get recordId => throw _privateConstructorUsedError; // 新規の場合はnull
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_date')
  String get date => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_measurement')
  double? get head => throw _privateConstructorUsedError;
  @JsonKey(name: 'chest_measurement')
  double? get chest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildGrowthRecordSaveRequestCopyWith<ChildGrowthRecordSaveRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildGrowthRecordSaveRequestCopyWith<$Res> {
  factory $ChildGrowthRecordSaveRequestCopyWith(
          ChildGrowthRecordSaveRequest value,
          $Res Function(ChildGrowthRecordSaveRequest) then) =
      _$ChildGrowthRecordSaveRequestCopyWithImpl<$Res,
          ChildGrowthRecordSaveRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_body_record_id') int? recordId,
      @JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'measurement_date') String date,
      double? height,
      double? weight,
      @JsonKey(name: 'head_measurement') double? head,
      @JsonKey(name: 'chest_measurement') double? chest});
}

/// @nodoc
class _$ChildGrowthRecordSaveRequestCopyWithImpl<$Res,
        $Val extends ChildGrowthRecordSaveRequest>
    implements $ChildGrowthRecordSaveRequestCopyWith<$Res> {
  _$ChildGrowthRecordSaveRequestCopyWithImpl(this._value, this._then);

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
    Object? height = freezed,
    Object? weight = freezed,
    Object? head = freezed,
    Object? chest = freezed,
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
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      head: freezed == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as double?,
      chest: freezed == chest
          ? _value.chest
          : chest // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildGrowthRecordSaveRequestCopyWith<$Res>
    implements $ChildGrowthRecordSaveRequestCopyWith<$Res> {
  factory _$$_ChildGrowthRecordSaveRequestCopyWith(
          _$_ChildGrowthRecordSaveRequest value,
          $Res Function(_$_ChildGrowthRecordSaveRequest) then) =
      __$$_ChildGrowthRecordSaveRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_body_record_id') int? recordId,
      @JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'measurement_date') String date,
      double? height,
      double? weight,
      @JsonKey(name: 'head_measurement') double? head,
      @JsonKey(name: 'chest_measurement') double? chest});
}

/// @nodoc
class __$$_ChildGrowthRecordSaveRequestCopyWithImpl<$Res>
    extends _$ChildGrowthRecordSaveRequestCopyWithImpl<$Res,
        _$_ChildGrowthRecordSaveRequest>
    implements _$$_ChildGrowthRecordSaveRequestCopyWith<$Res> {
  __$$_ChildGrowthRecordSaveRequestCopyWithImpl(
      _$_ChildGrowthRecordSaveRequest _value,
      $Res Function(_$_ChildGrowthRecordSaveRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = freezed,
    Object? childId = null,
    Object? date = null,
    Object? height = freezed,
    Object? weight = freezed,
    Object? head = freezed,
    Object? chest = freezed,
  }) {
    return _then(_$_ChildGrowthRecordSaveRequest(
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
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      head: freezed == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as double?,
      chest: freezed == chest
          ? _value.chest
          : chest // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildGrowthRecordSaveRequest implements _ChildGrowthRecordSaveRequest {
  const _$_ChildGrowthRecordSaveRequest(
      {@JsonKey(name: 'child_body_record_id') this.recordId,
      @JsonKey(name: 'child_id') required this.childId,
      @JsonKey(name: 'measurement_date') required this.date,
      required this.height,
      required this.weight,
      @JsonKey(name: 'head_measurement') required this.head,
      @JsonKey(name: 'chest_measurement') required this.chest});

  factory _$_ChildGrowthRecordSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ChildGrowthRecordSaveRequestFromJson(json);

  @override
  @JsonKey(name: 'child_body_record_id')
  final int? recordId;
// 新規の場合はnull
  @override
  @JsonKey(name: 'child_id')
  final int childId;
  @override
  @JsonKey(name: 'measurement_date')
  final String date;
  @override
  final double? height;
  @override
  final double? weight;
  @override
  @JsonKey(name: 'head_measurement')
  final double? head;
  @override
  @JsonKey(name: 'chest_measurement')
  final double? chest;

  @override
  String toString() {
    return 'ChildGrowthRecordSaveRequest(recordId: $recordId, childId: $childId, date: $date, height: $height, weight: $weight, head: $head, chest: $chest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildGrowthRecordSaveRequest &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.chest, chest) || other.chest == chest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, recordId, childId, date, height, weight, head, chest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildGrowthRecordSaveRequestCopyWith<_$_ChildGrowthRecordSaveRequest>
      get copyWith => __$$_ChildGrowthRecordSaveRequestCopyWithImpl<
          _$_ChildGrowthRecordSaveRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildGrowthRecordSaveRequestToJson(
      this,
    );
  }
}

abstract class _ChildGrowthRecordSaveRequest
    implements ChildGrowthRecordSaveRequest {
  const factory _ChildGrowthRecordSaveRequest(
          {@JsonKey(name: 'child_body_record_id') final int? recordId,
          @JsonKey(name: 'child_id') required final int childId,
          @JsonKey(name: 'measurement_date') required final String date,
          required final double? height,
          required final double? weight,
          @JsonKey(name: 'head_measurement') required final double? head,
          @JsonKey(name: 'chest_measurement') required final double? chest}) =
      _$_ChildGrowthRecordSaveRequest;

  factory _ChildGrowthRecordSaveRequest.fromJson(Map<String, dynamic> json) =
      _$_ChildGrowthRecordSaveRequest.fromJson;

  @override
  @JsonKey(name: 'child_body_record_id')
  int? get recordId;
  @override // 新規の場合はnull
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'measurement_date')
  String get date;
  @override
  double? get height;
  @override
  double? get weight;
  @override
  @JsonKey(name: 'head_measurement')
  double? get head;
  @override
  @JsonKey(name: 'chest_measurement')
  double? get chest;
  @override
  @JsonKey(ignore: true)
  _$$_ChildGrowthRecordSaveRequestCopyWith<_$_ChildGrowthRecordSaveRequest>
      get copyWith => throw _privateConstructorUsedError;
}

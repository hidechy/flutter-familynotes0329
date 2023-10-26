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

ChildCheckupRecordSaveRequest _$ChildCheckupRecordSaveRequestFromJson(
    Map<String, dynamic> json) {
  return _ChildCheckupRecordSaveRequest.fromJson(json);
}

/// @nodoc
mixin _$ChildCheckupRecordSaveRequest {
  @JsonKey(name: 'child_checkup_record_id')
  int? get recordId => throw _privateConstructorUsedError; // 新規ならnull
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_checkup_type_id')
  int get childCheckupTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkup_day')
  String get checkupDay => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_measurement')
  double? get head => throw _privateConstructorUsedError;
  @JsonKey(name: 'chest_measurement')
  double? get chest => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_normal')
  String? get isNormal => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_observation')
  String? get isObservation => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_detailed_examination')
  String? get isDetailedExamination => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_treatment')
  String? get isTreatment => throw _privateConstructorUsedError;
  @JsonKey(name: 'teeth_num')
  int? get teethNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_bad_tooth')
  String? get isBadTooth => throw _privateConstructorUsedError;
  @JsonKey(name: 'bad_tooth_num')
  int? get badToothNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'baby_bad_tooth_num')
  int? get babyBadToothNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'adult_bad_tooth_num')
  int? get adultBadToothNum => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildCheckupRecordSaveRequestCopyWith<ChildCheckupRecordSaveRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCheckupRecordSaveRequestCopyWith<$Res> {
  factory $ChildCheckupRecordSaveRequestCopyWith(
          ChildCheckupRecordSaveRequest value,
          $Res Function(ChildCheckupRecordSaveRequest) then) =
      _$ChildCheckupRecordSaveRequestCopyWithImpl<$Res,
          ChildCheckupRecordSaveRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_checkup_record_id') int? recordId,
      @JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'child_checkup_type_id') int childCheckupTypeId,
      @JsonKey(name: 'checkup_day') String checkupDay,
      double? height,
      int? weight,
      @JsonKey(name: 'head_measurement') double? head,
      @JsonKey(name: 'chest_measurement') double? chest,
      @JsonKey(name: 'is_normal') String? isNormal,
      @JsonKey(name: 'is_observation') String? isObservation,
      @JsonKey(name: 'is_detailed_examination') String? isDetailedExamination,
      @JsonKey(name: 'is_treatment') String? isTreatment,
      @JsonKey(name: 'teeth_num') int? teethNum,
      @JsonKey(name: 'is_bad_tooth') String? isBadTooth,
      @JsonKey(name: 'bad_tooth_num') int? badToothNum,
      @JsonKey(name: 'baby_bad_tooth_num') int? babyBadToothNum,
      @JsonKey(name: 'adult_bad_tooth_num') int? adultBadToothNum,
      String note});
}

/// @nodoc
class _$ChildCheckupRecordSaveRequestCopyWithImpl<$Res,
        $Val extends ChildCheckupRecordSaveRequest>
    implements $ChildCheckupRecordSaveRequestCopyWith<$Res> {
  _$ChildCheckupRecordSaveRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = freezed,
    Object? childId = null,
    Object? childCheckupTypeId = null,
    Object? checkupDay = null,
    Object? height = freezed,
    Object? weight = freezed,
    Object? head = freezed,
    Object? chest = freezed,
    Object? isNormal = freezed,
    Object? isObservation = freezed,
    Object? isDetailedExamination = freezed,
    Object? isTreatment = freezed,
    Object? teethNum = freezed,
    Object? isBadTooth = freezed,
    Object? badToothNum = freezed,
    Object? babyBadToothNum = freezed,
    Object? adultBadToothNum = freezed,
    Object? note = null,
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
      childCheckupTypeId: null == childCheckupTypeId
          ? _value.childCheckupTypeId
          : childCheckupTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      checkupDay: null == checkupDay
          ? _value.checkupDay
          : checkupDay // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      head: freezed == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as double?,
      chest: freezed == chest
          ? _value.chest
          : chest // ignore: cast_nullable_to_non_nullable
              as double?,
      isNormal: freezed == isNormal
          ? _value.isNormal
          : isNormal // ignore: cast_nullable_to_non_nullable
              as String?,
      isObservation: freezed == isObservation
          ? _value.isObservation
          : isObservation // ignore: cast_nullable_to_non_nullable
              as String?,
      isDetailedExamination: freezed == isDetailedExamination
          ? _value.isDetailedExamination
          : isDetailedExamination // ignore: cast_nullable_to_non_nullable
              as String?,
      isTreatment: freezed == isTreatment
          ? _value.isTreatment
          : isTreatment // ignore: cast_nullable_to_non_nullable
              as String?,
      teethNum: freezed == teethNum
          ? _value.teethNum
          : teethNum // ignore: cast_nullable_to_non_nullable
              as int?,
      isBadTooth: freezed == isBadTooth
          ? _value.isBadTooth
          : isBadTooth // ignore: cast_nullable_to_non_nullable
              as String?,
      badToothNum: freezed == badToothNum
          ? _value.badToothNum
          : badToothNum // ignore: cast_nullable_to_non_nullable
              as int?,
      babyBadToothNum: freezed == babyBadToothNum
          ? _value.babyBadToothNum
          : babyBadToothNum // ignore: cast_nullable_to_non_nullable
              as int?,
      adultBadToothNum: freezed == adultBadToothNum
          ? _value.adultBadToothNum
          : adultBadToothNum // ignore: cast_nullable_to_non_nullable
              as int?,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildCheckupRecordSaveRequestCopyWith<$Res>
    implements $ChildCheckupRecordSaveRequestCopyWith<$Res> {
  factory _$$_ChildCheckupRecordSaveRequestCopyWith(
          _$_ChildCheckupRecordSaveRequest value,
          $Res Function(_$_ChildCheckupRecordSaveRequest) then) =
      __$$_ChildCheckupRecordSaveRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_checkup_record_id') int? recordId,
      @JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'child_checkup_type_id') int childCheckupTypeId,
      @JsonKey(name: 'checkup_day') String checkupDay,
      double? height,
      int? weight,
      @JsonKey(name: 'head_measurement') double? head,
      @JsonKey(name: 'chest_measurement') double? chest,
      @JsonKey(name: 'is_normal') String? isNormal,
      @JsonKey(name: 'is_observation') String? isObservation,
      @JsonKey(name: 'is_detailed_examination') String? isDetailedExamination,
      @JsonKey(name: 'is_treatment') String? isTreatment,
      @JsonKey(name: 'teeth_num') int? teethNum,
      @JsonKey(name: 'is_bad_tooth') String? isBadTooth,
      @JsonKey(name: 'bad_tooth_num') int? badToothNum,
      @JsonKey(name: 'baby_bad_tooth_num') int? babyBadToothNum,
      @JsonKey(name: 'adult_bad_tooth_num') int? adultBadToothNum,
      String note});
}

/// @nodoc
class __$$_ChildCheckupRecordSaveRequestCopyWithImpl<$Res>
    extends _$ChildCheckupRecordSaveRequestCopyWithImpl<$Res,
        _$_ChildCheckupRecordSaveRequest>
    implements _$$_ChildCheckupRecordSaveRequestCopyWith<$Res> {
  __$$_ChildCheckupRecordSaveRequestCopyWithImpl(
      _$_ChildCheckupRecordSaveRequest _value,
      $Res Function(_$_ChildCheckupRecordSaveRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = freezed,
    Object? childId = null,
    Object? childCheckupTypeId = null,
    Object? checkupDay = null,
    Object? height = freezed,
    Object? weight = freezed,
    Object? head = freezed,
    Object? chest = freezed,
    Object? isNormal = freezed,
    Object? isObservation = freezed,
    Object? isDetailedExamination = freezed,
    Object? isTreatment = freezed,
    Object? teethNum = freezed,
    Object? isBadTooth = freezed,
    Object? badToothNum = freezed,
    Object? babyBadToothNum = freezed,
    Object? adultBadToothNum = freezed,
    Object? note = null,
  }) {
    return _then(_$_ChildCheckupRecordSaveRequest(
      recordId: freezed == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int?,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      childCheckupTypeId: null == childCheckupTypeId
          ? _value.childCheckupTypeId
          : childCheckupTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      checkupDay: null == checkupDay
          ? _value.checkupDay
          : checkupDay // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      head: freezed == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as double?,
      chest: freezed == chest
          ? _value.chest
          : chest // ignore: cast_nullable_to_non_nullable
              as double?,
      isNormal: freezed == isNormal
          ? _value.isNormal
          : isNormal // ignore: cast_nullable_to_non_nullable
              as String?,
      isObservation: freezed == isObservation
          ? _value.isObservation
          : isObservation // ignore: cast_nullable_to_non_nullable
              as String?,
      isDetailedExamination: freezed == isDetailedExamination
          ? _value.isDetailedExamination
          : isDetailedExamination // ignore: cast_nullable_to_non_nullable
              as String?,
      isTreatment: freezed == isTreatment
          ? _value.isTreatment
          : isTreatment // ignore: cast_nullable_to_non_nullable
              as String?,
      teethNum: freezed == teethNum
          ? _value.teethNum
          : teethNum // ignore: cast_nullable_to_non_nullable
              as int?,
      isBadTooth: freezed == isBadTooth
          ? _value.isBadTooth
          : isBadTooth // ignore: cast_nullable_to_non_nullable
              as String?,
      badToothNum: freezed == badToothNum
          ? _value.badToothNum
          : badToothNum // ignore: cast_nullable_to_non_nullable
              as int?,
      babyBadToothNum: freezed == babyBadToothNum
          ? _value.babyBadToothNum
          : babyBadToothNum // ignore: cast_nullable_to_non_nullable
              as int?,
      adultBadToothNum: freezed == adultBadToothNum
          ? _value.adultBadToothNum
          : adultBadToothNum // ignore: cast_nullable_to_non_nullable
              as int?,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildCheckupRecordSaveRequest
    implements _ChildCheckupRecordSaveRequest {
  const _$_ChildCheckupRecordSaveRequest(
      {@JsonKey(name: 'child_checkup_record_id') this.recordId,
      @JsonKey(name: 'child_id') required this.childId,
      @JsonKey(name: 'child_checkup_type_id') required this.childCheckupTypeId,
      @JsonKey(name: 'checkup_day') required this.checkupDay,
      this.height,
      this.weight,
      @JsonKey(name: 'head_measurement') this.head,
      @JsonKey(name: 'chest_measurement') this.chest,
      @JsonKey(name: 'is_normal') this.isNormal,
      @JsonKey(name: 'is_observation') this.isObservation,
      @JsonKey(name: 'is_detailed_examination') this.isDetailedExamination,
      @JsonKey(name: 'is_treatment') this.isTreatment,
      @JsonKey(name: 'teeth_num') this.teethNum,
      @JsonKey(name: 'is_bad_tooth') this.isBadTooth,
      @JsonKey(name: 'bad_tooth_num') this.badToothNum,
      @JsonKey(name: 'baby_bad_tooth_num') this.babyBadToothNum,
      @JsonKey(name: 'adult_bad_tooth_num') this.adultBadToothNum,
      this.note = ''});

  factory _$_ChildCheckupRecordSaveRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_ChildCheckupRecordSaveRequestFromJson(json);

  @override
  @JsonKey(name: 'child_checkup_record_id')
  final int? recordId;
// 新規ならnull
  @override
  @JsonKey(name: 'child_id')
  final int childId;
  @override
  @JsonKey(name: 'child_checkup_type_id')
  final int childCheckupTypeId;
  @override
  @JsonKey(name: 'checkup_day')
  final String checkupDay;
  @override
  final double? height;
  @override
  final int? weight;
  @override
  @JsonKey(name: 'head_measurement')
  final double? head;
  @override
  @JsonKey(name: 'chest_measurement')
  final double? chest;
  @override
  @JsonKey(name: 'is_normal')
  final String? isNormal;
  @override
  @JsonKey(name: 'is_observation')
  final String? isObservation;
  @override
  @JsonKey(name: 'is_detailed_examination')
  final String? isDetailedExamination;
  @override
  @JsonKey(name: 'is_treatment')
  final String? isTreatment;
  @override
  @JsonKey(name: 'teeth_num')
  final int? teethNum;
  @override
  @JsonKey(name: 'is_bad_tooth')
  final String? isBadTooth;
  @override
  @JsonKey(name: 'bad_tooth_num')
  final int? badToothNum;
  @override
  @JsonKey(name: 'baby_bad_tooth_num')
  final int? babyBadToothNum;
  @override
  @JsonKey(name: 'adult_bad_tooth_num')
  final int? adultBadToothNum;
  @override
  @JsonKey()
  final String note;

  @override
  String toString() {
    return 'ChildCheckupRecordSaveRequest(recordId: $recordId, childId: $childId, childCheckupTypeId: $childCheckupTypeId, checkupDay: $checkupDay, height: $height, weight: $weight, head: $head, chest: $chest, isNormal: $isNormal, isObservation: $isObservation, isDetailedExamination: $isDetailedExamination, isTreatment: $isTreatment, teethNum: $teethNum, isBadTooth: $isBadTooth, badToothNum: $badToothNum, babyBadToothNum: $babyBadToothNum, adultBadToothNum: $adultBadToothNum, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildCheckupRecordSaveRequest &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.childCheckupTypeId, childCheckupTypeId) ||
                other.childCheckupTypeId == childCheckupTypeId) &&
            (identical(other.checkupDay, checkupDay) ||
                other.checkupDay == checkupDay) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.chest, chest) || other.chest == chest) &&
            (identical(other.isNormal, isNormal) ||
                other.isNormal == isNormal) &&
            (identical(other.isObservation, isObservation) ||
                other.isObservation == isObservation) &&
            (identical(other.isDetailedExamination, isDetailedExamination) ||
                other.isDetailedExamination == isDetailedExamination) &&
            (identical(other.isTreatment, isTreatment) ||
                other.isTreatment == isTreatment) &&
            (identical(other.teethNum, teethNum) ||
                other.teethNum == teethNum) &&
            (identical(other.isBadTooth, isBadTooth) ||
                other.isBadTooth == isBadTooth) &&
            (identical(other.badToothNum, badToothNum) ||
                other.badToothNum == badToothNum) &&
            (identical(other.babyBadToothNum, babyBadToothNum) ||
                other.babyBadToothNum == babyBadToothNum) &&
            (identical(other.adultBadToothNum, adultBadToothNum) ||
                other.adultBadToothNum == adultBadToothNum) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      recordId,
      childId,
      childCheckupTypeId,
      checkupDay,
      height,
      weight,
      head,
      chest,
      isNormal,
      isObservation,
      isDetailedExamination,
      isTreatment,
      teethNum,
      isBadTooth,
      badToothNum,
      babyBadToothNum,
      adultBadToothNum,
      note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildCheckupRecordSaveRequestCopyWith<_$_ChildCheckupRecordSaveRequest>
      get copyWith => __$$_ChildCheckupRecordSaveRequestCopyWithImpl<
          _$_ChildCheckupRecordSaveRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildCheckupRecordSaveRequestToJson(
      this,
    );
  }
}

abstract class _ChildCheckupRecordSaveRequest
    implements ChildCheckupRecordSaveRequest {
  const factory _ChildCheckupRecordSaveRequest(
      {@JsonKey(name: 'child_checkup_record_id')
          final int? recordId,
      @JsonKey(name: 'child_id')
          required final int childId,
      @JsonKey(name: 'child_checkup_type_id')
          required final int childCheckupTypeId,
      @JsonKey(name: 'checkup_day')
          required final String checkupDay,
      final double? height,
      final int? weight,
      @JsonKey(name: 'head_measurement')
          final double? head,
      @JsonKey(name: 'chest_measurement')
          final double? chest,
      @JsonKey(name: 'is_normal')
          final String? isNormal,
      @JsonKey(name: 'is_observation')
          final String? isObservation,
      @JsonKey(name: 'is_detailed_examination')
          final String? isDetailedExamination,
      @JsonKey(name: 'is_treatment')
          final String? isTreatment,
      @JsonKey(name: 'teeth_num')
          final int? teethNum,
      @JsonKey(name: 'is_bad_tooth')
          final String? isBadTooth,
      @JsonKey(name: 'bad_tooth_num')
          final int? badToothNum,
      @JsonKey(name: 'baby_bad_tooth_num')
          final int? babyBadToothNum,
      @JsonKey(name: 'adult_bad_tooth_num')
          final int? adultBadToothNum,
      final String note}) = _$_ChildCheckupRecordSaveRequest;

  factory _ChildCheckupRecordSaveRequest.fromJson(Map<String, dynamic> json) =
      _$_ChildCheckupRecordSaveRequest.fromJson;

  @override
  @JsonKey(name: 'child_checkup_record_id')
  int? get recordId;
  @override // 新規ならnull
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'child_checkup_type_id')
  int get childCheckupTypeId;
  @override
  @JsonKey(name: 'checkup_day')
  String get checkupDay;
  @override
  double? get height;
  @override
  int? get weight;
  @override
  @JsonKey(name: 'head_measurement')
  double? get head;
  @override
  @JsonKey(name: 'chest_measurement')
  double? get chest;
  @override
  @JsonKey(name: 'is_normal')
  String? get isNormal;
  @override
  @JsonKey(name: 'is_observation')
  String? get isObservation;
  @override
  @JsonKey(name: 'is_detailed_examination')
  String? get isDetailedExamination;
  @override
  @JsonKey(name: 'is_treatment')
  String? get isTreatment;
  @override
  @JsonKey(name: 'teeth_num')
  int? get teethNum;
  @override
  @JsonKey(name: 'is_bad_tooth')
  String? get isBadTooth;
  @override
  @JsonKey(name: 'bad_tooth_num')
  int? get badToothNum;
  @override
  @JsonKey(name: 'baby_bad_tooth_num')
  int? get babyBadToothNum;
  @override
  @JsonKey(name: 'adult_bad_tooth_num')
  int? get adultBadToothNum;
  @override
  String get note;
  @override
  @JsonKey(ignore: true)
  _$$_ChildCheckupRecordSaveRequestCopyWith<_$_ChildCheckupRecordSaveRequest>
      get copyWith => throw _privateConstructorUsedError;
}

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

ChildCheckupDetailModel _$ChildCheckupDetailModelFromJson(
    Map<String, dynamic> json) {
  return _ChildCheckupDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ChildCheckupDetailModel {
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_checkup_type_id')
  int get childCheckupTypeId => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'checkup_day')
  DateTime get checkupDay => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_measurement')
  double? get headMeasurement => throw _privateConstructorUsedError;
  @JsonKey(name: 'chest_measurement')
  double? get chestMeasurement => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_normal')
  String get isNormal => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_observation')
  String get isObservation => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_detailed_examination')
  String get isDetailedExamination => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_treatment')
  String get isTreatment => throw _privateConstructorUsedError;
  @JsonKey(name: 'teeth_num')
  int? get teethNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_bad_tooth')
  String get isBadTooth => throw _privateConstructorUsedError;
  @JsonKey(name: 'bad_tooth_num')
  int? get badToothNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'baby_bad_tooth_num')
  int? get babyBadToothNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'adult_bad_tooth_num')
  int? get adultBadToothNum => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildCheckupDetailModelCopyWith<ChildCheckupDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCheckupDetailModelCopyWith<$Res> {
  factory $ChildCheckupDetailModelCopyWith(ChildCheckupDetailModel value,
          $Res Function(ChildCheckupDetailModel) then) =
      _$ChildCheckupDetailModelCopyWithImpl<$Res, ChildCheckupDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'child_checkup_type_id') int childCheckupTypeId,
      @DateTimeConverter() @JsonKey(name: 'checkup_day') DateTime checkupDay,
      double? height,
      int? weight,
      @JsonKey(name: 'head_measurement') double? headMeasurement,
      @JsonKey(name: 'chest_measurement') double? chestMeasurement,
      @JsonKey(name: 'is_normal') String isNormal,
      @JsonKey(name: 'is_observation') String isObservation,
      @JsonKey(name: 'is_detailed_examination') String isDetailedExamination,
      @JsonKey(name: 'is_treatment') String isTreatment,
      @JsonKey(name: 'teeth_num') int? teethNum,
      @JsonKey(name: 'is_bad_tooth') String isBadTooth,
      @JsonKey(name: 'bad_tooth_num') int? badToothNum,
      @JsonKey(name: 'baby_bad_tooth_num') int? babyBadToothNum,
      @JsonKey(name: 'adult_bad_tooth_num') int? adultBadToothNum,
      String? note});
}

/// @nodoc
class _$ChildCheckupDetailModelCopyWithImpl<$Res,
        $Val extends ChildCheckupDetailModel>
    implements $ChildCheckupDetailModelCopyWith<$Res> {
  _$ChildCheckupDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? childCheckupTypeId = null,
    Object? checkupDay = null,
    Object? height = freezed,
    Object? weight = freezed,
    Object? headMeasurement = freezed,
    Object? chestMeasurement = freezed,
    Object? isNormal = null,
    Object? isObservation = null,
    Object? isDetailedExamination = null,
    Object? isTreatment = null,
    Object? teethNum = freezed,
    Object? isBadTooth = null,
    Object? badToothNum = freezed,
    Object? babyBadToothNum = freezed,
    Object? adultBadToothNum = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
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
              as DateTime,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      headMeasurement: freezed == headMeasurement
          ? _value.headMeasurement
          : headMeasurement // ignore: cast_nullable_to_non_nullable
              as double?,
      chestMeasurement: freezed == chestMeasurement
          ? _value.chestMeasurement
          : chestMeasurement // ignore: cast_nullable_to_non_nullable
              as double?,
      isNormal: null == isNormal
          ? _value.isNormal
          : isNormal // ignore: cast_nullable_to_non_nullable
              as String,
      isObservation: null == isObservation
          ? _value.isObservation
          : isObservation // ignore: cast_nullable_to_non_nullable
              as String,
      isDetailedExamination: null == isDetailedExamination
          ? _value.isDetailedExamination
          : isDetailedExamination // ignore: cast_nullable_to_non_nullable
              as String,
      isTreatment: null == isTreatment
          ? _value.isTreatment
          : isTreatment // ignore: cast_nullable_to_non_nullable
              as String,
      teethNum: freezed == teethNum
          ? _value.teethNum
          : teethNum // ignore: cast_nullable_to_non_nullable
              as int?,
      isBadTooth: null == isBadTooth
          ? _value.isBadTooth
          : isBadTooth // ignore: cast_nullable_to_non_nullable
              as String,
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildCheckupDetailModelCopyWith<$Res>
    implements $ChildCheckupDetailModelCopyWith<$Res> {
  factory _$$_ChildCheckupDetailModelCopyWith(_$_ChildCheckupDetailModel value,
          $Res Function(_$_ChildCheckupDetailModel) then) =
      __$$_ChildCheckupDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'child_checkup_type_id') int childCheckupTypeId,
      @DateTimeConverter() @JsonKey(name: 'checkup_day') DateTime checkupDay,
      double? height,
      int? weight,
      @JsonKey(name: 'head_measurement') double? headMeasurement,
      @JsonKey(name: 'chest_measurement') double? chestMeasurement,
      @JsonKey(name: 'is_normal') String isNormal,
      @JsonKey(name: 'is_observation') String isObservation,
      @JsonKey(name: 'is_detailed_examination') String isDetailedExamination,
      @JsonKey(name: 'is_treatment') String isTreatment,
      @JsonKey(name: 'teeth_num') int? teethNum,
      @JsonKey(name: 'is_bad_tooth') String isBadTooth,
      @JsonKey(name: 'bad_tooth_num') int? badToothNum,
      @JsonKey(name: 'baby_bad_tooth_num') int? babyBadToothNum,
      @JsonKey(name: 'adult_bad_tooth_num') int? adultBadToothNum,
      String? note});
}

/// @nodoc
class __$$_ChildCheckupDetailModelCopyWithImpl<$Res>
    extends _$ChildCheckupDetailModelCopyWithImpl<$Res,
        _$_ChildCheckupDetailModel>
    implements _$$_ChildCheckupDetailModelCopyWith<$Res> {
  __$$_ChildCheckupDetailModelCopyWithImpl(_$_ChildCheckupDetailModel _value,
      $Res Function(_$_ChildCheckupDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? childCheckupTypeId = null,
    Object? checkupDay = null,
    Object? height = freezed,
    Object? weight = freezed,
    Object? headMeasurement = freezed,
    Object? chestMeasurement = freezed,
    Object? isNormal = null,
    Object? isObservation = null,
    Object? isDetailedExamination = null,
    Object? isTreatment = null,
    Object? teethNum = freezed,
    Object? isBadTooth = null,
    Object? badToothNum = freezed,
    Object? babyBadToothNum = freezed,
    Object? adultBadToothNum = freezed,
    Object? note = freezed,
  }) {
    return _then(_$_ChildCheckupDetailModel(
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
              as DateTime,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      headMeasurement: freezed == headMeasurement
          ? _value.headMeasurement
          : headMeasurement // ignore: cast_nullable_to_non_nullable
              as double?,
      chestMeasurement: freezed == chestMeasurement
          ? _value.chestMeasurement
          : chestMeasurement // ignore: cast_nullable_to_non_nullable
              as double?,
      isNormal: null == isNormal
          ? _value.isNormal
          : isNormal // ignore: cast_nullable_to_non_nullable
              as String,
      isObservation: null == isObservation
          ? _value.isObservation
          : isObservation // ignore: cast_nullable_to_non_nullable
              as String,
      isDetailedExamination: null == isDetailedExamination
          ? _value.isDetailedExamination
          : isDetailedExamination // ignore: cast_nullable_to_non_nullable
              as String,
      isTreatment: null == isTreatment
          ? _value.isTreatment
          : isTreatment // ignore: cast_nullable_to_non_nullable
              as String,
      teethNum: freezed == teethNum
          ? _value.teethNum
          : teethNum // ignore: cast_nullable_to_non_nullable
              as int?,
      isBadTooth: null == isBadTooth
          ? _value.isBadTooth
          : isBadTooth // ignore: cast_nullable_to_non_nullable
              as String,
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildCheckupDetailModel implements _ChildCheckupDetailModel {
  const _$_ChildCheckupDetailModel(
      {@JsonKey(name: 'child_id')
          required this.childId,
      @JsonKey(name: 'child_checkup_type_id')
          required this.childCheckupTypeId,
      @DateTimeConverter()
      @JsonKey(name: 'checkup_day')
          required this.checkupDay,
      this.height,
      this.weight,
      @JsonKey(name: 'head_measurement')
          this.headMeasurement,
      @JsonKey(name: 'chest_measurement')
          this.chestMeasurement,
      @JsonKey(name: 'is_normal')
          required this.isNormal,
      @JsonKey(name: 'is_observation')
          required this.isObservation,
      @JsonKey(name: 'is_detailed_examination')
          required this.isDetailedExamination,
      @JsonKey(name: 'is_treatment')
          required this.isTreatment,
      @JsonKey(name: 'teeth_num')
          this.teethNum,
      @JsonKey(name: 'is_bad_tooth')
          required this.isBadTooth,
      @JsonKey(name: 'bad_tooth_num')
          this.badToothNum,
      @JsonKey(name: 'baby_bad_tooth_num')
          this.babyBadToothNum,
      @JsonKey(name: 'adult_bad_tooth_num')
          this.adultBadToothNum,
      this.note});

  factory _$_ChildCheckupDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChildCheckupDetailModelFromJson(json);

  @override
  @JsonKey(name: 'child_id')
  final int childId;
  @override
  @JsonKey(name: 'child_checkup_type_id')
  final int childCheckupTypeId;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'checkup_day')
  final DateTime checkupDay;
  @override
  final double? height;
  @override
  final int? weight;
  @override
  @JsonKey(name: 'head_measurement')
  final double? headMeasurement;
  @override
  @JsonKey(name: 'chest_measurement')
  final double? chestMeasurement;
  @override
  @JsonKey(name: 'is_normal')
  final String isNormal;
  @override
  @JsonKey(name: 'is_observation')
  final String isObservation;
  @override
  @JsonKey(name: 'is_detailed_examination')
  final String isDetailedExamination;
  @override
  @JsonKey(name: 'is_treatment')
  final String isTreatment;
  @override
  @JsonKey(name: 'teeth_num')
  final int? teethNum;
  @override
  @JsonKey(name: 'is_bad_tooth')
  final String isBadTooth;
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
  final String? note;

  @override
  String toString() {
    return 'ChildCheckupDetailModel(childId: $childId, childCheckupTypeId: $childCheckupTypeId, checkupDay: $checkupDay, height: $height, weight: $weight, headMeasurement: $headMeasurement, chestMeasurement: $chestMeasurement, isNormal: $isNormal, isObservation: $isObservation, isDetailedExamination: $isDetailedExamination, isTreatment: $isTreatment, teethNum: $teethNum, isBadTooth: $isBadTooth, badToothNum: $badToothNum, babyBadToothNum: $babyBadToothNum, adultBadToothNum: $adultBadToothNum, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildCheckupDetailModel &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.childCheckupTypeId, childCheckupTypeId) ||
                other.childCheckupTypeId == childCheckupTypeId) &&
            (identical(other.checkupDay, checkupDay) ||
                other.checkupDay == checkupDay) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.headMeasurement, headMeasurement) ||
                other.headMeasurement == headMeasurement) &&
            (identical(other.chestMeasurement, chestMeasurement) ||
                other.chestMeasurement == chestMeasurement) &&
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
      childId,
      childCheckupTypeId,
      checkupDay,
      height,
      weight,
      headMeasurement,
      chestMeasurement,
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
  _$$_ChildCheckupDetailModelCopyWith<_$_ChildCheckupDetailModel>
      get copyWith =>
          __$$_ChildCheckupDetailModelCopyWithImpl<_$_ChildCheckupDetailModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildCheckupDetailModelToJson(
      this,
    );
  }
}

abstract class _ChildCheckupDetailModel implements ChildCheckupDetailModel {
  const factory _ChildCheckupDetailModel(
      {@JsonKey(name: 'child_id')
          required final int childId,
      @JsonKey(name: 'child_checkup_type_id')
          required final int childCheckupTypeId,
      @DateTimeConverter()
      @JsonKey(name: 'checkup_day')
          required final DateTime checkupDay,
      final double? height,
      final int? weight,
      @JsonKey(name: 'head_measurement')
          final double? headMeasurement,
      @JsonKey(name: 'chest_measurement')
          final double? chestMeasurement,
      @JsonKey(name: 'is_normal')
          required final String isNormal,
      @JsonKey(name: 'is_observation')
          required final String isObservation,
      @JsonKey(name: 'is_detailed_examination')
          required final String isDetailedExamination,
      @JsonKey(name: 'is_treatment')
          required final String isTreatment,
      @JsonKey(name: 'teeth_num')
          final int? teethNum,
      @JsonKey(name: 'is_bad_tooth')
          required final String isBadTooth,
      @JsonKey(name: 'bad_tooth_num')
          final int? badToothNum,
      @JsonKey(name: 'baby_bad_tooth_num')
          final int? babyBadToothNum,
      @JsonKey(name: 'adult_bad_tooth_num')
          final int? adultBadToothNum,
      final String? note}) = _$_ChildCheckupDetailModel;

  factory _ChildCheckupDetailModel.fromJson(Map<String, dynamic> json) =
      _$_ChildCheckupDetailModel.fromJson;

  @override
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'child_checkup_type_id')
  int get childCheckupTypeId;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'checkup_day')
  DateTime get checkupDay;
  @override
  double? get height;
  @override
  int? get weight;
  @override
  @JsonKey(name: 'head_measurement')
  double? get headMeasurement;
  @override
  @JsonKey(name: 'chest_measurement')
  double? get chestMeasurement;
  @override
  @JsonKey(name: 'is_normal')
  String get isNormal;
  @override
  @JsonKey(name: 'is_observation')
  String get isObservation;
  @override
  @JsonKey(name: 'is_detailed_examination')
  String get isDetailedExamination;
  @override
  @JsonKey(name: 'is_treatment')
  String get isTreatment;
  @override
  @JsonKey(name: 'teeth_num')
  int? get teethNum;
  @override
  @JsonKey(name: 'is_bad_tooth')
  String get isBadTooth;
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
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$_ChildCheckupDetailModelCopyWith<_$_ChildCheckupDetailModel>
      get copyWith => throw _privateConstructorUsedError;
}

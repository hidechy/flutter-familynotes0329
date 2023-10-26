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

CheckupDetailModel _$CheckupDetailModelFromJson(Map<String, dynamic> json) {
  return _CheckupDetailModel.fromJson(json);
}

/// @nodoc
mixin _$CheckupDetailModel {
  @JsonKey(name: 'mother_checkup_record_id')
  int get checkupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkup_day')
  String get checkupDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'gestational_week')
  int? get gestationalWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'gestational_week_day')
  int? get gestationalWeekDay => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_normal')
  String? get isNormal => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_ta')
  String? get isTa => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_pih')
  String? get isPih => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_gdm')
  String? get isGdm => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_anemia')
  String? get isAnemia => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_other_disease')
  String? get isOtherDisease => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckupDetailModelCopyWith<CheckupDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckupDetailModelCopyWith<$Res> {
  factory $CheckupDetailModelCopyWith(
          CheckupDetailModel value, $Res Function(CheckupDetailModel) then) =
      _$CheckupDetailModelCopyWithImpl<$Res, CheckupDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mother_checkup_record_id') int checkupId,
      @JsonKey(name: 'checkup_day') String checkupDay,
      @JsonKey(name: 'gestational_week') int? gestationalWeek,
      @JsonKey(name: 'gestational_week_day') int? gestationalWeekDay,
      double? weight,
      @JsonKey(name: 'is_normal') String? isNormal,
      @JsonKey(name: 'is_ta') String? isTa,
      @JsonKey(name: 'is_pih') String? isPih,
      @JsonKey(name: 'is_gdm') String? isGdm,
      @JsonKey(name: 'is_anemia') String? isAnemia,
      @JsonKey(name: 'is_other_disease') String? isOtherDisease,
      String? note});
}

/// @nodoc
class _$CheckupDetailModelCopyWithImpl<$Res, $Val extends CheckupDetailModel>
    implements $CheckupDetailModelCopyWith<$Res> {
  _$CheckupDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkupId = null,
    Object? checkupDay = null,
    Object? gestationalWeek = freezed,
    Object? gestationalWeekDay = freezed,
    Object? weight = freezed,
    Object? isNormal = freezed,
    Object? isTa = freezed,
    Object? isPih = freezed,
    Object? isGdm = freezed,
    Object? isAnemia = freezed,
    Object? isOtherDisease = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      checkupId: null == checkupId
          ? _value.checkupId
          : checkupId // ignore: cast_nullable_to_non_nullable
              as int,
      checkupDay: null == checkupDay
          ? _value.checkupDay
          : checkupDay // ignore: cast_nullable_to_non_nullable
              as String,
      gestationalWeek: freezed == gestationalWeek
          ? _value.gestationalWeek
          : gestationalWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      gestationalWeekDay: freezed == gestationalWeekDay
          ? _value.gestationalWeekDay
          : gestationalWeekDay // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      isNormal: freezed == isNormal
          ? _value.isNormal
          : isNormal // ignore: cast_nullable_to_non_nullable
              as String?,
      isTa: freezed == isTa
          ? _value.isTa
          : isTa // ignore: cast_nullable_to_non_nullable
              as String?,
      isPih: freezed == isPih
          ? _value.isPih
          : isPih // ignore: cast_nullable_to_non_nullable
              as String?,
      isGdm: freezed == isGdm
          ? _value.isGdm
          : isGdm // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnemia: freezed == isAnemia
          ? _value.isAnemia
          : isAnemia // ignore: cast_nullable_to_non_nullable
              as String?,
      isOtherDisease: freezed == isOtherDisease
          ? _value.isOtherDisease
          : isOtherDisease // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckupDetailModelCopyWith<$Res>
    implements $CheckupDetailModelCopyWith<$Res> {
  factory _$$_CheckupDetailModelCopyWith(_$_CheckupDetailModel value,
          $Res Function(_$_CheckupDetailModel) then) =
      __$$_CheckupDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mother_checkup_record_id') int checkupId,
      @JsonKey(name: 'checkup_day') String checkupDay,
      @JsonKey(name: 'gestational_week') int? gestationalWeek,
      @JsonKey(name: 'gestational_week_day') int? gestationalWeekDay,
      double? weight,
      @JsonKey(name: 'is_normal') String? isNormal,
      @JsonKey(name: 'is_ta') String? isTa,
      @JsonKey(name: 'is_pih') String? isPih,
      @JsonKey(name: 'is_gdm') String? isGdm,
      @JsonKey(name: 'is_anemia') String? isAnemia,
      @JsonKey(name: 'is_other_disease') String? isOtherDisease,
      String? note});
}

/// @nodoc
class __$$_CheckupDetailModelCopyWithImpl<$Res>
    extends _$CheckupDetailModelCopyWithImpl<$Res, _$_CheckupDetailModel>
    implements _$$_CheckupDetailModelCopyWith<$Res> {
  __$$_CheckupDetailModelCopyWithImpl(
      _$_CheckupDetailModel _value, $Res Function(_$_CheckupDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkupId = null,
    Object? checkupDay = null,
    Object? gestationalWeek = freezed,
    Object? gestationalWeekDay = freezed,
    Object? weight = freezed,
    Object? isNormal = freezed,
    Object? isTa = freezed,
    Object? isPih = freezed,
    Object? isGdm = freezed,
    Object? isAnemia = freezed,
    Object? isOtherDisease = freezed,
    Object? note = freezed,
  }) {
    return _then(_$_CheckupDetailModel(
      checkupId: null == checkupId
          ? _value.checkupId
          : checkupId // ignore: cast_nullable_to_non_nullable
              as int,
      checkupDay: null == checkupDay
          ? _value.checkupDay
          : checkupDay // ignore: cast_nullable_to_non_nullable
              as String,
      gestationalWeek: freezed == gestationalWeek
          ? _value.gestationalWeek
          : gestationalWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      gestationalWeekDay: freezed == gestationalWeekDay
          ? _value.gestationalWeekDay
          : gestationalWeekDay // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      isNormal: freezed == isNormal
          ? _value.isNormal
          : isNormal // ignore: cast_nullable_to_non_nullable
              as String?,
      isTa: freezed == isTa
          ? _value.isTa
          : isTa // ignore: cast_nullable_to_non_nullable
              as String?,
      isPih: freezed == isPih
          ? _value.isPih
          : isPih // ignore: cast_nullable_to_non_nullable
              as String?,
      isGdm: freezed == isGdm
          ? _value.isGdm
          : isGdm // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnemia: freezed == isAnemia
          ? _value.isAnemia
          : isAnemia // ignore: cast_nullable_to_non_nullable
              as String?,
      isOtherDisease: freezed == isOtherDisease
          ? _value.isOtherDisease
          : isOtherDisease // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckupDetailModel implements _CheckupDetailModel {
  const _$_CheckupDetailModel(
      {@JsonKey(name: 'mother_checkup_record_id') required this.checkupId,
      @JsonKey(name: 'checkup_day') required this.checkupDay,
      @JsonKey(name: 'gestational_week') this.gestationalWeek,
      @JsonKey(name: 'gestational_week_day') this.gestationalWeekDay,
      this.weight,
      @JsonKey(name: 'is_normal') this.isNormal,
      @JsonKey(name: 'is_ta') this.isTa,
      @JsonKey(name: 'is_pih') this.isPih,
      @JsonKey(name: 'is_gdm') this.isGdm,
      @JsonKey(name: 'is_anemia') this.isAnemia,
      @JsonKey(name: 'is_other_disease') this.isOtherDisease,
      this.note});

  factory _$_CheckupDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_CheckupDetailModelFromJson(json);

  @override
  @JsonKey(name: 'mother_checkup_record_id')
  final int checkupId;
  @override
  @JsonKey(name: 'checkup_day')
  final String checkupDay;
  @override
  @JsonKey(name: 'gestational_week')
  final int? gestationalWeek;
  @override
  @JsonKey(name: 'gestational_week_day')
  final int? gestationalWeekDay;
  @override
  final double? weight;
  @override
  @JsonKey(name: 'is_normal')
  final String? isNormal;
  @override
  @JsonKey(name: 'is_ta')
  final String? isTa;
  @override
  @JsonKey(name: 'is_pih')
  final String? isPih;
  @override
  @JsonKey(name: 'is_gdm')
  final String? isGdm;
  @override
  @JsonKey(name: 'is_anemia')
  final String? isAnemia;
  @override
  @JsonKey(name: 'is_other_disease')
  final String? isOtherDisease;
  @override
  final String? note;

  @override
  String toString() {
    return 'CheckupDetailModel(checkupId: $checkupId, checkupDay: $checkupDay, gestationalWeek: $gestationalWeek, gestationalWeekDay: $gestationalWeekDay, weight: $weight, isNormal: $isNormal, isTa: $isTa, isPih: $isPih, isGdm: $isGdm, isAnemia: $isAnemia, isOtherDisease: $isOtherDisease, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckupDetailModel &&
            (identical(other.checkupId, checkupId) ||
                other.checkupId == checkupId) &&
            (identical(other.checkupDay, checkupDay) ||
                other.checkupDay == checkupDay) &&
            (identical(other.gestationalWeek, gestationalWeek) ||
                other.gestationalWeek == gestationalWeek) &&
            (identical(other.gestationalWeekDay, gestationalWeekDay) ||
                other.gestationalWeekDay == gestationalWeekDay) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.isNormal, isNormal) ||
                other.isNormal == isNormal) &&
            (identical(other.isTa, isTa) || other.isTa == isTa) &&
            (identical(other.isPih, isPih) || other.isPih == isPih) &&
            (identical(other.isGdm, isGdm) || other.isGdm == isGdm) &&
            (identical(other.isAnemia, isAnemia) ||
                other.isAnemia == isAnemia) &&
            (identical(other.isOtherDisease, isOtherDisease) ||
                other.isOtherDisease == isOtherDisease) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      checkupId,
      checkupDay,
      gestationalWeek,
      gestationalWeekDay,
      weight,
      isNormal,
      isTa,
      isPih,
      isGdm,
      isAnemia,
      isOtherDisease,
      note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckupDetailModelCopyWith<_$_CheckupDetailModel> get copyWith =>
      __$$_CheckupDetailModelCopyWithImpl<_$_CheckupDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckupDetailModelToJson(
      this,
    );
  }
}

abstract class _CheckupDetailModel implements CheckupDetailModel {
  const factory _CheckupDetailModel(
      {@JsonKey(name: 'mother_checkup_record_id') required final int checkupId,
      @JsonKey(name: 'checkup_day') required final String checkupDay,
      @JsonKey(name: 'gestational_week') final int? gestationalWeek,
      @JsonKey(name: 'gestational_week_day') final int? gestationalWeekDay,
      final double? weight,
      @JsonKey(name: 'is_normal') final String? isNormal,
      @JsonKey(name: 'is_ta') final String? isTa,
      @JsonKey(name: 'is_pih') final String? isPih,
      @JsonKey(name: 'is_gdm') final String? isGdm,
      @JsonKey(name: 'is_anemia') final String? isAnemia,
      @JsonKey(name: 'is_other_disease') final String? isOtherDisease,
      final String? note}) = _$_CheckupDetailModel;

  factory _CheckupDetailModel.fromJson(Map<String, dynamic> json) =
      _$_CheckupDetailModel.fromJson;

  @override
  @JsonKey(name: 'mother_checkup_record_id')
  int get checkupId;
  @override
  @JsonKey(name: 'checkup_day')
  String get checkupDay;
  @override
  @JsonKey(name: 'gestational_week')
  int? get gestationalWeek;
  @override
  @JsonKey(name: 'gestational_week_day')
  int? get gestationalWeekDay;
  @override
  double? get weight;
  @override
  @JsonKey(name: 'is_normal')
  String? get isNormal;
  @override
  @JsonKey(name: 'is_ta')
  String? get isTa;
  @override
  @JsonKey(name: 'is_pih')
  String? get isPih;
  @override
  @JsonKey(name: 'is_gdm')
  String? get isGdm;
  @override
  @JsonKey(name: 'is_anemia')
  String? get isAnemia;
  @override
  @JsonKey(name: 'is_other_disease')
  String? get isOtherDisease;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$_CheckupDetailModelCopyWith<_$_CheckupDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

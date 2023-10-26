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

VaccineListModel _$VaccineListModelFromJson(Map<String, dynamic> json) {
  return _VaccineListModel.fromJson(json);
}

/// @nodoc
mixin _$VaccineListModel {
  List<VaccineDetailModel> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineListModelCopyWith<VaccineListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineListModelCopyWith<$Res> {
  factory $VaccineListModelCopyWith(
          VaccineListModel value, $Res Function(VaccineListModel) then) =
      _$VaccineListModelCopyWithImpl<$Res, VaccineListModel>;
  @useResult
  $Res call({List<VaccineDetailModel> list});
}

/// @nodoc
class _$VaccineListModelCopyWithImpl<$Res, $Val extends VaccineListModel>
    implements $VaccineListModelCopyWith<$Res> {
  _$VaccineListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<VaccineDetailModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineListModelCopyWith<$Res>
    implements $VaccineListModelCopyWith<$Res> {
  factory _$$_VaccineListModelCopyWith(
          _$_VaccineListModel value, $Res Function(_$_VaccineListModel) then) =
      __$$_VaccineListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VaccineDetailModel> list});
}

/// @nodoc
class __$$_VaccineListModelCopyWithImpl<$Res>
    extends _$VaccineListModelCopyWithImpl<$Res, _$_VaccineListModel>
    implements _$$_VaccineListModelCopyWith<$Res> {
  __$$_VaccineListModelCopyWithImpl(
      _$_VaccineListModel _value, $Res Function(_$_VaccineListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_VaccineListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<VaccineDetailModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_VaccineListModel implements _VaccineListModel {
  const _$_VaccineListModel({final List<VaccineDetailModel> list = const []})
      : _list = list;

  factory _$_VaccineListModel.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineListModelFromJson(json);

  final List<VaccineDetailModel> _list;
  @override
  @JsonKey()
  List<VaccineDetailModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'VaccineListModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineListModelCopyWith<_$_VaccineListModel> get copyWith =>
      __$$_VaccineListModelCopyWithImpl<_$_VaccineListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineListModelToJson(
      this,
    );
  }
}

abstract class _VaccineListModel implements VaccineListModel {
  const factory _VaccineListModel({final List<VaccineDetailModel> list}) =
      _$_VaccineListModel;

  factory _VaccineListModel.fromJson(Map<String, dynamic> json) =
      _$_VaccineListModel.fromJson;

  @override
  List<VaccineDetailModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineListModelCopyWith<_$_VaccineListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VaccineDetailModel _$VaccineDetailModelFromJson(Map<String, dynamic> json) {
  return _VaccineDetailModel.fromJson(json);
}

/// @nodoc
mixin _$VaccineDetailModel {
  @JsonKey(name: 'vaccine_type_id')
  int get vaccineId => throw _privateConstructorUsedError; // ワクチンId
  @JsonKey(name: 'vaccine_type_name')
  String get vaccineName => throw _privateConstructorUsedError; // ワクチン名
  @JsonKey(name: 'vaccine_style')
  int get vaccineStyle => throw _privateConstructorUsedError; //
  @JsonKey(name: 'apply_type')
  int get applyType => throw _privateConstructorUsedError; // 0=定期, 1=任意
  @JsonKey(name: 'way_of_apply')
  String get wayOfApply => throw _privateConstructorUsedError; // 経口とか
  @JsonKey(name: 'max_apply_times')
  int get neededTimes => throw _privateConstructorUsedError; // 必要回数
  @JsonKey(name: 'apply_gender')
  int get applyGender => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_types')
  List<VaccineSubTypeModel> get subTypeList =>
      throw _privateConstructorUsedError; // １価とか
  @JsonKey(name: 'status_reserved')
  List<VaccineInoculationModel> get reservedList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'status_applied')
  List<VaccineInoculationModel> get appliedList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineDetailModelCopyWith<VaccineDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineDetailModelCopyWith<$Res> {
  factory $VaccineDetailModelCopyWith(
          VaccineDetailModel value, $Res Function(VaccineDetailModel) then) =
      _$VaccineDetailModelCopyWithImpl<$Res, VaccineDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vaccine_type_id')
          int vaccineId,
      @JsonKey(name: 'vaccine_type_name')
          String vaccineName,
      @JsonKey(name: 'vaccine_style')
          int vaccineStyle,
      @JsonKey(name: 'apply_type')
          int applyType,
      @JsonKey(name: 'way_of_apply')
          String wayOfApply,
      @JsonKey(name: 'max_apply_times')
          int neededTimes,
      @JsonKey(name: 'apply_gender')
          int applyGender,
      @JsonKey(name: 'sub_types')
          List<VaccineSubTypeModel> subTypeList,
      @JsonKey(name: 'status_reserved')
          List<VaccineInoculationModel> reservedList,
      @JsonKey(name: 'status_applied')
          List<VaccineInoculationModel> appliedList});
}

/// @nodoc
class _$VaccineDetailModelCopyWithImpl<$Res, $Val extends VaccineDetailModel>
    implements $VaccineDetailModelCopyWith<$Res> {
  _$VaccineDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineId = null,
    Object? vaccineName = null,
    Object? vaccineStyle = null,
    Object? applyType = null,
    Object? wayOfApply = null,
    Object? neededTimes = null,
    Object? applyGender = null,
    Object? subTypeList = null,
    Object? reservedList = null,
    Object? appliedList = null,
  }) {
    return _then(_value.copyWith(
      vaccineId: null == vaccineId
          ? _value.vaccineId
          : vaccineId // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineName: null == vaccineName
          ? _value.vaccineName
          : vaccineName // ignore: cast_nullable_to_non_nullable
              as String,
      vaccineStyle: null == vaccineStyle
          ? _value.vaccineStyle
          : vaccineStyle // ignore: cast_nullable_to_non_nullable
              as int,
      applyType: null == applyType
          ? _value.applyType
          : applyType // ignore: cast_nullable_to_non_nullable
              as int,
      wayOfApply: null == wayOfApply
          ? _value.wayOfApply
          : wayOfApply // ignore: cast_nullable_to_non_nullable
              as String,
      neededTimes: null == neededTimes
          ? _value.neededTimes
          : neededTimes // ignore: cast_nullable_to_non_nullable
              as int,
      applyGender: null == applyGender
          ? _value.applyGender
          : applyGender // ignore: cast_nullable_to_non_nullable
              as int,
      subTypeList: null == subTypeList
          ? _value.subTypeList
          : subTypeList // ignore: cast_nullable_to_non_nullable
              as List<VaccineSubTypeModel>,
      reservedList: null == reservedList
          ? _value.reservedList
          : reservedList // ignore: cast_nullable_to_non_nullable
              as List<VaccineInoculationModel>,
      appliedList: null == appliedList
          ? _value.appliedList
          : appliedList // ignore: cast_nullable_to_non_nullable
              as List<VaccineInoculationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineDetailModelCopyWith<$Res>
    implements $VaccineDetailModelCopyWith<$Res> {
  factory _$$_VaccineDetailModelCopyWith(_$_VaccineDetailModel value,
          $Res Function(_$_VaccineDetailModel) then) =
      __$$_VaccineDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vaccine_type_id')
          int vaccineId,
      @JsonKey(name: 'vaccine_type_name')
          String vaccineName,
      @JsonKey(name: 'vaccine_style')
          int vaccineStyle,
      @JsonKey(name: 'apply_type')
          int applyType,
      @JsonKey(name: 'way_of_apply')
          String wayOfApply,
      @JsonKey(name: 'max_apply_times')
          int neededTimes,
      @JsonKey(name: 'apply_gender')
          int applyGender,
      @JsonKey(name: 'sub_types')
          List<VaccineSubTypeModel> subTypeList,
      @JsonKey(name: 'status_reserved')
          List<VaccineInoculationModel> reservedList,
      @JsonKey(name: 'status_applied')
          List<VaccineInoculationModel> appliedList});
}

/// @nodoc
class __$$_VaccineDetailModelCopyWithImpl<$Res>
    extends _$VaccineDetailModelCopyWithImpl<$Res, _$_VaccineDetailModel>
    implements _$$_VaccineDetailModelCopyWith<$Res> {
  __$$_VaccineDetailModelCopyWithImpl(
      _$_VaccineDetailModel _value, $Res Function(_$_VaccineDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineId = null,
    Object? vaccineName = null,
    Object? vaccineStyle = null,
    Object? applyType = null,
    Object? wayOfApply = null,
    Object? neededTimes = null,
    Object? applyGender = null,
    Object? subTypeList = null,
    Object? reservedList = null,
    Object? appliedList = null,
  }) {
    return _then(_$_VaccineDetailModel(
      vaccineId: null == vaccineId
          ? _value.vaccineId
          : vaccineId // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineName: null == vaccineName
          ? _value.vaccineName
          : vaccineName // ignore: cast_nullable_to_non_nullable
              as String,
      vaccineStyle: null == vaccineStyle
          ? _value.vaccineStyle
          : vaccineStyle // ignore: cast_nullable_to_non_nullable
              as int,
      applyType: null == applyType
          ? _value.applyType
          : applyType // ignore: cast_nullable_to_non_nullable
              as int,
      wayOfApply: null == wayOfApply
          ? _value.wayOfApply
          : wayOfApply // ignore: cast_nullable_to_non_nullable
              as String,
      neededTimes: null == neededTimes
          ? _value.neededTimes
          : neededTimes // ignore: cast_nullable_to_non_nullable
              as int,
      applyGender: null == applyGender
          ? _value.applyGender
          : applyGender // ignore: cast_nullable_to_non_nullable
              as int,
      subTypeList: null == subTypeList
          ? _value._subTypeList
          : subTypeList // ignore: cast_nullable_to_non_nullable
              as List<VaccineSubTypeModel>,
      reservedList: null == reservedList
          ? _value._reservedList
          : reservedList // ignore: cast_nullable_to_non_nullable
              as List<VaccineInoculationModel>,
      appliedList: null == appliedList
          ? _value._appliedList
          : appliedList // ignore: cast_nullable_to_non_nullable
              as List<VaccineInoculationModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_VaccineDetailModel implements _VaccineDetailModel {
  const _$_VaccineDetailModel(
      {@JsonKey(name: 'vaccine_type_id')
          required this.vaccineId,
      @JsonKey(name: 'vaccine_type_name')
          required this.vaccineName,
      @JsonKey(name: 'vaccine_style')
          required this.vaccineStyle,
      @JsonKey(name: 'apply_type')
          required this.applyType,
      @JsonKey(name: 'way_of_apply')
          required this.wayOfApply,
      @JsonKey(name: 'max_apply_times')
          required this.neededTimes,
      @JsonKey(name: 'apply_gender')
          required this.applyGender,
      @JsonKey(name: 'sub_types')
          required final List<VaccineSubTypeModel> subTypeList,
      @JsonKey(name: 'status_reserved')
          required final List<VaccineInoculationModel> reservedList,
      @JsonKey(name: 'status_applied')
          required final List<VaccineInoculationModel> appliedList})
      : _subTypeList = subTypeList,
        _reservedList = reservedList,
        _appliedList = appliedList;

  factory _$_VaccineDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineDetailModelFromJson(json);

  @override
  @JsonKey(name: 'vaccine_type_id')
  final int vaccineId;
// ワクチンId
  @override
  @JsonKey(name: 'vaccine_type_name')
  final String vaccineName;
// ワクチン名
  @override
  @JsonKey(name: 'vaccine_style')
  final int vaccineStyle;
//
  @override
  @JsonKey(name: 'apply_type')
  final int applyType;
// 0=定期, 1=任意
  @override
  @JsonKey(name: 'way_of_apply')
  final String wayOfApply;
// 経口とか
  @override
  @JsonKey(name: 'max_apply_times')
  final int neededTimes;
// 必要回数
  @override
  @JsonKey(name: 'apply_gender')
  final int applyGender;
  final List<VaccineSubTypeModel> _subTypeList;
  @override
  @JsonKey(name: 'sub_types')
  List<VaccineSubTypeModel> get subTypeList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subTypeList);
  }

// １価とか
  final List<VaccineInoculationModel> _reservedList;
// １価とか
  @override
  @JsonKey(name: 'status_reserved')
  List<VaccineInoculationModel> get reservedList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reservedList);
  }

  final List<VaccineInoculationModel> _appliedList;
  @override
  @JsonKey(name: 'status_applied')
  List<VaccineInoculationModel> get appliedList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliedList);
  }

  @override
  String toString() {
    return 'VaccineDetailModel(vaccineId: $vaccineId, vaccineName: $vaccineName, vaccineStyle: $vaccineStyle, applyType: $applyType, wayOfApply: $wayOfApply, neededTimes: $neededTimes, applyGender: $applyGender, subTypeList: $subTypeList, reservedList: $reservedList, appliedList: $appliedList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineDetailModel &&
            (identical(other.vaccineId, vaccineId) ||
                other.vaccineId == vaccineId) &&
            (identical(other.vaccineName, vaccineName) ||
                other.vaccineName == vaccineName) &&
            (identical(other.vaccineStyle, vaccineStyle) ||
                other.vaccineStyle == vaccineStyle) &&
            (identical(other.applyType, applyType) ||
                other.applyType == applyType) &&
            (identical(other.wayOfApply, wayOfApply) ||
                other.wayOfApply == wayOfApply) &&
            (identical(other.neededTimes, neededTimes) ||
                other.neededTimes == neededTimes) &&
            (identical(other.applyGender, applyGender) ||
                other.applyGender == applyGender) &&
            const DeepCollectionEquality()
                .equals(other._subTypeList, _subTypeList) &&
            const DeepCollectionEquality()
                .equals(other._reservedList, _reservedList) &&
            const DeepCollectionEquality()
                .equals(other._appliedList, _appliedList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vaccineId,
      vaccineName,
      vaccineStyle,
      applyType,
      wayOfApply,
      neededTimes,
      applyGender,
      const DeepCollectionEquality().hash(_subTypeList),
      const DeepCollectionEquality().hash(_reservedList),
      const DeepCollectionEquality().hash(_appliedList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineDetailModelCopyWith<_$_VaccineDetailModel> get copyWith =>
      __$$_VaccineDetailModelCopyWithImpl<_$_VaccineDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineDetailModelToJson(
      this,
    );
  }
}

abstract class _VaccineDetailModel implements VaccineDetailModel {
  const factory _VaccineDetailModel(
          {@JsonKey(name: 'vaccine_type_id')
              required final int vaccineId,
          @JsonKey(name: 'vaccine_type_name')
              required final String vaccineName,
          @JsonKey(name: 'vaccine_style')
              required final int vaccineStyle,
          @JsonKey(name: 'apply_type')
              required final int applyType,
          @JsonKey(name: 'way_of_apply')
              required final String wayOfApply,
          @JsonKey(name: 'max_apply_times')
              required final int neededTimes,
          @JsonKey(name: 'apply_gender')
              required final int applyGender,
          @JsonKey(name: 'sub_types')
              required final List<VaccineSubTypeModel> subTypeList,
          @JsonKey(name: 'status_reserved')
              required final List<VaccineInoculationModel> reservedList,
          @JsonKey(name: 'status_applied')
              required final List<VaccineInoculationModel> appliedList}) =
      _$_VaccineDetailModel;

  factory _VaccineDetailModel.fromJson(Map<String, dynamic> json) =
      _$_VaccineDetailModel.fromJson;

  @override
  @JsonKey(name: 'vaccine_type_id')
  int get vaccineId;
  @override // ワクチンId
  @JsonKey(name: 'vaccine_type_name')
  String get vaccineName;
  @override // ワクチン名
  @JsonKey(name: 'vaccine_style')
  int get vaccineStyle;
  @override //
  @JsonKey(name: 'apply_type')
  int get applyType;
  @override // 0=定期, 1=任意
  @JsonKey(name: 'way_of_apply')
  String get wayOfApply;
  @override // 経口とか
  @JsonKey(name: 'max_apply_times')
  int get neededTimes;
  @override // 必要回数
  @JsonKey(name: 'apply_gender')
  int get applyGender;
  @override
  @JsonKey(name: 'sub_types')
  List<VaccineSubTypeModel> get subTypeList;
  @override // １価とか
  @JsonKey(name: 'status_reserved')
  List<VaccineInoculationModel> get reservedList;
  @override
  @JsonKey(name: 'status_applied')
  List<VaccineInoculationModel> get appliedList;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineDetailModelCopyWith<_$_VaccineDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VaccineSubTypeModel _$VaccineSubTypeModelFromJson(Map<String, dynamic> json) {
  return _VaccineSubTypeModel.fromJson(json);
}

/// @nodoc
mixin _$VaccineSubTypeModel {
  @JsonKey(name: 'vaccine_sub_type_name')
  String get subTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaccine_sub_type_id')
  int get subTypeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineSubTypeModelCopyWith<VaccineSubTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineSubTypeModelCopyWith<$Res> {
  factory $VaccineSubTypeModelCopyWith(
          VaccineSubTypeModel value, $Res Function(VaccineSubTypeModel) then) =
      _$VaccineSubTypeModelCopyWithImpl<$Res, VaccineSubTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vaccine_sub_type_name') String subTypeName,
      @JsonKey(name: 'vaccine_sub_type_id') int subTypeId});
}

/// @nodoc
class _$VaccineSubTypeModelCopyWithImpl<$Res, $Val extends VaccineSubTypeModel>
    implements $VaccineSubTypeModelCopyWith<$Res> {
  _$VaccineSubTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subTypeName = null,
    Object? subTypeId = null,
  }) {
    return _then(_value.copyWith(
      subTypeName: null == subTypeName
          ? _value.subTypeName
          : subTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      subTypeId: null == subTypeId
          ? _value.subTypeId
          : subTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineSubTypeModelCopyWith<$Res>
    implements $VaccineSubTypeModelCopyWith<$Res> {
  factory _$$_VaccineSubTypeModelCopyWith(_$_VaccineSubTypeModel value,
          $Res Function(_$_VaccineSubTypeModel) then) =
      __$$_VaccineSubTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vaccine_sub_type_name') String subTypeName,
      @JsonKey(name: 'vaccine_sub_type_id') int subTypeId});
}

/// @nodoc
class __$$_VaccineSubTypeModelCopyWithImpl<$Res>
    extends _$VaccineSubTypeModelCopyWithImpl<$Res, _$_VaccineSubTypeModel>
    implements _$$_VaccineSubTypeModelCopyWith<$Res> {
  __$$_VaccineSubTypeModelCopyWithImpl(_$_VaccineSubTypeModel _value,
      $Res Function(_$_VaccineSubTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subTypeName = null,
    Object? subTypeId = null,
  }) {
    return _then(_$_VaccineSubTypeModel(
      subTypeName: null == subTypeName
          ? _value.subTypeName
          : subTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      subTypeId: null == subTypeId
          ? _value.subTypeId
          : subTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineSubTypeModel implements _VaccineSubTypeModel {
  const _$_VaccineSubTypeModel(
      {@JsonKey(name: 'vaccine_sub_type_name') required this.subTypeName,
      @JsonKey(name: 'vaccine_sub_type_id') required this.subTypeId});

  factory _$_VaccineSubTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineSubTypeModelFromJson(json);

  @override
  @JsonKey(name: 'vaccine_sub_type_name')
  final String subTypeName;
  @override
  @JsonKey(name: 'vaccine_sub_type_id')
  final int subTypeId;

  @override
  String toString() {
    return 'VaccineSubTypeModel(subTypeName: $subTypeName, subTypeId: $subTypeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineSubTypeModel &&
            (identical(other.subTypeName, subTypeName) ||
                other.subTypeName == subTypeName) &&
            (identical(other.subTypeId, subTypeId) ||
                other.subTypeId == subTypeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subTypeName, subTypeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineSubTypeModelCopyWith<_$_VaccineSubTypeModel> get copyWith =>
      __$$_VaccineSubTypeModelCopyWithImpl<_$_VaccineSubTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineSubTypeModelToJson(
      this,
    );
  }
}

abstract class _VaccineSubTypeModel implements VaccineSubTypeModel {
  const factory _VaccineSubTypeModel(
      {@JsonKey(name: 'vaccine_sub_type_name')
          required final String subTypeName,
      @JsonKey(name: 'vaccine_sub_type_id')
          required final int subTypeId}) = _$_VaccineSubTypeModel;

  factory _VaccineSubTypeModel.fromJson(Map<String, dynamic> json) =
      _$_VaccineSubTypeModel.fromJson;

  @override
  @JsonKey(name: 'vaccine_sub_type_name')
  String get subTypeName;
  @override
  @JsonKey(name: 'vaccine_sub_type_id')
  int get subTypeId;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineSubTypeModelCopyWith<_$_VaccineSubTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VaccineInoculationModel _$VaccineInoculationModelFromJson(
    Map<String, dynamic> json) {
  return _VaccineInoculationModel.fromJson(json);
}

/// @nodoc
mixin _$VaccineInoculationModel {
  @JsonKey(name: 'vaccine_sub_type_id')
  int? get vaccineSubTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'what_time')
  int get whatTime => throw _privateConstructorUsedError; // x回目
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError; // "Y" or "R"
  @DateTimeConverter()
  @JsonKey(name: 'set_at')
  DateTime? get setAt =>
      throw _privateConstructorUsedError; // "2022-11-10 00:00:00"
  @JsonKey(name: 'vaccine_status_id')
  int? get statusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'what_time_string')
  String? get whatTimeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineInoculationModelCopyWith<VaccineInoculationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineInoculationModelCopyWith<$Res> {
  factory $VaccineInoculationModelCopyWith(VaccineInoculationModel value,
          $Res Function(VaccineInoculationModel) then) =
      _$VaccineInoculationModelCopyWithImpl<$Res, VaccineInoculationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vaccine_sub_type_id') int? vaccineSubTypeId,
      @JsonKey(name: 'what_time') int whatTime,
      @JsonKey(name: 'status') String status,
      @DateTimeConverter() @JsonKey(name: 'set_at') DateTime? setAt,
      @JsonKey(name: 'vaccine_status_id') int? statusId,
      @JsonKey(name: 'what_time_string') String? whatTimeName});
}

/// @nodoc
class _$VaccineInoculationModelCopyWithImpl<$Res,
        $Val extends VaccineInoculationModel>
    implements $VaccineInoculationModelCopyWith<$Res> {
  _$VaccineInoculationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineSubTypeId = freezed,
    Object? whatTime = null,
    Object? status = null,
    Object? setAt = freezed,
    Object? statusId = freezed,
    Object? whatTimeName = freezed,
  }) {
    return _then(_value.copyWith(
      vaccineSubTypeId: freezed == vaccineSubTypeId
          ? _value.vaccineSubTypeId
          : vaccineSubTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      whatTime: null == whatTime
          ? _value.whatTime
          : whatTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      setAt: freezed == setAt
          ? _value.setAt
          : setAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusId: freezed == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int?,
      whatTimeName: freezed == whatTimeName
          ? _value.whatTimeName
          : whatTimeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineInoculationModelCopyWith<$Res>
    implements $VaccineInoculationModelCopyWith<$Res> {
  factory _$$_VaccineInoculationModelCopyWith(_$_VaccineInoculationModel value,
          $Res Function(_$_VaccineInoculationModel) then) =
      __$$_VaccineInoculationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vaccine_sub_type_id') int? vaccineSubTypeId,
      @JsonKey(name: 'what_time') int whatTime,
      @JsonKey(name: 'status') String status,
      @DateTimeConverter() @JsonKey(name: 'set_at') DateTime? setAt,
      @JsonKey(name: 'vaccine_status_id') int? statusId,
      @JsonKey(name: 'what_time_string') String? whatTimeName});
}

/// @nodoc
class __$$_VaccineInoculationModelCopyWithImpl<$Res>
    extends _$VaccineInoculationModelCopyWithImpl<$Res,
        _$_VaccineInoculationModel>
    implements _$$_VaccineInoculationModelCopyWith<$Res> {
  __$$_VaccineInoculationModelCopyWithImpl(_$_VaccineInoculationModel _value,
      $Res Function(_$_VaccineInoculationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineSubTypeId = freezed,
    Object? whatTime = null,
    Object? status = null,
    Object? setAt = freezed,
    Object? statusId = freezed,
    Object? whatTimeName = freezed,
  }) {
    return _then(_$_VaccineInoculationModel(
      vaccineSubTypeId: freezed == vaccineSubTypeId
          ? _value.vaccineSubTypeId
          : vaccineSubTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      whatTime: null == whatTime
          ? _value.whatTime
          : whatTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      setAt: freezed == setAt
          ? _value.setAt
          : setAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      statusId: freezed == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int?,
      whatTimeName: freezed == whatTimeName
          ? _value.whatTimeName
          : whatTimeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineInoculationModel implements _VaccineInoculationModel {
  const _$_VaccineInoculationModel(
      {@JsonKey(name: 'vaccine_sub_type_id') required this.vaccineSubTypeId,
      @JsonKey(name: 'what_time') required this.whatTime,
      @JsonKey(name: 'status') required this.status,
      @DateTimeConverter() @JsonKey(name: 'set_at') required this.setAt,
      @JsonKey(name: 'vaccine_status_id') required this.statusId,
      @JsonKey(name: 'what_time_string') required this.whatTimeName});

  factory _$_VaccineInoculationModel.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineInoculationModelFromJson(json);

  @override
  @JsonKey(name: 'vaccine_sub_type_id')
  final int? vaccineSubTypeId;
  @override
  @JsonKey(name: 'what_time')
  final int whatTime;
// x回目
  @override
  @JsonKey(name: 'status')
  final String status;
// "Y" or "R"
  @override
  @DateTimeConverter()
  @JsonKey(name: 'set_at')
  final DateTime? setAt;
// "2022-11-10 00:00:00"
  @override
  @JsonKey(name: 'vaccine_status_id')
  final int? statusId;
  @override
  @JsonKey(name: 'what_time_string')
  final String? whatTimeName;

  @override
  String toString() {
    return 'VaccineInoculationModel(vaccineSubTypeId: $vaccineSubTypeId, whatTime: $whatTime, status: $status, setAt: $setAt, statusId: $statusId, whatTimeName: $whatTimeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineInoculationModel &&
            (identical(other.vaccineSubTypeId, vaccineSubTypeId) ||
                other.vaccineSubTypeId == vaccineSubTypeId) &&
            (identical(other.whatTime, whatTime) ||
                other.whatTime == whatTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.setAt, setAt) || other.setAt == setAt) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.whatTimeName, whatTimeName) ||
                other.whatTimeName == whatTimeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vaccineSubTypeId, whatTime,
      status, setAt, statusId, whatTimeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineInoculationModelCopyWith<_$_VaccineInoculationModel>
      get copyWith =>
          __$$_VaccineInoculationModelCopyWithImpl<_$_VaccineInoculationModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineInoculationModelToJson(
      this,
    );
  }
}

abstract class _VaccineInoculationModel implements VaccineInoculationModel {
  const factory _VaccineInoculationModel(
      {@JsonKey(name: 'vaccine_sub_type_id')
          required final int? vaccineSubTypeId,
      @JsonKey(name: 'what_time')
          required final int whatTime,
      @JsonKey(name: 'status')
          required final String status,
      @DateTimeConverter()
      @JsonKey(name: 'set_at')
          required final DateTime? setAt,
      @JsonKey(name: 'vaccine_status_id')
          required final int? statusId,
      @JsonKey(name: 'what_time_string')
          required final String? whatTimeName}) = _$_VaccineInoculationModel;

  factory _VaccineInoculationModel.fromJson(Map<String, dynamic> json) =
      _$_VaccineInoculationModel.fromJson;

  @override
  @JsonKey(name: 'vaccine_sub_type_id')
  int? get vaccineSubTypeId;
  @override
  @JsonKey(name: 'what_time')
  int get whatTime;
  @override // x回目
  @JsonKey(name: 'status')
  String get status;
  @override // "Y" or "R"
  @DateTimeConverter()
  @JsonKey(name: 'set_at')
  DateTime? get setAt;
  @override // "2022-11-10 00:00:00"
  @JsonKey(name: 'vaccine_status_id')
  int? get statusId;
  @override
  @JsonKey(name: 'what_time_string')
  String? get whatTimeName;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineInoculationModelCopyWith<_$_VaccineInoculationModel>
      get copyWith => throw _privateConstructorUsedError;
}

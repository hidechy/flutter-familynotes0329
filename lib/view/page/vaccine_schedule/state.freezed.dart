// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VaccineDetailData {
  VaccineScheduleType get type => throw _privateConstructorUsedError; //定期・任意
  String get dosingType => throw _privateConstructorUsedError; // 経口・注射・生
  String get vaccineName => throw _privateConstructorUsedError; // ワクチン名
  int get neededTimes => throw _privateConstructorUsedError; // 必要回数
  List<VaccineInoculationDate> get reservedList =>
      throw _privateConstructorUsedError; // 期間 and 予定o
  List<VaccineInoculationDate> get appliedList =>
      throw _privateConstructorUsedError; // 期間 and 実績
  Map<String, String> get selectItemList =>
      throw _privateConstructorUsedError; // 種類リスト（key=ワクチンサブタイプId,val=name）
  int get vaccineTypeId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VaccineDetailDataCopyWith<VaccineDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineDetailDataCopyWith<$Res> {
  factory $VaccineDetailDataCopyWith(
          VaccineDetailData value, $Res Function(VaccineDetailData) then) =
      _$VaccineDetailDataCopyWithImpl<$Res, VaccineDetailData>;
  @useResult
  $Res call(
      {VaccineScheduleType type,
      String dosingType,
      String vaccineName,
      int neededTimes,
      List<VaccineInoculationDate> reservedList,
      List<VaccineInoculationDate> appliedList,
      Map<String, String> selectItemList,
      int vaccineTypeId});
}

/// @nodoc
class _$VaccineDetailDataCopyWithImpl<$Res, $Val extends VaccineDetailData>
    implements $VaccineDetailDataCopyWith<$Res> {
  _$VaccineDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dosingType = null,
    Object? vaccineName = null,
    Object? neededTimes = null,
    Object? reservedList = null,
    Object? appliedList = null,
    Object? selectItemList = null,
    Object? vaccineTypeId = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VaccineScheduleType,
      dosingType: null == dosingType
          ? _value.dosingType
          : dosingType // ignore: cast_nullable_to_non_nullable
              as String,
      vaccineName: null == vaccineName
          ? _value.vaccineName
          : vaccineName // ignore: cast_nullable_to_non_nullable
              as String,
      neededTimes: null == neededTimes
          ? _value.neededTimes
          : neededTimes // ignore: cast_nullable_to_non_nullable
              as int,
      reservedList: null == reservedList
          ? _value.reservedList
          : reservedList // ignore: cast_nullable_to_non_nullable
              as List<VaccineInoculationDate>,
      appliedList: null == appliedList
          ? _value.appliedList
          : appliedList // ignore: cast_nullable_to_non_nullable
              as List<VaccineInoculationDate>,
      selectItemList: null == selectItemList
          ? _value.selectItemList
          : selectItemList // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      vaccineTypeId: null == vaccineTypeId
          ? _value.vaccineTypeId
          : vaccineTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineDetailDataCopyWith<$Res>
    implements $VaccineDetailDataCopyWith<$Res> {
  factory _$$_VaccineDetailDataCopyWith(_$_VaccineDetailData value,
          $Res Function(_$_VaccineDetailData) then) =
      __$$_VaccineDetailDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VaccineScheduleType type,
      String dosingType,
      String vaccineName,
      int neededTimes,
      List<VaccineInoculationDate> reservedList,
      List<VaccineInoculationDate> appliedList,
      Map<String, String> selectItemList,
      int vaccineTypeId});
}

/// @nodoc
class __$$_VaccineDetailDataCopyWithImpl<$Res>
    extends _$VaccineDetailDataCopyWithImpl<$Res, _$_VaccineDetailData>
    implements _$$_VaccineDetailDataCopyWith<$Res> {
  __$$_VaccineDetailDataCopyWithImpl(
      _$_VaccineDetailData _value, $Res Function(_$_VaccineDetailData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? dosingType = null,
    Object? vaccineName = null,
    Object? neededTimes = null,
    Object? reservedList = null,
    Object? appliedList = null,
    Object? selectItemList = null,
    Object? vaccineTypeId = null,
  }) {
    return _then(_$_VaccineDetailData(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VaccineScheduleType,
      dosingType: null == dosingType
          ? _value.dosingType
          : dosingType // ignore: cast_nullable_to_non_nullable
              as String,
      vaccineName: null == vaccineName
          ? _value.vaccineName
          : vaccineName // ignore: cast_nullable_to_non_nullable
              as String,
      neededTimes: null == neededTimes
          ? _value.neededTimes
          : neededTimes // ignore: cast_nullable_to_non_nullable
              as int,
      reservedList: null == reservedList
          ? _value._reservedList
          : reservedList // ignore: cast_nullable_to_non_nullable
              as List<VaccineInoculationDate>,
      appliedList: null == appliedList
          ? _value._appliedList
          : appliedList // ignore: cast_nullable_to_non_nullable
              as List<VaccineInoculationDate>,
      selectItemList: null == selectItemList
          ? _value._selectItemList
          : selectItemList // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      vaccineTypeId: null == vaccineTypeId
          ? _value.vaccineTypeId
          : vaccineTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_VaccineDetailData
    with DiagnosticableTreeMixin
    implements _VaccineDetailData {
  _$_VaccineDetailData(
      {this.type = VaccineScheduleType.regular,
      this.dosingType = '',
      this.vaccineName = '',
      this.neededTimes = 1,
      final List<VaccineInoculationDate> reservedList =
          const <VaccineInoculationDate>[],
      final List<VaccineInoculationDate> appliedList =
          const <VaccineInoculationDate>[],
      final Map<String, String> selectItemList = const {},
      this.vaccineTypeId = 0})
      : _reservedList = reservedList,
        _appliedList = appliedList,
        _selectItemList = selectItemList;

  @override
  @JsonKey()
  final VaccineScheduleType type;
//定期・任意
  @override
  @JsonKey()
  final String dosingType;
// 経口・注射・生
  @override
  @JsonKey()
  final String vaccineName;
// ワクチン名
  @override
  @JsonKey()
  final int neededTimes;
// 必要回数
  final List<VaccineInoculationDate> _reservedList;
// 必要回数
  @override
  @JsonKey()
  List<VaccineInoculationDate> get reservedList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reservedList);
  }

// 期間 and 予定o
  final List<VaccineInoculationDate> _appliedList;
// 期間 and 予定o
  @override
  @JsonKey()
  List<VaccineInoculationDate> get appliedList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliedList);
  }

// 期間 and 実績
  final Map<String, String> _selectItemList;
// 期間 and 実績
  @override
  @JsonKey()
  Map<String, String> get selectItemList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectItemList);
  }

// 種類リスト（key=ワクチンサブタイプId,val=name）
  @override
  @JsonKey()
  final int vaccineTypeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VaccineDetailData(type: $type, dosingType: $dosingType, vaccineName: $vaccineName, neededTimes: $neededTimes, reservedList: $reservedList, appliedList: $appliedList, selectItemList: $selectItemList, vaccineTypeId: $vaccineTypeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VaccineDetailData'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('dosingType', dosingType))
      ..add(DiagnosticsProperty('vaccineName', vaccineName))
      ..add(DiagnosticsProperty('neededTimes', neededTimes))
      ..add(DiagnosticsProperty('reservedList', reservedList))
      ..add(DiagnosticsProperty('appliedList', appliedList))
      ..add(DiagnosticsProperty('selectItemList', selectItemList))
      ..add(DiagnosticsProperty('vaccineTypeId', vaccineTypeId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineDetailData &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dosingType, dosingType) ||
                other.dosingType == dosingType) &&
            (identical(other.vaccineName, vaccineName) ||
                other.vaccineName == vaccineName) &&
            (identical(other.neededTimes, neededTimes) ||
                other.neededTimes == neededTimes) &&
            const DeepCollectionEquality()
                .equals(other._reservedList, _reservedList) &&
            const DeepCollectionEquality()
                .equals(other._appliedList, _appliedList) &&
            const DeepCollectionEquality()
                .equals(other._selectItemList, _selectItemList) &&
            (identical(other.vaccineTypeId, vaccineTypeId) ||
                other.vaccineTypeId == vaccineTypeId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      dosingType,
      vaccineName,
      neededTimes,
      const DeepCollectionEquality().hash(_reservedList),
      const DeepCollectionEquality().hash(_appliedList),
      const DeepCollectionEquality().hash(_selectItemList),
      vaccineTypeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineDetailDataCopyWith<_$_VaccineDetailData> get copyWith =>
      __$$_VaccineDetailDataCopyWithImpl<_$_VaccineDetailData>(
          this, _$identity);
}

abstract class _VaccineDetailData implements VaccineDetailData {
  factory _VaccineDetailData(
      {final VaccineScheduleType type,
      final String dosingType,
      final String vaccineName,
      final int neededTimes,
      final List<VaccineInoculationDate> reservedList,
      final List<VaccineInoculationDate> appliedList,
      final Map<String, String> selectItemList,
      final int vaccineTypeId}) = _$_VaccineDetailData;

  @override
  VaccineScheduleType get type;
  @override //定期・任意
  String get dosingType;
  @override // 経口・注射・生
  String get vaccineName;
  @override // ワクチン名
  int get neededTimes;
  @override // 必要回数
  List<VaccineInoculationDate> get reservedList;
  @override // 期間 and 予定o
  List<VaccineInoculationDate> get appliedList;
  @override // 期間 and 実績
  Map<String, String> get selectItemList;
  @override // 種類リスト（key=ワクチンサブタイプId,val=name）
  int get vaccineTypeId;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineDetailDataCopyWith<_$_VaccineDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VaccineInoculationDate {
  String? get validityStartDate =>
      throw _privateConstructorUsedError; // 有効期間開始日
  String? get validityEndDate => throw _privateConstructorUsedError; // 有効期間終了日
  String? get settingDate => throw _privateConstructorUsedError; // 設定日
  StatusType? get statusType =>
      throw _privateConstructorUsedError; // 実績=Y(Yes), 予定=R(Reserved)
  String? get selectItem =>
      throw _privateConstructorUsedError; // 種類（pullDown select item）
  String? get numberName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VaccineInoculationDateCopyWith<VaccineInoculationDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineInoculationDateCopyWith<$Res> {
  factory $VaccineInoculationDateCopyWith(VaccineInoculationDate value,
          $Res Function(VaccineInoculationDate) then) =
      _$VaccineInoculationDateCopyWithImpl<$Res, VaccineInoculationDate>;
  @useResult
  $Res call(
      {String? validityStartDate,
      String? validityEndDate,
      String? settingDate,
      StatusType? statusType,
      String? selectItem,
      String? numberName});
}

/// @nodoc
class _$VaccineInoculationDateCopyWithImpl<$Res,
        $Val extends VaccineInoculationDate>
    implements $VaccineInoculationDateCopyWith<$Res> {
  _$VaccineInoculationDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validityStartDate = freezed,
    Object? validityEndDate = freezed,
    Object? settingDate = freezed,
    Object? statusType = freezed,
    Object? selectItem = freezed,
    Object? numberName = freezed,
  }) {
    return _then(_value.copyWith(
      validityStartDate: freezed == validityStartDate
          ? _value.validityStartDate
          : validityStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      validityEndDate: freezed == validityEndDate
          ? _value.validityEndDate
          : validityEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      settingDate: freezed == settingDate
          ? _value.settingDate
          : settingDate // ignore: cast_nullable_to_non_nullable
              as String?,
      statusType: freezed == statusType
          ? _value.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as StatusType?,
      selectItem: freezed == selectItem
          ? _value.selectItem
          : selectItem // ignore: cast_nullable_to_non_nullable
              as String?,
      numberName: freezed == numberName
          ? _value.numberName
          : numberName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineInoculationDateCopyWith<$Res>
    implements $VaccineInoculationDateCopyWith<$Res> {
  factory _$$_VaccineInoculationDateCopyWith(_$_VaccineInoculationDate value,
          $Res Function(_$_VaccineInoculationDate) then) =
      __$$_VaccineInoculationDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? validityStartDate,
      String? validityEndDate,
      String? settingDate,
      StatusType? statusType,
      String? selectItem,
      String? numberName});
}

/// @nodoc
class __$$_VaccineInoculationDateCopyWithImpl<$Res>
    extends _$VaccineInoculationDateCopyWithImpl<$Res,
        _$_VaccineInoculationDate>
    implements _$$_VaccineInoculationDateCopyWith<$Res> {
  __$$_VaccineInoculationDateCopyWithImpl(_$_VaccineInoculationDate _value,
      $Res Function(_$_VaccineInoculationDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validityStartDate = freezed,
    Object? validityEndDate = freezed,
    Object? settingDate = freezed,
    Object? statusType = freezed,
    Object? selectItem = freezed,
    Object? numberName = freezed,
  }) {
    return _then(_$_VaccineInoculationDate(
      validityStartDate: freezed == validityStartDate
          ? _value.validityStartDate
          : validityStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      validityEndDate: freezed == validityEndDate
          ? _value.validityEndDate
          : validityEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      settingDate: freezed == settingDate
          ? _value.settingDate
          : settingDate // ignore: cast_nullable_to_non_nullable
              as String?,
      statusType: freezed == statusType
          ? _value.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as StatusType?,
      selectItem: freezed == selectItem
          ? _value.selectItem
          : selectItem // ignore: cast_nullable_to_non_nullable
              as String?,
      numberName: freezed == numberName
          ? _value.numberName
          : numberName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_VaccineInoculationDate
    with DiagnosticableTreeMixin
    implements _VaccineInoculationDate {
  _$_VaccineInoculationDate(
      {this.validityStartDate,
      this.validityEndDate,
      this.settingDate,
      this.statusType,
      this.selectItem,
      this.numberName});

  @override
  final String? validityStartDate;
// 有効期間開始日
  @override
  final String? validityEndDate;
// 有効期間終了日
  @override
  final String? settingDate;
// 設定日
  @override
  final StatusType? statusType;
// 実績=Y(Yes), 予定=R(Reserved)
  @override
  final String? selectItem;
// 種類（pullDown select item）
  @override
  final String? numberName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VaccineInoculationDate(validityStartDate: $validityStartDate, validityEndDate: $validityEndDate, settingDate: $settingDate, statusType: $statusType, selectItem: $selectItem, numberName: $numberName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VaccineInoculationDate'))
      ..add(DiagnosticsProperty('validityStartDate', validityStartDate))
      ..add(DiagnosticsProperty('validityEndDate', validityEndDate))
      ..add(DiagnosticsProperty('settingDate', settingDate))
      ..add(DiagnosticsProperty('statusType', statusType))
      ..add(DiagnosticsProperty('selectItem', selectItem))
      ..add(DiagnosticsProperty('numberName', numberName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineInoculationDate &&
            (identical(other.validityStartDate, validityStartDate) ||
                other.validityStartDate == validityStartDate) &&
            (identical(other.validityEndDate, validityEndDate) ||
                other.validityEndDate == validityEndDate) &&
            (identical(other.settingDate, settingDate) ||
                other.settingDate == settingDate) &&
            (identical(other.statusType, statusType) ||
                other.statusType == statusType) &&
            (identical(other.selectItem, selectItem) ||
                other.selectItem == selectItem) &&
            (identical(other.numberName, numberName) ||
                other.numberName == numberName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validityStartDate,
      validityEndDate, settingDate, statusType, selectItem, numberName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineInoculationDateCopyWith<_$_VaccineInoculationDate> get copyWith =>
      __$$_VaccineInoculationDateCopyWithImpl<_$_VaccineInoculationDate>(
          this, _$identity);
}

abstract class _VaccineInoculationDate implements VaccineInoculationDate {
  factory _VaccineInoculationDate(
      {final String? validityStartDate,
      final String? validityEndDate,
      final String? settingDate,
      final StatusType? statusType,
      final String? selectItem,
      final String? numberName}) = _$_VaccineInoculationDate;

  @override
  String? get validityStartDate;
  @override // 有効期間開始日
  String? get validityEndDate;
  @override // 有効期間終了日
  String? get settingDate;
  @override // 設定日
  StatusType? get statusType;
  @override // 実績=Y(Yes), 予定=R(Reserved)
  String? get selectItem;
  @override // 種類（pullDown select item）
  String? get numberName;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineInoculationDateCopyWith<_$_VaccineInoculationDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VaccineDetailDataState {
  bool get acquiring => throw _privateConstructorUsedError; // 現在表示タブのポジション
  int get tabItemPosition => throw _privateConstructorUsedError; // 接種リストの総数
  int get vaccineListCount =>
      throw _privateConstructorUsedError; // 予定も履歴も、結局は全接種
  List<VaccineDetailData> get validityDataList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VaccineDetailDataStateCopyWith<VaccineDetailDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineDetailDataStateCopyWith<$Res> {
  factory $VaccineDetailDataStateCopyWith(VaccineDetailDataState value,
          $Res Function(VaccineDetailDataState) then) =
      _$VaccineDetailDataStateCopyWithImpl<$Res, VaccineDetailDataState>;
  @useResult
  $Res call(
      {bool acquiring,
      int tabItemPosition,
      int vaccineListCount,
      List<VaccineDetailData> validityDataList});
}

/// @nodoc
class _$VaccineDetailDataStateCopyWithImpl<$Res,
        $Val extends VaccineDetailDataState>
    implements $VaccineDetailDataStateCopyWith<$Res> {
  _$VaccineDetailDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acquiring = null,
    Object? tabItemPosition = null,
    Object? vaccineListCount = null,
    Object? validityDataList = null,
  }) {
    return _then(_value.copyWith(
      acquiring: null == acquiring
          ? _value.acquiring
          : acquiring // ignore: cast_nullable_to_non_nullable
              as bool,
      tabItemPosition: null == tabItemPosition
          ? _value.tabItemPosition
          : tabItemPosition // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineListCount: null == vaccineListCount
          ? _value.vaccineListCount
          : vaccineListCount // ignore: cast_nullable_to_non_nullable
              as int,
      validityDataList: null == validityDataList
          ? _value.validityDataList
          : validityDataList // ignore: cast_nullable_to_non_nullable
              as List<VaccineDetailData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineDetailDataStateCopyWith<$Res>
    implements $VaccineDetailDataStateCopyWith<$Res> {
  factory _$$_VaccineDetailDataStateCopyWith(_$_VaccineDetailDataState value,
          $Res Function(_$_VaccineDetailDataState) then) =
      __$$_VaccineDetailDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool acquiring,
      int tabItemPosition,
      int vaccineListCount,
      List<VaccineDetailData> validityDataList});
}

/// @nodoc
class __$$_VaccineDetailDataStateCopyWithImpl<$Res>
    extends _$VaccineDetailDataStateCopyWithImpl<$Res,
        _$_VaccineDetailDataState>
    implements _$$_VaccineDetailDataStateCopyWith<$Res> {
  __$$_VaccineDetailDataStateCopyWithImpl(_$_VaccineDetailDataState _value,
      $Res Function(_$_VaccineDetailDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acquiring = null,
    Object? tabItemPosition = null,
    Object? vaccineListCount = null,
    Object? validityDataList = null,
  }) {
    return _then(_$_VaccineDetailDataState(
      acquiring: null == acquiring
          ? _value.acquiring
          : acquiring // ignore: cast_nullable_to_non_nullable
              as bool,
      tabItemPosition: null == tabItemPosition
          ? _value.tabItemPosition
          : tabItemPosition // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineListCount: null == vaccineListCount
          ? _value.vaccineListCount
          : vaccineListCount // ignore: cast_nullable_to_non_nullable
              as int,
      validityDataList: null == validityDataList
          ? _value._validityDataList
          : validityDataList // ignore: cast_nullable_to_non_nullable
              as List<VaccineDetailData>,
    ));
  }
}

/// @nodoc

class _$_VaccineDetailDataState extends _VaccineDetailDataState
    with DiagnosticableTreeMixin {
  _$_VaccineDetailDataState(
      {this.acquiring = false,
      this.tabItemPosition = 0,
      this.vaccineListCount = 0,
      final List<VaccineDetailData> validityDataList =
          const <VaccineDetailData>[]})
      : _validityDataList = validityDataList,
        super._();

  @override
  @JsonKey()
  final bool acquiring;
// 現在表示タブのポジション
  @override
  @JsonKey()
  final int tabItemPosition;
// 接種リストの総数
  @override
  @JsonKey()
  final int vaccineListCount;
// 予定も履歴も、結局は全接種
  final List<VaccineDetailData> _validityDataList;
// 予定も履歴も、結局は全接種
  @override
  @JsonKey()
  List<VaccineDetailData> get validityDataList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validityDataList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VaccineDetailDataState(acquiring: $acquiring, tabItemPosition: $tabItemPosition, vaccineListCount: $vaccineListCount, validityDataList: $validityDataList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VaccineDetailDataState'))
      ..add(DiagnosticsProperty('acquiring', acquiring))
      ..add(DiagnosticsProperty('tabItemPosition', tabItemPosition))
      ..add(DiagnosticsProperty('vaccineListCount', vaccineListCount))
      ..add(DiagnosticsProperty('validityDataList', validityDataList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineDetailDataState &&
            (identical(other.acquiring, acquiring) ||
                other.acquiring == acquiring) &&
            (identical(other.tabItemPosition, tabItemPosition) ||
                other.tabItemPosition == tabItemPosition) &&
            (identical(other.vaccineListCount, vaccineListCount) ||
                other.vaccineListCount == vaccineListCount) &&
            const DeepCollectionEquality()
                .equals(other._validityDataList, _validityDataList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, acquiring, tabItemPosition,
      vaccineListCount, const DeepCollectionEquality().hash(_validityDataList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineDetailDataStateCopyWith<_$_VaccineDetailDataState> get copyWith =>
      __$$_VaccineDetailDataStateCopyWithImpl<_$_VaccineDetailDataState>(
          this, _$identity);
}

abstract class _VaccineDetailDataState extends VaccineDetailDataState {
  factory _VaccineDetailDataState(
          {final bool acquiring,
          final int tabItemPosition,
          final int vaccineListCount,
          final List<VaccineDetailData> validityDataList}) =
      _$_VaccineDetailDataState;
  _VaccineDetailDataState._() : super._();

  @override
  bool get acquiring;
  @override // 現在表示タブのポジション
  int get tabItemPosition;
  @override // 接種リストの総数
  int get vaccineListCount;
  @override // 予定も履歴も、結局は全接種
  List<VaccineDetailData> get validityDataList;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineDetailDataStateCopyWith<_$_VaccineDetailDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

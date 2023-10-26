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

ChildGrowthRecordListModel _$ChildGrowthRecordListModelFromJson(
    Map<String, dynamic> json) {
  return _ChildChildGrowthRecordListModel.fromJson(json);
}

/// @nodoc
mixin _$ChildGrowthRecordListModel {
  List<ChildGrowthRecord> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildGrowthRecordListModelCopyWith<ChildGrowthRecordListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildGrowthRecordListModelCopyWith<$Res> {
  factory $ChildGrowthRecordListModelCopyWith(ChildGrowthRecordListModel value,
          $Res Function(ChildGrowthRecordListModel) then) =
      _$ChildGrowthRecordListModelCopyWithImpl<$Res,
          ChildGrowthRecordListModel>;
  @useResult
  $Res call({List<ChildGrowthRecord> list});
}

/// @nodoc
class _$ChildGrowthRecordListModelCopyWithImpl<$Res,
        $Val extends ChildGrowthRecordListModel>
    implements $ChildGrowthRecordListModelCopyWith<$Res> {
  _$ChildGrowthRecordListModelCopyWithImpl(this._value, this._then);

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
              as List<ChildGrowthRecord>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildChildGrowthRecordListModelCopyWith<$Res>
    implements $ChildGrowthRecordListModelCopyWith<$Res> {
  factory _$$_ChildChildGrowthRecordListModelCopyWith(
          _$_ChildChildGrowthRecordListModel value,
          $Res Function(_$_ChildChildGrowthRecordListModel) then) =
      __$$_ChildChildGrowthRecordListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChildGrowthRecord> list});
}

/// @nodoc
class __$$_ChildChildGrowthRecordListModelCopyWithImpl<$Res>
    extends _$ChildGrowthRecordListModelCopyWithImpl<$Res,
        _$_ChildChildGrowthRecordListModel>
    implements _$$_ChildChildGrowthRecordListModelCopyWith<$Res> {
  __$$_ChildChildGrowthRecordListModelCopyWithImpl(
      _$_ChildChildGrowthRecordListModel _value,
      $Res Function(_$_ChildChildGrowthRecordListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_ChildChildGrowthRecordListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ChildGrowthRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildChildGrowthRecordListModel
    implements _ChildChildGrowthRecordListModel {
  const _$_ChildChildGrowthRecordListModel(
      {required final List<ChildGrowthRecord> list})
      : _list = list;

  factory _$_ChildChildGrowthRecordListModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ChildChildGrowthRecordListModelFromJson(json);

  final List<ChildGrowthRecord> _list;
  @override
  List<ChildGrowthRecord> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ChildGrowthRecordListModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildChildGrowthRecordListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildChildGrowthRecordListModelCopyWith<
          _$_ChildChildGrowthRecordListModel>
      get copyWith => __$$_ChildChildGrowthRecordListModelCopyWithImpl<
          _$_ChildChildGrowthRecordListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildChildGrowthRecordListModelToJson(
      this,
    );
  }
}

abstract class _ChildChildGrowthRecordListModel
    implements ChildGrowthRecordListModel {
  const factory _ChildChildGrowthRecordListModel(
          {required final List<ChildGrowthRecord> list}) =
      _$_ChildChildGrowthRecordListModel;

  factory _ChildChildGrowthRecordListModel.fromJson(Map<String, dynamic> json) =
      _$_ChildChildGrowthRecordListModel.fromJson;

  @override
  List<ChildGrowthRecord> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ChildChildGrowthRecordListModelCopyWith<
          _$_ChildChildGrowthRecordListModel>
      get copyWith => throw _privateConstructorUsedError;
}

ChildGrowthRecord _$ChildGrowthRecordFromJson(Map<String, dynamic> json) {
  return _ChildChildGrowthRecord.fromJson(json);
}

/// @nodoc
mixin _$ChildGrowthRecord {
  @JsonKey(name: 'child_body_record_id')
  int get recordId => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'measurement_date')
  DateTime get date => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_measurement')
  double? get head => throw _privateConstructorUsedError;
  @JsonKey(name: 'chest_measurement')
  double? get chest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildGrowthRecordCopyWith<ChildGrowthRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildGrowthRecordCopyWith<$Res> {
  factory $ChildGrowthRecordCopyWith(
          ChildGrowthRecord value, $Res Function(ChildGrowthRecord) then) =
      _$ChildGrowthRecordCopyWithImpl<$Res, ChildGrowthRecord>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_body_record_id') int recordId,
      @DateTimeConverter() @JsonKey(name: 'measurement_date') DateTime date,
      double? height,
      int? weight,
      @JsonKey(name: 'head_measurement') double? head,
      @JsonKey(name: 'chest_measurement') double? chest});
}

/// @nodoc
class _$ChildGrowthRecordCopyWithImpl<$Res, $Val extends ChildGrowthRecord>
    implements $ChildGrowthRecordCopyWith<$Res> {
  _$ChildGrowthRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = null,
    Object? date = null,
    Object? height = freezed,
    Object? weight = freezed,
    Object? head = freezed,
    Object? chest = freezed,
  }) {
    return _then(_value.copyWith(
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildChildGrowthRecordCopyWith<$Res>
    implements $ChildGrowthRecordCopyWith<$Res> {
  factory _$$_ChildChildGrowthRecordCopyWith(_$_ChildChildGrowthRecord value,
          $Res Function(_$_ChildChildGrowthRecord) then) =
      __$$_ChildChildGrowthRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_body_record_id') int recordId,
      @DateTimeConverter() @JsonKey(name: 'measurement_date') DateTime date,
      double? height,
      int? weight,
      @JsonKey(name: 'head_measurement') double? head,
      @JsonKey(name: 'chest_measurement') double? chest});
}

/// @nodoc
class __$$_ChildChildGrowthRecordCopyWithImpl<$Res>
    extends _$ChildGrowthRecordCopyWithImpl<$Res, _$_ChildChildGrowthRecord>
    implements _$$_ChildChildGrowthRecordCopyWith<$Res> {
  __$$_ChildChildGrowthRecordCopyWithImpl(_$_ChildChildGrowthRecord _value,
      $Res Function(_$_ChildChildGrowthRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = null,
    Object? date = null,
    Object? height = freezed,
    Object? weight = freezed,
    Object? head = freezed,
    Object? chest = freezed,
  }) {
    return _then(_$_ChildChildGrowthRecord(
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildChildGrowthRecord implements _ChildChildGrowthRecord {
  const _$_ChildChildGrowthRecord(
      {@JsonKey(name: 'child_body_record_id')
          required this.recordId,
      @DateTimeConverter()
      @JsonKey(name: 'measurement_date')
          required this.date,
      required this.height,
      required this.weight,
      @JsonKey(name: 'head_measurement')
          required this.head,
      @JsonKey(name: 'chest_measurement')
          required this.chest});

  factory _$_ChildChildGrowthRecord.fromJson(Map<String, dynamic> json) =>
      _$$_ChildChildGrowthRecordFromJson(json);

  @override
  @JsonKey(name: 'child_body_record_id')
  final int recordId;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'measurement_date')
  final DateTime date;
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
  String toString() {
    return 'ChildGrowthRecord(recordId: $recordId, date: $date, height: $height, weight: $weight, head: $head, chest: $chest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildChildGrowthRecord &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.chest, chest) || other.chest == chest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, recordId, date, height, weight, head, chest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildChildGrowthRecordCopyWith<_$_ChildChildGrowthRecord> get copyWith =>
      __$$_ChildChildGrowthRecordCopyWithImpl<_$_ChildChildGrowthRecord>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildChildGrowthRecordToJson(
      this,
    );
  }
}

abstract class _ChildChildGrowthRecord implements ChildGrowthRecord {
  const factory _ChildChildGrowthRecord(
      {@JsonKey(name: 'child_body_record_id')
          required final int recordId,
      @DateTimeConverter()
      @JsonKey(name: 'measurement_date')
          required final DateTime date,
      required final double? height,
      required final int? weight,
      @JsonKey(name: 'head_measurement')
          required final double? head,
      @JsonKey(name: 'chest_measurement')
          required final double? chest}) = _$_ChildChildGrowthRecord;

  factory _ChildChildGrowthRecord.fromJson(Map<String, dynamic> json) =
      _$_ChildChildGrowthRecord.fromJson;

  @override
  @JsonKey(name: 'child_body_record_id')
  int get recordId;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'measurement_date')
  DateTime get date;
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
  @JsonKey(ignore: true)
  _$$_ChildChildGrowthRecordCopyWith<_$_ChildChildGrowthRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

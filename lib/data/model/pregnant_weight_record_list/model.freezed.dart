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

PregnantWeightRecordListModel _$PregnantWeightRecordListModelFromJson(
    Map<String, dynamic> json) {
  return _ChildPregnantWeightRecordListModel.fromJson(json);
}

/// @nodoc
mixin _$PregnantWeightRecordListModel {
  List<PregnantWeightRecord> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PregnantWeightRecordListModelCopyWith<PregnantWeightRecordListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregnantWeightRecordListModelCopyWith<$Res> {
  factory $PregnantWeightRecordListModelCopyWith(
          PregnantWeightRecordListModel value,
          $Res Function(PregnantWeightRecordListModel) then) =
      _$PregnantWeightRecordListModelCopyWithImpl<$Res,
          PregnantWeightRecordListModel>;
  @useResult
  $Res call({List<PregnantWeightRecord> list});
}

/// @nodoc
class _$PregnantWeightRecordListModelCopyWithImpl<$Res,
        $Val extends PregnantWeightRecordListModel>
    implements $PregnantWeightRecordListModelCopyWith<$Res> {
  _$PregnantWeightRecordListModelCopyWithImpl(this._value, this._then);

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
              as List<PregnantWeightRecord>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildPregnantWeightRecordListModelCopyWith<$Res>
    implements $PregnantWeightRecordListModelCopyWith<$Res> {
  factory _$$_ChildPregnantWeightRecordListModelCopyWith(
          _$_ChildPregnantWeightRecordListModel value,
          $Res Function(_$_ChildPregnantWeightRecordListModel) then) =
      __$$_ChildPregnantWeightRecordListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PregnantWeightRecord> list});
}

/// @nodoc
class __$$_ChildPregnantWeightRecordListModelCopyWithImpl<$Res>
    extends _$PregnantWeightRecordListModelCopyWithImpl<$Res,
        _$_ChildPregnantWeightRecordListModel>
    implements _$$_ChildPregnantWeightRecordListModelCopyWith<$Res> {
  __$$_ChildPregnantWeightRecordListModelCopyWithImpl(
      _$_ChildPregnantWeightRecordListModel _value,
      $Res Function(_$_ChildPregnantWeightRecordListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_ChildPregnantWeightRecordListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PregnantWeightRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildPregnantWeightRecordListModel
    implements _ChildPregnantWeightRecordListModel {
  const _$_ChildPregnantWeightRecordListModel(
      {required final List<PregnantWeightRecord> list})
      : _list = list;

  factory _$_ChildPregnantWeightRecordListModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ChildPregnantWeightRecordListModelFromJson(json);

  final List<PregnantWeightRecord> _list;
  @override
  List<PregnantWeightRecord> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'PregnantWeightRecordListModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildPregnantWeightRecordListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildPregnantWeightRecordListModelCopyWith<
          _$_ChildPregnantWeightRecordListModel>
      get copyWith => __$$_ChildPregnantWeightRecordListModelCopyWithImpl<
          _$_ChildPregnantWeightRecordListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildPregnantWeightRecordListModelToJson(
      this,
    );
  }
}

abstract class _ChildPregnantWeightRecordListModel
    implements PregnantWeightRecordListModel {
  const factory _ChildPregnantWeightRecordListModel(
          {required final List<PregnantWeightRecord> list}) =
      _$_ChildPregnantWeightRecordListModel;

  factory _ChildPregnantWeightRecordListModel.fromJson(
          Map<String, dynamic> json) =
      _$_ChildPregnantWeightRecordListModel.fromJson;

  @override
  List<PregnantWeightRecord> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ChildPregnantWeightRecordListModelCopyWith<
          _$_ChildPregnantWeightRecordListModel>
      get copyWith => throw _privateConstructorUsedError;
}

PregnantWeightRecord _$PregnantWeightRecordFromJson(Map<String, dynamic> json) {
  return _ChildPregnantWeightRecord.fromJson(json);
}

/// @nodoc
mixin _$PregnantWeightRecord {
  @JsonKey(name: 'mother_weight_record_id')
  int get recordId => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'measurement_date')
  DateTime get date => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PregnantWeightRecordCopyWith<PregnantWeightRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregnantWeightRecordCopyWith<$Res> {
  factory $PregnantWeightRecordCopyWith(PregnantWeightRecord value,
          $Res Function(PregnantWeightRecord) then) =
      _$PregnantWeightRecordCopyWithImpl<$Res, PregnantWeightRecord>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mother_weight_record_id') int recordId,
      @DateTimeConverter() @JsonKey(name: 'measurement_date') DateTime date,
      int weight});
}

/// @nodoc
class _$PregnantWeightRecordCopyWithImpl<$Res,
        $Val extends PregnantWeightRecord>
    implements $PregnantWeightRecordCopyWith<$Res> {
  _$PregnantWeightRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = null,
    Object? date = null,
    Object? weight = null,
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
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildPregnantWeightRecordCopyWith<$Res>
    implements $PregnantWeightRecordCopyWith<$Res> {
  factory _$$_ChildPregnantWeightRecordCopyWith(
          _$_ChildPregnantWeightRecord value,
          $Res Function(_$_ChildPregnantWeightRecord) then) =
      __$$_ChildPregnantWeightRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mother_weight_record_id') int recordId,
      @DateTimeConverter() @JsonKey(name: 'measurement_date') DateTime date,
      int weight});
}

/// @nodoc
class __$$_ChildPregnantWeightRecordCopyWithImpl<$Res>
    extends _$PregnantWeightRecordCopyWithImpl<$Res,
        _$_ChildPregnantWeightRecord>
    implements _$$_ChildPregnantWeightRecordCopyWith<$Res> {
  __$$_ChildPregnantWeightRecordCopyWithImpl(
      _$_ChildPregnantWeightRecord _value,
      $Res Function(_$_ChildPregnantWeightRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = null,
    Object? date = null,
    Object? weight = null,
  }) {
    return _then(_$_ChildPregnantWeightRecord(
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildPregnantWeightRecord implements _ChildPregnantWeightRecord {
  const _$_ChildPregnantWeightRecord(
      {@JsonKey(name: 'mother_weight_record_id')
          required this.recordId,
      @DateTimeConverter()
      @JsonKey(name: 'measurement_date')
          required this.date,
      required this.weight});

  factory _$_ChildPregnantWeightRecord.fromJson(Map<String, dynamic> json) =>
      _$$_ChildPregnantWeightRecordFromJson(json);

  @override
  @JsonKey(name: 'mother_weight_record_id')
  final int recordId;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'measurement_date')
  final DateTime date;
  @override
  final int weight;

  @override
  String toString() {
    return 'PregnantWeightRecord(recordId: $recordId, date: $date, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildPregnantWeightRecord &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recordId, date, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildPregnantWeightRecordCopyWith<_$_ChildPregnantWeightRecord>
      get copyWith => __$$_ChildPregnantWeightRecordCopyWithImpl<
          _$_ChildPregnantWeightRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildPregnantWeightRecordToJson(
      this,
    );
  }
}

abstract class _ChildPregnantWeightRecord implements PregnantWeightRecord {
  const factory _ChildPregnantWeightRecord(
      {@JsonKey(name: 'mother_weight_record_id')
          required final int recordId,
      @DateTimeConverter()
      @JsonKey(name: 'measurement_date')
          required final DateTime date,
      required final int weight}) = _$_ChildPregnantWeightRecord;

  factory _ChildPregnantWeightRecord.fromJson(Map<String, dynamic> json) =
      _$_ChildPregnantWeightRecord.fromJson;

  @override
  @JsonKey(name: 'mother_weight_record_id')
  int get recordId;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'measurement_date')
  DateTime get date;
  @override
  int get weight;
  @override
  @JsonKey(ignore: true)
  _$$_ChildPregnantWeightRecordCopyWith<_$_ChildPregnantWeightRecord>
      get copyWith => throw _privateConstructorUsedError;
}

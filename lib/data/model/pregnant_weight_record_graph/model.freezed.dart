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

PregnantWeightRecordGraphModel _$PregnantWeightRecordGraphModelFromJson(
    Map<String, dynamic> json) {
  return _PregnantWeightRecordGraphModel.fromJson(json);
}

/// @nodoc
mixin _$PregnantWeightRecordGraphModel {
  List<WeightGraphData> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PregnantWeightRecordGraphModelCopyWith<PregnantWeightRecordGraphModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregnantWeightRecordGraphModelCopyWith<$Res> {
  factory $PregnantWeightRecordGraphModelCopyWith(
          PregnantWeightRecordGraphModel value,
          $Res Function(PregnantWeightRecordGraphModel) then) =
      _$PregnantWeightRecordGraphModelCopyWithImpl<$Res,
          PregnantWeightRecordGraphModel>;
  @useResult
  $Res call({List<WeightGraphData> list});
}

/// @nodoc
class _$PregnantWeightRecordGraphModelCopyWithImpl<$Res,
        $Val extends PregnantWeightRecordGraphModel>
    implements $PregnantWeightRecordGraphModelCopyWith<$Res> {
  _$PregnantWeightRecordGraphModelCopyWithImpl(this._value, this._then);

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
              as List<WeightGraphData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PregnantWeightRecordGraphModelCopyWith<$Res>
    implements $PregnantWeightRecordGraphModelCopyWith<$Res> {
  factory _$$_PregnantWeightRecordGraphModelCopyWith(
          _$_PregnantWeightRecordGraphModel value,
          $Res Function(_$_PregnantWeightRecordGraphModel) then) =
      __$$_PregnantWeightRecordGraphModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WeightGraphData> list});
}

/// @nodoc
class __$$_PregnantWeightRecordGraphModelCopyWithImpl<$Res>
    extends _$PregnantWeightRecordGraphModelCopyWithImpl<$Res,
        _$_PregnantWeightRecordGraphModel>
    implements _$$_PregnantWeightRecordGraphModelCopyWith<$Res> {
  __$$_PregnantWeightRecordGraphModelCopyWithImpl(
      _$_PregnantWeightRecordGraphModel _value,
      $Res Function(_$_PregnantWeightRecordGraphModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_PregnantWeightRecordGraphModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WeightGraphData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PregnantWeightRecordGraphModel
    implements _PregnantWeightRecordGraphModel {
  const _$_PregnantWeightRecordGraphModel(
      {final List<WeightGraphData> list = const []})
      : _list = list;

  factory _$_PregnantWeightRecordGraphModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_PregnantWeightRecordGraphModelFromJson(json);

  final List<WeightGraphData> _list;
  @override
  @JsonKey()
  List<WeightGraphData> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'PregnantWeightRecordGraphModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PregnantWeightRecordGraphModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PregnantWeightRecordGraphModelCopyWith<_$_PregnantWeightRecordGraphModel>
      get copyWith => __$$_PregnantWeightRecordGraphModelCopyWithImpl<
          _$_PregnantWeightRecordGraphModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PregnantWeightRecordGraphModelToJson(
      this,
    );
  }
}

abstract class _PregnantWeightRecordGraphModel
    implements PregnantWeightRecordGraphModel {
  const factory _PregnantWeightRecordGraphModel(
      {final List<WeightGraphData> list}) = _$_PregnantWeightRecordGraphModel;

  factory _PregnantWeightRecordGraphModel.fromJson(Map<String, dynamic> json) =
      _$_PregnantWeightRecordGraphModel.fromJson;

  @override
  List<WeightGraphData> get list;
  @override
  @JsonKey(ignore: true)
  _$$_PregnantWeightRecordGraphModelCopyWith<_$_PregnantWeightRecordGraphModel>
      get copyWith => throw _privateConstructorUsedError;
}

WeightGraphData _$WeightGraphDataFromJson(Map<String, dynamic> json) {
  return _WeightGraphData.fromJson(json);
}

/// @nodoc
mixin _$WeightGraphData {
  @DateTimeConverter()
  @JsonKey(name: 'measurement_date')
  DateTime get measurementDate => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightGraphDataCopyWith<WeightGraphData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightGraphDataCopyWith<$Res> {
  factory $WeightGraphDataCopyWith(
          WeightGraphData value, $Res Function(WeightGraphData) then) =
      _$WeightGraphDataCopyWithImpl<$Res, WeightGraphData>;
  @useResult
  $Res call(
      {@DateTimeConverter()
      @JsonKey(name: 'measurement_date')
          DateTime measurementDate,
      double weight});
}

/// @nodoc
class _$WeightGraphDataCopyWithImpl<$Res, $Val extends WeightGraphData>
    implements $WeightGraphDataCopyWith<$Res> {
  _$WeightGraphDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurementDate = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      measurementDate: null == measurementDate
          ? _value.measurementDate
          : measurementDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeightGraphDataCopyWith<$Res>
    implements $WeightGraphDataCopyWith<$Res> {
  factory _$$_WeightGraphDataCopyWith(
          _$_WeightGraphData value, $Res Function(_$_WeightGraphData) then) =
      __$$_WeightGraphDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeConverter()
      @JsonKey(name: 'measurement_date')
          DateTime measurementDate,
      double weight});
}

/// @nodoc
class __$$_WeightGraphDataCopyWithImpl<$Res>
    extends _$WeightGraphDataCopyWithImpl<$Res, _$_WeightGraphData>
    implements _$$_WeightGraphDataCopyWith<$Res> {
  __$$_WeightGraphDataCopyWithImpl(
      _$_WeightGraphData _value, $Res Function(_$_WeightGraphData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurementDate = null,
    Object? weight = null,
  }) {
    return _then(_$_WeightGraphData(
      measurementDate: null == measurementDate
          ? _value.measurementDate
          : measurementDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeightGraphData implements _WeightGraphData {
  const _$_WeightGraphData(
      {@DateTimeConverter()
      @JsonKey(name: 'measurement_date')
          required this.measurementDate,
      required this.weight});

  factory _$_WeightGraphData.fromJson(Map<String, dynamic> json) =>
      _$$_WeightGraphDataFromJson(json);

  @override
  @DateTimeConverter()
  @JsonKey(name: 'measurement_date')
  final DateTime measurementDate;
  @override
  final double weight;

  @override
  String toString() {
    return 'WeightGraphData(measurementDate: $measurementDate, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeightGraphData &&
            (identical(other.measurementDate, measurementDate) ||
                other.measurementDate == measurementDate) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, measurementDate, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeightGraphDataCopyWith<_$_WeightGraphData> get copyWith =>
      __$$_WeightGraphDataCopyWithImpl<_$_WeightGraphData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeightGraphDataToJson(
      this,
    );
  }
}

abstract class _WeightGraphData implements WeightGraphData {
  const factory _WeightGraphData(
      {@DateTimeConverter()
      @JsonKey(name: 'measurement_date')
          required final DateTime measurementDate,
      required final double weight}) = _$_WeightGraphData;

  factory _WeightGraphData.fromJson(Map<String, dynamic> json) =
      _$_WeightGraphData.fromJson;

  @override
  @DateTimeConverter()
  @JsonKey(name: 'measurement_date')
  DateTime get measurementDate;
  @override
  double get weight;
  @override
  @JsonKey(ignore: true)
  _$$_WeightGraphDataCopyWith<_$_WeightGraphData> get copyWith =>
      throw _privateConstructorUsedError;
}

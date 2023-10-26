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

ChildGrowthRecordGraphModel _$ChildGrowthRecordGraphModelFromJson(
    Map<String, dynamic> json) {
  return _ChildGrowthRecordGraphModel.fromJson(json);
}

/// @nodoc
mixin _$ChildGrowthRecordGraphModel {
  List<GrowthGraphData> get growthGraphData =>
      throw _privateConstructorUsedError;
  List<BandGraphData> get bandGraphData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildGrowthRecordGraphModelCopyWith<ChildGrowthRecordGraphModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildGrowthRecordGraphModelCopyWith<$Res> {
  factory $ChildGrowthRecordGraphModelCopyWith(
          ChildGrowthRecordGraphModel value,
          $Res Function(ChildGrowthRecordGraphModel) then) =
      _$ChildGrowthRecordGraphModelCopyWithImpl<$Res,
          ChildGrowthRecordGraphModel>;
  @useResult
  $Res call(
      {List<GrowthGraphData> growthGraphData,
      List<BandGraphData> bandGraphData});
}

/// @nodoc
class _$ChildGrowthRecordGraphModelCopyWithImpl<$Res,
        $Val extends ChildGrowthRecordGraphModel>
    implements $ChildGrowthRecordGraphModelCopyWith<$Res> {
  _$ChildGrowthRecordGraphModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? growthGraphData = null,
    Object? bandGraphData = null,
  }) {
    return _then(_value.copyWith(
      growthGraphData: null == growthGraphData
          ? _value.growthGraphData
          : growthGraphData // ignore: cast_nullable_to_non_nullable
              as List<GrowthGraphData>,
      bandGraphData: null == bandGraphData
          ? _value.bandGraphData
          : bandGraphData // ignore: cast_nullable_to_non_nullable
              as List<BandGraphData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildGrowthRecordGraphModelCopyWith<$Res>
    implements $ChildGrowthRecordGraphModelCopyWith<$Res> {
  factory _$$_ChildGrowthRecordGraphModelCopyWith(
          _$_ChildGrowthRecordGraphModel value,
          $Res Function(_$_ChildGrowthRecordGraphModel) then) =
      __$$_ChildGrowthRecordGraphModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GrowthGraphData> growthGraphData,
      List<BandGraphData> bandGraphData});
}

/// @nodoc
class __$$_ChildGrowthRecordGraphModelCopyWithImpl<$Res>
    extends _$ChildGrowthRecordGraphModelCopyWithImpl<$Res,
        _$_ChildGrowthRecordGraphModel>
    implements _$$_ChildGrowthRecordGraphModelCopyWith<$Res> {
  __$$_ChildGrowthRecordGraphModelCopyWithImpl(
      _$_ChildGrowthRecordGraphModel _value,
      $Res Function(_$_ChildGrowthRecordGraphModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? growthGraphData = null,
    Object? bandGraphData = null,
  }) {
    return _then(_$_ChildGrowthRecordGraphModel(
      growthGraphData: null == growthGraphData
          ? _value._growthGraphData
          : growthGraphData // ignore: cast_nullable_to_non_nullable
              as List<GrowthGraphData>,
      bandGraphData: null == bandGraphData
          ? _value._bandGraphData
          : bandGraphData // ignore: cast_nullable_to_non_nullable
              as List<BandGraphData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildGrowthRecordGraphModel implements _ChildGrowthRecordGraphModel {
  const _$_ChildGrowthRecordGraphModel(
      {final List<GrowthGraphData> growthGraphData = const [],
      final List<BandGraphData> bandGraphData = const []})
      : _growthGraphData = growthGraphData,
        _bandGraphData = bandGraphData;

  factory _$_ChildGrowthRecordGraphModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChildGrowthRecordGraphModelFromJson(json);

  final List<GrowthGraphData> _growthGraphData;
  @override
  @JsonKey()
  List<GrowthGraphData> get growthGraphData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_growthGraphData);
  }

  final List<BandGraphData> _bandGraphData;
  @override
  @JsonKey()
  List<BandGraphData> get bandGraphData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bandGraphData);
  }

  @override
  String toString() {
    return 'ChildGrowthRecordGraphModel(growthGraphData: $growthGraphData, bandGraphData: $bandGraphData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildGrowthRecordGraphModel &&
            const DeepCollectionEquality()
                .equals(other._growthGraphData, _growthGraphData) &&
            const DeepCollectionEquality()
                .equals(other._bandGraphData, _bandGraphData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_growthGraphData),
      const DeepCollectionEquality().hash(_bandGraphData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildGrowthRecordGraphModelCopyWith<_$_ChildGrowthRecordGraphModel>
      get copyWith => __$$_ChildGrowthRecordGraphModelCopyWithImpl<
          _$_ChildGrowthRecordGraphModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildGrowthRecordGraphModelToJson(
      this,
    );
  }
}

abstract class _ChildGrowthRecordGraphModel
    implements ChildGrowthRecordGraphModel {
  const factory _ChildGrowthRecordGraphModel(
          {final List<GrowthGraphData> growthGraphData,
          final List<BandGraphData> bandGraphData}) =
      _$_ChildGrowthRecordGraphModel;

  factory _ChildGrowthRecordGraphModel.fromJson(Map<String, dynamic> json) =
      _$_ChildGrowthRecordGraphModel.fromJson;

  @override
  List<GrowthGraphData> get growthGraphData;
  @override
  List<BandGraphData> get bandGraphData;
  @override
  @JsonKey(ignore: true)
  _$$_ChildGrowthRecordGraphModelCopyWith<_$_ChildGrowthRecordGraphModel>
      get copyWith => throw _privateConstructorUsedError;
}

GrowthGraphData _$GrowthGraphDataFromJson(Map<String, dynamic> json) {
  return _GrowthGraphData.fromJson(json);
}

/// @nodoc
mixin _$GrowthGraphData {
  @DateTimeConverter()
  @JsonKey(name: 'measurement_date')
  DateTime get measurementDate => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_measurement')
  double? get head => throw _privateConstructorUsedError;
  @JsonKey(name: 'chest_measurement')
  double? get chest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrowthGraphDataCopyWith<GrowthGraphData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthGraphDataCopyWith<$Res> {
  factory $GrowthGraphDataCopyWith(
          GrowthGraphData value, $Res Function(GrowthGraphData) then) =
      _$GrowthGraphDataCopyWithImpl<$Res, GrowthGraphData>;
  @useResult
  $Res call(
      {@DateTimeConverter()
      @JsonKey(name: 'measurement_date')
          DateTime measurementDate,
      double? height,
      double? weight,
      @JsonKey(name: 'head_measurement')
          double? head,
      @JsonKey(name: 'chest_measurement')
          double? chest});
}

/// @nodoc
class _$GrowthGraphDataCopyWithImpl<$Res, $Val extends GrowthGraphData>
    implements $GrowthGraphDataCopyWith<$Res> {
  _$GrowthGraphDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurementDate = null,
    Object? height = freezed,
    Object? weight = freezed,
    Object? head = freezed,
    Object? chest = freezed,
  }) {
    return _then(_value.copyWith(
      measurementDate: null == measurementDate
          ? _value.measurementDate
          : measurementDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$_GrowthGraphDataCopyWith<$Res>
    implements $GrowthGraphDataCopyWith<$Res> {
  factory _$$_GrowthGraphDataCopyWith(
          _$_GrowthGraphData value, $Res Function(_$_GrowthGraphData) then) =
      __$$_GrowthGraphDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeConverter()
      @JsonKey(name: 'measurement_date')
          DateTime measurementDate,
      double? height,
      double? weight,
      @JsonKey(name: 'head_measurement')
          double? head,
      @JsonKey(name: 'chest_measurement')
          double? chest});
}

/// @nodoc
class __$$_GrowthGraphDataCopyWithImpl<$Res>
    extends _$GrowthGraphDataCopyWithImpl<$Res, _$_GrowthGraphData>
    implements _$$_GrowthGraphDataCopyWith<$Res> {
  __$$_GrowthGraphDataCopyWithImpl(
      _$_GrowthGraphData _value, $Res Function(_$_GrowthGraphData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurementDate = null,
    Object? height = freezed,
    Object? weight = freezed,
    Object? head = freezed,
    Object? chest = freezed,
  }) {
    return _then(_$_GrowthGraphData(
      measurementDate: null == measurementDate
          ? _value.measurementDate
          : measurementDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$_GrowthGraphData implements _GrowthGraphData {
  const _$_GrowthGraphData(
      {@DateTimeConverter()
      @JsonKey(name: 'measurement_date')
          required this.measurementDate,
      this.height,
      this.weight,
      @JsonKey(name: 'head_measurement')
          this.head,
      @JsonKey(name: 'chest_measurement')
          this.chest});

  factory _$_GrowthGraphData.fromJson(Map<String, dynamic> json) =>
      _$$_GrowthGraphDataFromJson(json);

  @override
  @DateTimeConverter()
  @JsonKey(name: 'measurement_date')
  final DateTime measurementDate;
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
    return 'GrowthGraphData(measurementDate: $measurementDate, height: $height, weight: $weight, head: $head, chest: $chest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GrowthGraphData &&
            (identical(other.measurementDate, measurementDate) ||
                other.measurementDate == measurementDate) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.chest, chest) || other.chest == chest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, measurementDate, height, weight, head, chest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GrowthGraphDataCopyWith<_$_GrowthGraphData> get copyWith =>
      __$$_GrowthGraphDataCopyWithImpl<_$_GrowthGraphData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrowthGraphDataToJson(
      this,
    );
  }
}

abstract class _GrowthGraphData implements GrowthGraphData {
  const factory _GrowthGraphData(
      {@DateTimeConverter()
      @JsonKey(name: 'measurement_date')
          required final DateTime measurementDate,
      final double? height,
      final double? weight,
      @JsonKey(name: 'head_measurement')
          final double? head,
      @JsonKey(name: 'chest_measurement')
          final double? chest}) = _$_GrowthGraphData;

  factory _GrowthGraphData.fromJson(Map<String, dynamic> json) =
      _$_GrowthGraphData.fromJson;

  @override
  @DateTimeConverter()
  @JsonKey(name: 'measurement_date')
  DateTime get measurementDate;
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
  _$$_GrowthGraphDataCopyWith<_$_GrowthGraphData> get copyWith =>
      throw _privateConstructorUsedError;
}

BandGraphData _$BandGraphDataFromJson(Map<String, dynamic> json) {
  return _BandGraphData.fromJson(json);
}

/// @nodoc
mixin _$BandGraphData {
  @JsonKey(name: 'min_height')
  double get minHeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_height')
  double get maxHeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_weight')
  double get minWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_weight')
  double get maxWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_head_measurement')
  double get minHead => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_head_measurement')
  double get mixHead => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_chest_measurement')
  double get minChest => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_chest_measurement')
  double get maxChest => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'month_of_age')
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BandGraphDataCopyWith<BandGraphData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BandGraphDataCopyWith<$Res> {
  factory $BandGraphDataCopyWith(
          BandGraphData value, $Res Function(BandGraphData) then) =
      _$BandGraphDataCopyWithImpl<$Res, BandGraphData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'min_height') double minHeight,
      @JsonKey(name: 'max_height') double maxHeight,
      @JsonKey(name: 'min_weight') double minWeight,
      @JsonKey(name: 'max_weight') double maxWeight,
      @JsonKey(name: 'min_head_measurement') double minHead,
      @JsonKey(name: 'max_head_measurement') double mixHead,
      @JsonKey(name: 'min_chest_measurement') double minChest,
      @JsonKey(name: 'max_chest_measurement') double maxChest,
      @DateTimeConverter() @JsonKey(name: 'month_of_age') DateTime date});
}

/// @nodoc
class _$BandGraphDataCopyWithImpl<$Res, $Val extends BandGraphData>
    implements $BandGraphDataCopyWith<$Res> {
  _$BandGraphDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minHeight = null,
    Object? maxHeight = null,
    Object? minWeight = null,
    Object? maxWeight = null,
    Object? minHead = null,
    Object? mixHead = null,
    Object? minChest = null,
    Object? maxChest = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      minHeight: null == minHeight
          ? _value.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxHeight: null == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      minWeight: null == minWeight
          ? _value.minWeight
          : minWeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxWeight: null == maxWeight
          ? _value.maxWeight
          : maxWeight // ignore: cast_nullable_to_non_nullable
              as double,
      minHead: null == minHead
          ? _value.minHead
          : minHead // ignore: cast_nullable_to_non_nullable
              as double,
      mixHead: null == mixHead
          ? _value.mixHead
          : mixHead // ignore: cast_nullable_to_non_nullable
              as double,
      minChest: null == minChest
          ? _value.minChest
          : minChest // ignore: cast_nullable_to_non_nullable
              as double,
      maxChest: null == maxChest
          ? _value.maxChest
          : maxChest // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BandGraphDataCopyWith<$Res>
    implements $BandGraphDataCopyWith<$Res> {
  factory _$$_BandGraphDataCopyWith(
          _$_BandGraphData value, $Res Function(_$_BandGraphData) then) =
      __$$_BandGraphDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'min_height') double minHeight,
      @JsonKey(name: 'max_height') double maxHeight,
      @JsonKey(name: 'min_weight') double minWeight,
      @JsonKey(name: 'max_weight') double maxWeight,
      @JsonKey(name: 'min_head_measurement') double minHead,
      @JsonKey(name: 'max_head_measurement') double mixHead,
      @JsonKey(name: 'min_chest_measurement') double minChest,
      @JsonKey(name: 'max_chest_measurement') double maxChest,
      @DateTimeConverter() @JsonKey(name: 'month_of_age') DateTime date});
}

/// @nodoc
class __$$_BandGraphDataCopyWithImpl<$Res>
    extends _$BandGraphDataCopyWithImpl<$Res, _$_BandGraphData>
    implements _$$_BandGraphDataCopyWith<$Res> {
  __$$_BandGraphDataCopyWithImpl(
      _$_BandGraphData _value, $Res Function(_$_BandGraphData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minHeight = null,
    Object? maxHeight = null,
    Object? minWeight = null,
    Object? maxWeight = null,
    Object? minHead = null,
    Object? mixHead = null,
    Object? minChest = null,
    Object? maxChest = null,
    Object? date = null,
  }) {
    return _then(_$_BandGraphData(
      minHeight: null == minHeight
          ? _value.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxHeight: null == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      minWeight: null == minWeight
          ? _value.minWeight
          : minWeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxWeight: null == maxWeight
          ? _value.maxWeight
          : maxWeight // ignore: cast_nullable_to_non_nullable
              as double,
      minHead: null == minHead
          ? _value.minHead
          : minHead // ignore: cast_nullable_to_non_nullable
              as double,
      mixHead: null == mixHead
          ? _value.mixHead
          : mixHead // ignore: cast_nullable_to_non_nullable
              as double,
      minChest: null == minChest
          ? _value.minChest
          : minChest // ignore: cast_nullable_to_non_nullable
              as double,
      maxChest: null == maxChest
          ? _value.maxChest
          : maxChest // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BandGraphData implements _BandGraphData {
  const _$_BandGraphData(
      {@JsonKey(name: 'min_height') required this.minHeight,
      @JsonKey(name: 'max_height') required this.maxHeight,
      @JsonKey(name: 'min_weight') required this.minWeight,
      @JsonKey(name: 'max_weight') required this.maxWeight,
      @JsonKey(name: 'min_head_measurement') required this.minHead,
      @JsonKey(name: 'max_head_measurement') required this.mixHead,
      @JsonKey(name: 'min_chest_measurement') required this.minChest,
      @JsonKey(name: 'max_chest_measurement') required this.maxChest,
      @DateTimeConverter() @JsonKey(name: 'month_of_age') required this.date});

  factory _$_BandGraphData.fromJson(Map<String, dynamic> json) =>
      _$$_BandGraphDataFromJson(json);

  @override
  @JsonKey(name: 'min_height')
  final double minHeight;
  @override
  @JsonKey(name: 'max_height')
  final double maxHeight;
  @override
  @JsonKey(name: 'min_weight')
  final double minWeight;
  @override
  @JsonKey(name: 'max_weight')
  final double maxWeight;
  @override
  @JsonKey(name: 'min_head_measurement')
  final double minHead;
  @override
  @JsonKey(name: 'max_head_measurement')
  final double mixHead;
  @override
  @JsonKey(name: 'min_chest_measurement')
  final double minChest;
  @override
  @JsonKey(name: 'max_chest_measurement')
  final double maxChest;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'month_of_age')
  final DateTime date;

  @override
  String toString() {
    return 'BandGraphData(minHeight: $minHeight, maxHeight: $maxHeight, minWeight: $minWeight, maxWeight: $maxWeight, minHead: $minHead, mixHead: $mixHead, minChest: $minChest, maxChest: $maxChest, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BandGraphData &&
            (identical(other.minHeight, minHeight) ||
                other.minHeight == minHeight) &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight) &&
            (identical(other.minWeight, minWeight) ||
                other.minWeight == minWeight) &&
            (identical(other.maxWeight, maxWeight) ||
                other.maxWeight == maxWeight) &&
            (identical(other.minHead, minHead) || other.minHead == minHead) &&
            (identical(other.mixHead, mixHead) || other.mixHead == mixHead) &&
            (identical(other.minChest, minChest) ||
                other.minChest == minChest) &&
            (identical(other.maxChest, maxChest) ||
                other.maxChest == maxChest) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minHeight, maxHeight, minWeight,
      maxWeight, minHead, mixHead, minChest, maxChest, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BandGraphDataCopyWith<_$_BandGraphData> get copyWith =>
      __$$_BandGraphDataCopyWithImpl<_$_BandGraphData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BandGraphDataToJson(
      this,
    );
  }
}

abstract class _BandGraphData implements BandGraphData {
  const factory _BandGraphData(
      {@JsonKey(name: 'min_height')
          required final double minHeight,
      @JsonKey(name: 'max_height')
          required final double maxHeight,
      @JsonKey(name: 'min_weight')
          required final double minWeight,
      @JsonKey(name: 'max_weight')
          required final double maxWeight,
      @JsonKey(name: 'min_head_measurement')
          required final double minHead,
      @JsonKey(name: 'max_head_measurement')
          required final double mixHead,
      @JsonKey(name: 'min_chest_measurement')
          required final double minChest,
      @JsonKey(name: 'max_chest_measurement')
          required final double maxChest,
      @DateTimeConverter()
      @JsonKey(name: 'month_of_age')
          required final DateTime date}) = _$_BandGraphData;

  factory _BandGraphData.fromJson(Map<String, dynamic> json) =
      _$_BandGraphData.fromJson;

  @override
  @JsonKey(name: 'min_height')
  double get minHeight;
  @override
  @JsonKey(name: 'max_height')
  double get maxHeight;
  @override
  @JsonKey(name: 'min_weight')
  double get minWeight;
  @override
  @JsonKey(name: 'max_weight')
  double get maxWeight;
  @override
  @JsonKey(name: 'min_head_measurement')
  double get minHead;
  @override
  @JsonKey(name: 'max_head_measurement')
  double get mixHead;
  @override
  @JsonKey(name: 'min_chest_measurement')
  double get minChest;
  @override
  @JsonKey(name: 'max_chest_measurement')
  double get maxChest;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'month_of_age')
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_BandGraphDataCopyWith<_$_BandGraphData> get copyWith =>
      throw _privateConstructorUsedError;
}

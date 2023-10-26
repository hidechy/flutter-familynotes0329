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

ChildCheckupListModel _$ChildCheckupListModelFromJson(
    Map<String, dynamic> json) {
  return _ChildCheckupListModel.fromJson(json);
}

/// @nodoc
mixin _$ChildCheckupListModel {
  List<ChildCheckupModel> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildCheckupListModelCopyWith<ChildCheckupListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCheckupListModelCopyWith<$Res> {
  factory $ChildCheckupListModelCopyWith(ChildCheckupListModel value,
          $Res Function(ChildCheckupListModel) then) =
      _$ChildCheckupListModelCopyWithImpl<$Res, ChildCheckupListModel>;
  @useResult
  $Res call({List<ChildCheckupModel> list});
}

/// @nodoc
class _$ChildCheckupListModelCopyWithImpl<$Res,
        $Val extends ChildCheckupListModel>
    implements $ChildCheckupListModelCopyWith<$Res> {
  _$ChildCheckupListModelCopyWithImpl(this._value, this._then);

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
              as List<ChildCheckupModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildCheckupListModelCopyWith<$Res>
    implements $ChildCheckupListModelCopyWith<$Res> {
  factory _$$_ChildCheckupListModelCopyWith(_$_ChildCheckupListModel value,
          $Res Function(_$_ChildCheckupListModel) then) =
      __$$_ChildCheckupListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChildCheckupModel> list});
}

/// @nodoc
class __$$_ChildCheckupListModelCopyWithImpl<$Res>
    extends _$ChildCheckupListModelCopyWithImpl<$Res, _$_ChildCheckupListModel>
    implements _$$_ChildCheckupListModelCopyWith<$Res> {
  __$$_ChildCheckupListModelCopyWithImpl(_$_ChildCheckupListModel _value,
      $Res Function(_$_ChildCheckupListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_ChildCheckupListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ChildCheckupModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildCheckupListModel implements _ChildCheckupListModel {
  const _$_ChildCheckupListModel(
      {final List<ChildCheckupModel> list = const []})
      : _list = list;

  factory _$_ChildCheckupListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChildCheckupListModelFromJson(json);

  final List<ChildCheckupModel> _list;
  @override
  @JsonKey()
  List<ChildCheckupModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ChildCheckupListModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildCheckupListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildCheckupListModelCopyWith<_$_ChildCheckupListModel> get copyWith =>
      __$$_ChildCheckupListModelCopyWithImpl<_$_ChildCheckupListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildCheckupListModelToJson(
      this,
    );
  }
}

abstract class _ChildCheckupListModel implements ChildCheckupListModel {
  const factory _ChildCheckupListModel({final List<ChildCheckupModel> list}) =
      _$_ChildCheckupListModel;

  factory _ChildCheckupListModel.fromJson(Map<String, dynamic> json) =
      _$_ChildCheckupListModel.fromJson;

  @override
  List<ChildCheckupModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ChildCheckupListModelCopyWith<_$_ChildCheckupListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildCheckupModel _$ChildCheckupModelFromJson(Map<String, dynamic> json) {
  return _ChildCheckupModel.fromJson(json);
}

/// @nodoc
mixin _$ChildCheckupModel {
  @JsonKey(name: 'child_checkup_record_id')
  int get childCheckupId => throw _privateConstructorUsedError; // nullなら新規登録
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_checkup_type_id')
  int get childCheckUpType => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'checkup_day')
  DateTime get checkupDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkup_short_name')
  String get checkUpShortName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildCheckupModelCopyWith<ChildCheckupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCheckupModelCopyWith<$Res> {
  factory $ChildCheckupModelCopyWith(
          ChildCheckupModel value, $Res Function(ChildCheckupModel) then) =
      _$ChildCheckupModelCopyWithImpl<$Res, ChildCheckupModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_checkup_record_id') int childCheckupId,
      @JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'child_checkup_type_id') int childCheckUpType,
      @DateTimeConverter() @JsonKey(name: 'checkup_day') DateTime checkupDay,
      @JsonKey(name: 'checkup_short_name') String checkUpShortName});
}

/// @nodoc
class _$ChildCheckupModelCopyWithImpl<$Res, $Val extends ChildCheckupModel>
    implements $ChildCheckupModelCopyWith<$Res> {
  _$ChildCheckupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childCheckupId = null,
    Object? childId = null,
    Object? childCheckUpType = null,
    Object? checkupDay = null,
    Object? checkUpShortName = null,
  }) {
    return _then(_value.copyWith(
      childCheckupId: null == childCheckupId
          ? _value.childCheckupId
          : childCheckupId // ignore: cast_nullable_to_non_nullable
              as int,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      childCheckUpType: null == childCheckUpType
          ? _value.childCheckUpType
          : childCheckUpType // ignore: cast_nullable_to_non_nullable
              as int,
      checkupDay: null == checkupDay
          ? _value.checkupDay
          : checkupDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      checkUpShortName: null == checkUpShortName
          ? _value.checkUpShortName
          : checkUpShortName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildCheckupModelCopyWith<$Res>
    implements $ChildCheckupModelCopyWith<$Res> {
  factory _$$_ChildCheckupModelCopyWith(_$_ChildCheckupModel value,
          $Res Function(_$_ChildCheckupModel) then) =
      __$$_ChildCheckupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_checkup_record_id') int childCheckupId,
      @JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'child_checkup_type_id') int childCheckUpType,
      @DateTimeConverter() @JsonKey(name: 'checkup_day') DateTime checkupDay,
      @JsonKey(name: 'checkup_short_name') String checkUpShortName});
}

/// @nodoc
class __$$_ChildCheckupModelCopyWithImpl<$Res>
    extends _$ChildCheckupModelCopyWithImpl<$Res, _$_ChildCheckupModel>
    implements _$$_ChildCheckupModelCopyWith<$Res> {
  __$$_ChildCheckupModelCopyWithImpl(
      _$_ChildCheckupModel _value, $Res Function(_$_ChildCheckupModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childCheckupId = null,
    Object? childId = null,
    Object? childCheckUpType = null,
    Object? checkupDay = null,
    Object? checkUpShortName = null,
  }) {
    return _then(_$_ChildCheckupModel(
      childCheckupId: null == childCheckupId
          ? _value.childCheckupId
          : childCheckupId // ignore: cast_nullable_to_non_nullable
              as int,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      childCheckUpType: null == childCheckUpType
          ? _value.childCheckUpType
          : childCheckUpType // ignore: cast_nullable_to_non_nullable
              as int,
      checkupDay: null == checkupDay
          ? _value.checkupDay
          : checkupDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      checkUpShortName: null == checkUpShortName
          ? _value.checkUpShortName
          : checkUpShortName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildCheckupModel implements _ChildCheckupModel {
  const _$_ChildCheckupModel(
      {@JsonKey(name: 'child_checkup_record_id')
          required this.childCheckupId,
      @JsonKey(name: 'child_id')
          required this.childId,
      @JsonKey(name: 'child_checkup_type_id')
          required this.childCheckUpType,
      @DateTimeConverter()
      @JsonKey(name: 'checkup_day')
          required this.checkupDay,
      @JsonKey(name: 'checkup_short_name')
          required this.checkUpShortName});

  factory _$_ChildCheckupModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChildCheckupModelFromJson(json);

  @override
  @JsonKey(name: 'child_checkup_record_id')
  final int childCheckupId;
// nullなら新規登録
  @override
  @JsonKey(name: 'child_id')
  final int childId;
  @override
  @JsonKey(name: 'child_checkup_type_id')
  final int childCheckUpType;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'checkup_day')
  final DateTime checkupDay;
  @override
  @JsonKey(name: 'checkup_short_name')
  final String checkUpShortName;

  @override
  String toString() {
    return 'ChildCheckupModel(childCheckupId: $childCheckupId, childId: $childId, childCheckUpType: $childCheckUpType, checkupDay: $checkupDay, checkUpShortName: $checkUpShortName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildCheckupModel &&
            (identical(other.childCheckupId, childCheckupId) ||
                other.childCheckupId == childCheckupId) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.childCheckUpType, childCheckUpType) ||
                other.childCheckUpType == childCheckUpType) &&
            (identical(other.checkupDay, checkupDay) ||
                other.checkupDay == checkupDay) &&
            (identical(other.checkUpShortName, checkUpShortName) ||
                other.checkUpShortName == checkUpShortName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, childCheckupId, childId,
      childCheckUpType, checkupDay, checkUpShortName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildCheckupModelCopyWith<_$_ChildCheckupModel> get copyWith =>
      __$$_ChildCheckupModelCopyWithImpl<_$_ChildCheckupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildCheckupModelToJson(
      this,
    );
  }
}

abstract class _ChildCheckupModel implements ChildCheckupModel {
  const factory _ChildCheckupModel(
      {@JsonKey(name: 'child_checkup_record_id')
          required final int childCheckupId,
      @JsonKey(name: 'child_id')
          required final int childId,
      @JsonKey(name: 'child_checkup_type_id')
          required final int childCheckUpType,
      @DateTimeConverter()
      @JsonKey(name: 'checkup_day')
          required final DateTime checkupDay,
      @JsonKey(name: 'checkup_short_name')
          required final String checkUpShortName}) = _$_ChildCheckupModel;

  factory _ChildCheckupModel.fromJson(Map<String, dynamic> json) =
      _$_ChildCheckupModel.fromJson;

  @override
  @JsonKey(name: 'child_checkup_record_id')
  int get childCheckupId;
  @override // nullなら新規登録
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'child_checkup_type_id')
  int get childCheckUpType;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'checkup_day')
  DateTime get checkupDay;
  @override
  @JsonKey(name: 'checkup_short_name')
  String get checkUpShortName;
  @override
  @JsonKey(ignore: true)
  _$$_ChildCheckupModelCopyWith<_$_ChildCheckupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

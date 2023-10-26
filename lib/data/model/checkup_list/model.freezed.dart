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

CheckupListModel _$CheckupListModelFromJson(Map<String, dynamic> json) {
  return _ChildCheckupListModel.fromJson(json);
}

/// @nodoc
mixin _$CheckupListModel {
  List<CheckupModel> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckupListModelCopyWith<CheckupListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckupListModelCopyWith<$Res> {
  factory $CheckupListModelCopyWith(
          CheckupListModel value, $Res Function(CheckupListModel) then) =
      _$CheckupListModelCopyWithImpl<$Res, CheckupListModel>;
  @useResult
  $Res call({List<CheckupModel> list});
}

/// @nodoc
class _$CheckupListModelCopyWithImpl<$Res, $Val extends CheckupListModel>
    implements $CheckupListModelCopyWith<$Res> {
  _$CheckupListModelCopyWithImpl(this._value, this._then);

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
              as List<CheckupModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildCheckupListModelCopyWith<$Res>
    implements $CheckupListModelCopyWith<$Res> {
  factory _$$_ChildCheckupListModelCopyWith(_$_ChildCheckupListModel value,
          $Res Function(_$_ChildCheckupListModel) then) =
      __$$_ChildCheckupListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CheckupModel> list});
}

/// @nodoc
class __$$_ChildCheckupListModelCopyWithImpl<$Res>
    extends _$CheckupListModelCopyWithImpl<$Res, _$_ChildCheckupListModel>
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
              as List<CheckupModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildCheckupListModel implements _ChildCheckupListModel {
  const _$_ChildCheckupListModel({required final List<CheckupModel> list})
      : _list = list;

  factory _$_ChildCheckupListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChildCheckupListModelFromJson(json);

  final List<CheckupModel> _list;
  @override
  List<CheckupModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'CheckupListModel(list: $list)';
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

abstract class _ChildCheckupListModel implements CheckupListModel {
  const factory _ChildCheckupListModel(
      {required final List<CheckupModel> list}) = _$_ChildCheckupListModel;

  factory _ChildCheckupListModel.fromJson(Map<String, dynamic> json) =
      _$_ChildCheckupListModel.fromJson;

  @override
  List<CheckupModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ChildCheckupListModelCopyWith<_$_ChildCheckupListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckupModel _$CheckupModelFromJson(Map<String, dynamic> json) {
  return _ChildCheckupModel.fromJson(json);
}

/// @nodoc
mixin _$CheckupModel {
  @JsonKey(name: 'mother_checkup_record_id')
  int? get checkupId => throw _privateConstructorUsedError; // nullなら新規登録
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkup_day')
  String get checkupDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckupModelCopyWith<CheckupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckupModelCopyWith<$Res> {
  factory $CheckupModelCopyWith(
          CheckupModel value, $Res Function(CheckupModel) then) =
      _$CheckupModelCopyWithImpl<$Res, CheckupModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mother_checkup_record_id') int? checkupId,
      @JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'checkup_day') String checkupDay});
}

/// @nodoc
class _$CheckupModelCopyWithImpl<$Res, $Val extends CheckupModel>
    implements $CheckupModelCopyWith<$Res> {
  _$CheckupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkupId = freezed,
    Object? childId = null,
    Object? checkupDay = null,
  }) {
    return _then(_value.copyWith(
      checkupId: freezed == checkupId
          ? _value.checkupId
          : checkupId // ignore: cast_nullable_to_non_nullable
              as int?,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      checkupDay: null == checkupDay
          ? _value.checkupDay
          : checkupDay // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildCheckupModelCopyWith<$Res>
    implements $CheckupModelCopyWith<$Res> {
  factory _$$_ChildCheckupModelCopyWith(_$_ChildCheckupModel value,
          $Res Function(_$_ChildCheckupModel) then) =
      __$$_ChildCheckupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mother_checkup_record_id') int? checkupId,
      @JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'checkup_day') String checkupDay});
}

/// @nodoc
class __$$_ChildCheckupModelCopyWithImpl<$Res>
    extends _$CheckupModelCopyWithImpl<$Res, _$_ChildCheckupModel>
    implements _$$_ChildCheckupModelCopyWith<$Res> {
  __$$_ChildCheckupModelCopyWithImpl(
      _$_ChildCheckupModel _value, $Res Function(_$_ChildCheckupModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkupId = freezed,
    Object? childId = null,
    Object? checkupDay = null,
  }) {
    return _then(_$_ChildCheckupModel(
      checkupId: freezed == checkupId
          ? _value.checkupId
          : checkupId // ignore: cast_nullable_to_non_nullable
              as int?,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      checkupDay: null == checkupDay
          ? _value.checkupDay
          : checkupDay // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChildCheckupModel implements _ChildCheckupModel {
  const _$_ChildCheckupModel(
      {@JsonKey(name: 'mother_checkup_record_id') required this.checkupId,
      @JsonKey(name: 'child_id') required this.childId,
      @JsonKey(name: 'checkup_day') required this.checkupDay});

  factory _$_ChildCheckupModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChildCheckupModelFromJson(json);

  @override
  @JsonKey(name: 'mother_checkup_record_id')
  final int? checkupId;
// nullなら新規登録
  @override
  @JsonKey(name: 'child_id')
  final int childId;
  @override
  @JsonKey(name: 'checkup_day')
  final String checkupDay;

  @override
  String toString() {
    return 'CheckupModel(checkupId: $checkupId, childId: $childId, checkupDay: $checkupDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildCheckupModel &&
            (identical(other.checkupId, checkupId) ||
                other.checkupId == checkupId) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.checkupDay, checkupDay) ||
                other.checkupDay == checkupDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, checkupId, childId, checkupDay);

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

abstract class _ChildCheckupModel implements CheckupModel {
  const factory _ChildCheckupModel(
      {@JsonKey(name: 'mother_checkup_record_id')
          required final int? checkupId,
      @JsonKey(name: 'child_id')
          required final int childId,
      @JsonKey(name: 'checkup_day')
          required final String checkupDay}) = _$_ChildCheckupModel;

  factory _ChildCheckupModel.fromJson(Map<String, dynamic> json) =
      _$_ChildCheckupModel.fromJson;

  @override
  @JsonKey(name: 'mother_checkup_record_id')
  int? get checkupId;
  @override // nullなら新規登録
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'checkup_day')
  String get checkupDay;
  @override
  @JsonKey(ignore: true)
  _$$_ChildCheckupModelCopyWith<_$_ChildCheckupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

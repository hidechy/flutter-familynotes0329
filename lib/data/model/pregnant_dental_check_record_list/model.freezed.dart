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

/// @nodoc
mixin _$PregnantDentalCheckRecordListModel {
  List<PregnantDentalCheckRecordModel> get list =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PregnantDentalCheckRecordListModelCopyWith<
          PregnantDentalCheckRecordListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregnantDentalCheckRecordListModelCopyWith<$Res> {
  factory $PregnantDentalCheckRecordListModelCopyWith(
          PregnantDentalCheckRecordListModel value,
          $Res Function(PregnantDentalCheckRecordListModel) then) =
      _$PregnantDentalCheckRecordListModelCopyWithImpl<$Res,
          PregnantDentalCheckRecordListModel>;
  @useResult
  $Res call({List<PregnantDentalCheckRecordModel> list});
}

/// @nodoc
class _$PregnantDentalCheckRecordListModelCopyWithImpl<$Res,
        $Val extends PregnantDentalCheckRecordListModel>
    implements $PregnantDentalCheckRecordListModelCopyWith<$Res> {
  _$PregnantDentalCheckRecordListModelCopyWithImpl(this._value, this._then);

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
              as List<PregnantDentalCheckRecordModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PregnantDentalCheckRecordListModelCopyWith<$Res>
    implements $PregnantDentalCheckRecordListModelCopyWith<$Res> {
  factory _$$_PregnantDentalCheckRecordListModelCopyWith(
          _$_PregnantDentalCheckRecordListModel value,
          $Res Function(_$_PregnantDentalCheckRecordListModel) then) =
      __$$_PregnantDentalCheckRecordListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PregnantDentalCheckRecordModel> list});
}

/// @nodoc
class __$$_PregnantDentalCheckRecordListModelCopyWithImpl<$Res>
    extends _$PregnantDentalCheckRecordListModelCopyWithImpl<$Res,
        _$_PregnantDentalCheckRecordListModel>
    implements _$$_PregnantDentalCheckRecordListModelCopyWith<$Res> {
  __$$_PregnantDentalCheckRecordListModelCopyWithImpl(
      _$_PregnantDentalCheckRecordListModel _value,
      $Res Function(_$_PregnantDentalCheckRecordListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_PregnantDentalCheckRecordListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PregnantDentalCheckRecordModel>,
    ));
  }
}

/// @nodoc

class _$_PregnantDentalCheckRecordListModel
    implements _PregnantDentalCheckRecordListModel {
  const _$_PregnantDentalCheckRecordListModel(
      {required final List<PregnantDentalCheckRecordModel> list})
      : _list = list;

  final List<PregnantDentalCheckRecordModel> _list;
  @override
  List<PregnantDentalCheckRecordModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'PregnantDentalCheckRecordListModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PregnantDentalCheckRecordListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PregnantDentalCheckRecordListModelCopyWith<
          _$_PregnantDentalCheckRecordListModel>
      get copyWith => __$$_PregnantDentalCheckRecordListModelCopyWithImpl<
          _$_PregnantDentalCheckRecordListModel>(this, _$identity);
}

abstract class _PregnantDentalCheckRecordListModel
    implements PregnantDentalCheckRecordListModel {
  const factory _PregnantDentalCheckRecordListModel(
          {required final List<PregnantDentalCheckRecordModel> list}) =
      _$_PregnantDentalCheckRecordListModel;

  @override
  List<PregnantDentalCheckRecordModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_PregnantDentalCheckRecordListModelCopyWith<
          _$_PregnantDentalCheckRecordListModel>
      get copyWith => throw _privateConstructorUsedError;
}

PregnantDentalCheckRecordModel _$PregnantDentalCheckRecordModelFromJson(
    Map<String, dynamic> json) {
  return _PregnantDentalCheckRecordModel.fromJson(json);
}

/// @nodoc
mixin _$PregnantDentalCheckRecordModel {
  @JsonKey(name: 'mother_dental_checkup_record_id')
  int get motherDentalCheckupRecordId => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkup_day')
  String get checkupDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PregnantDentalCheckRecordModelCopyWith<PregnantDentalCheckRecordModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PregnantDentalCheckRecordModelCopyWith<$Res> {
  factory $PregnantDentalCheckRecordModelCopyWith(
          PregnantDentalCheckRecordModel value,
          $Res Function(PregnantDentalCheckRecordModel) then) =
      _$PregnantDentalCheckRecordModelCopyWithImpl<$Res,
          PregnantDentalCheckRecordModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mother_dental_checkup_record_id')
          int motherDentalCheckupRecordId,
      @JsonKey(name: 'child_id')
          int childId,
      @JsonKey(name: 'checkup_day')
          String checkupDay});
}

/// @nodoc
class _$PregnantDentalCheckRecordModelCopyWithImpl<$Res,
        $Val extends PregnantDentalCheckRecordModel>
    implements $PregnantDentalCheckRecordModelCopyWith<$Res> {
  _$PregnantDentalCheckRecordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? motherDentalCheckupRecordId = null,
    Object? childId = null,
    Object? checkupDay = null,
  }) {
    return _then(_value.copyWith(
      motherDentalCheckupRecordId: null == motherDentalCheckupRecordId
          ? _value.motherDentalCheckupRecordId
          : motherDentalCheckupRecordId // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_PregnantDentalCheckRecordModelCopyWith<$Res>
    implements $PregnantDentalCheckRecordModelCopyWith<$Res> {
  factory _$$_PregnantDentalCheckRecordModelCopyWith(
          _$_PregnantDentalCheckRecordModel value,
          $Res Function(_$_PregnantDentalCheckRecordModel) then) =
      __$$_PregnantDentalCheckRecordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mother_dental_checkup_record_id')
          int motherDentalCheckupRecordId,
      @JsonKey(name: 'child_id')
          int childId,
      @JsonKey(name: 'checkup_day')
          String checkupDay});
}

/// @nodoc
class __$$_PregnantDentalCheckRecordModelCopyWithImpl<$Res>
    extends _$PregnantDentalCheckRecordModelCopyWithImpl<$Res,
        _$_PregnantDentalCheckRecordModel>
    implements _$$_PregnantDentalCheckRecordModelCopyWith<$Res> {
  __$$_PregnantDentalCheckRecordModelCopyWithImpl(
      _$_PregnantDentalCheckRecordModel _value,
      $Res Function(_$_PregnantDentalCheckRecordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? motherDentalCheckupRecordId = null,
    Object? childId = null,
    Object? checkupDay = null,
  }) {
    return _then(_$_PregnantDentalCheckRecordModel(
      motherDentalCheckupRecordId: null == motherDentalCheckupRecordId
          ? _value.motherDentalCheckupRecordId
          : motherDentalCheckupRecordId // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_PregnantDentalCheckRecordModel
    implements _PregnantDentalCheckRecordModel {
  const _$_PregnantDentalCheckRecordModel(
      {@JsonKey(name: 'mother_dental_checkup_record_id')
          required this.motherDentalCheckupRecordId,
      @JsonKey(name: 'child_id')
          required this.childId,
      @JsonKey(name: 'checkup_day')
          required this.checkupDay});

  factory _$_PregnantDentalCheckRecordModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_PregnantDentalCheckRecordModelFromJson(json);

  @override
  @JsonKey(name: 'mother_dental_checkup_record_id')
  final int motherDentalCheckupRecordId;
  @override
  @JsonKey(name: 'child_id')
  final int childId;
  @override
  @JsonKey(name: 'checkup_day')
  final String checkupDay;

  @override
  String toString() {
    return 'PregnantDentalCheckRecordModel(motherDentalCheckupRecordId: $motherDentalCheckupRecordId, childId: $childId, checkupDay: $checkupDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PregnantDentalCheckRecordModel &&
            (identical(other.motherDentalCheckupRecordId,
                    motherDentalCheckupRecordId) ||
                other.motherDentalCheckupRecordId ==
                    motherDentalCheckupRecordId) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.checkupDay, checkupDay) ||
                other.checkupDay == checkupDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, motherDentalCheckupRecordId, childId, checkupDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PregnantDentalCheckRecordModelCopyWith<_$_PregnantDentalCheckRecordModel>
      get copyWith => __$$_PregnantDentalCheckRecordModelCopyWithImpl<
          _$_PregnantDentalCheckRecordModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PregnantDentalCheckRecordModelToJson(
      this,
    );
  }
}

abstract class _PregnantDentalCheckRecordModel
    implements PregnantDentalCheckRecordModel {
  const factory _PregnantDentalCheckRecordModel(
          {@JsonKey(name: 'mother_dental_checkup_record_id')
              required final int motherDentalCheckupRecordId,
          @JsonKey(name: 'child_id')
              required final int childId,
          @JsonKey(name: 'checkup_day')
              required final String checkupDay}) =
      _$_PregnantDentalCheckRecordModel;

  factory _PregnantDentalCheckRecordModel.fromJson(Map<String, dynamic> json) =
      _$_PregnantDentalCheckRecordModel.fromJson;

  @override
  @JsonKey(name: 'mother_dental_checkup_record_id')
  int get motherDentalCheckupRecordId;
  @override
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'checkup_day')
  String get checkupDay;
  @override
  @JsonKey(ignore: true)
  _$$_PregnantDentalCheckRecordModelCopyWith<_$_PregnantDentalCheckRecordModel>
      get copyWith => throw _privateConstructorUsedError;
}

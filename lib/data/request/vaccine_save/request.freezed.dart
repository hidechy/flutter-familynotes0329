// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VaccineSaveRequest _$VaccineSaveRequestFromJson(Map<String, dynamic> json) {
  return _VaccineSaveRequest.fromJson(json);
}

/// @nodoc
mixin _$VaccineSaveRequest {
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaccine_type_id')
  int get vaccineTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaccine_sub_type_id')
  int get vaccineSubTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'what_time')
  int get whatTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'set_at')
  String get setAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineSaveRequestCopyWith<VaccineSaveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineSaveRequestCopyWith<$Res> {
  factory $VaccineSaveRequestCopyWith(
          VaccineSaveRequest value, $Res Function(VaccineSaveRequest) then) =
      _$VaccineSaveRequestCopyWithImpl<$Res, VaccineSaveRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'vaccine_type_id') int vaccineTypeId,
      @JsonKey(name: 'vaccine_sub_type_id') int vaccineSubTypeId,
      @JsonKey(name: 'what_time') int whatTime,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'set_at') String setAt});
}

/// @nodoc
class _$VaccineSaveRequestCopyWithImpl<$Res, $Val extends VaccineSaveRequest>
    implements $VaccineSaveRequestCopyWith<$Res> {
  _$VaccineSaveRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? vaccineTypeId = null,
    Object? vaccineSubTypeId = null,
    Object? whatTime = null,
    Object? status = null,
    Object? setAt = null,
  }) {
    return _then(_value.copyWith(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineTypeId: null == vaccineTypeId
          ? _value.vaccineTypeId
          : vaccineTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineSubTypeId: null == vaccineSubTypeId
          ? _value.vaccineSubTypeId
          : vaccineSubTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      whatTime: null == whatTime
          ? _value.whatTime
          : whatTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      setAt: null == setAt
          ? _value.setAt
          : setAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineSaveRequestCopyWith<$Res>
    implements $VaccineSaveRequestCopyWith<$Res> {
  factory _$$_VaccineSaveRequestCopyWith(_$_VaccineSaveRequest value,
          $Res Function(_$_VaccineSaveRequest) then) =
      __$$_VaccineSaveRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'vaccine_type_id') int vaccineTypeId,
      @JsonKey(name: 'vaccine_sub_type_id') int vaccineSubTypeId,
      @JsonKey(name: 'what_time') int whatTime,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'set_at') String setAt});
}

/// @nodoc
class __$$_VaccineSaveRequestCopyWithImpl<$Res>
    extends _$VaccineSaveRequestCopyWithImpl<$Res, _$_VaccineSaveRequest>
    implements _$$_VaccineSaveRequestCopyWith<$Res> {
  __$$_VaccineSaveRequestCopyWithImpl(
      _$_VaccineSaveRequest _value, $Res Function(_$_VaccineSaveRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? vaccineTypeId = null,
    Object? vaccineSubTypeId = null,
    Object? whatTime = null,
    Object? status = null,
    Object? setAt = null,
  }) {
    return _then(_$_VaccineSaveRequest(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineTypeId: null == vaccineTypeId
          ? _value.vaccineTypeId
          : vaccineTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineSubTypeId: null == vaccineSubTypeId
          ? _value.vaccineSubTypeId
          : vaccineSubTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      whatTime: null == whatTime
          ? _value.whatTime
          : whatTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      setAt: null == setAt
          ? _value.setAt
          : setAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineSaveRequest implements _VaccineSaveRequest {
  const _$_VaccineSaveRequest(
      {@JsonKey(name: 'child_id') required this.childId,
      @JsonKey(name: 'vaccine_type_id') required this.vaccineTypeId,
      @JsonKey(name: 'vaccine_sub_type_id') required this.vaccineSubTypeId,
      @JsonKey(name: 'what_time') required this.whatTime,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'set_at') required this.setAt});

  factory _$_VaccineSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineSaveRequestFromJson(json);

  @override
  @JsonKey(name: 'child_id')
  final int childId;
  @override
  @JsonKey(name: 'vaccine_type_id')
  final int vaccineTypeId;
  @override
  @JsonKey(name: 'vaccine_sub_type_id')
  final int vaccineSubTypeId;
  @override
  @JsonKey(name: 'what_time')
  final int whatTime;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'set_at')
  final String setAt;

  @override
  String toString() {
    return 'VaccineSaveRequest(childId: $childId, vaccineTypeId: $vaccineTypeId, vaccineSubTypeId: $vaccineSubTypeId, whatTime: $whatTime, status: $status, setAt: $setAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineSaveRequest &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.vaccineTypeId, vaccineTypeId) ||
                other.vaccineTypeId == vaccineTypeId) &&
            (identical(other.vaccineSubTypeId, vaccineSubTypeId) ||
                other.vaccineSubTypeId == vaccineSubTypeId) &&
            (identical(other.whatTime, whatTime) ||
                other.whatTime == whatTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.setAt, setAt) || other.setAt == setAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, childId, vaccineTypeId,
      vaccineSubTypeId, whatTime, status, setAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineSaveRequestCopyWith<_$_VaccineSaveRequest> get copyWith =>
      __$$_VaccineSaveRequestCopyWithImpl<_$_VaccineSaveRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineSaveRequestToJson(
      this,
    );
  }
}

abstract class _VaccineSaveRequest implements VaccineSaveRequest {
  const factory _VaccineSaveRequest(
      {@JsonKey(name: 'child_id')
          required final int childId,
      @JsonKey(name: 'vaccine_type_id')
          required final int vaccineTypeId,
      @JsonKey(name: 'vaccine_sub_type_id')
          required final int vaccineSubTypeId,
      @JsonKey(name: 'what_time')
          required final int whatTime,
      @JsonKey(name: 'status')
          required final String status,
      @JsonKey(name: 'set_at')
          required final String setAt}) = _$_VaccineSaveRequest;

  factory _VaccineSaveRequest.fromJson(Map<String, dynamic> json) =
      _$_VaccineSaveRequest.fromJson;

  @override
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'vaccine_type_id')
  int get vaccineTypeId;
  @override
  @JsonKey(name: 'vaccine_sub_type_id')
  int get vaccineSubTypeId;
  @override
  @JsonKey(name: 'what_time')
  int get whatTime;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'set_at')
  String get setAt;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineSaveRequestCopyWith<_$_VaccineSaveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

VaccineSaveListRequest _$VaccineSaveListRequestFromJson(
    Map<String, dynamic> json) {
  return _VaccineSaveListRequest.fromJson(json);
}

/// @nodoc
mixin _$VaccineSaveListRequest {
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaccine_type_id')
  int get vaccineTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'list')
  List<VaccineSaveItem> get saveList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineSaveListRequestCopyWith<VaccineSaveListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineSaveListRequestCopyWith<$Res> {
  factory $VaccineSaveListRequestCopyWith(VaccineSaveListRequest value,
          $Res Function(VaccineSaveListRequest) then) =
      _$VaccineSaveListRequestCopyWithImpl<$Res, VaccineSaveListRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'vaccine_type_id') int vaccineTypeId,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'list') List<VaccineSaveItem> saveList});
}

/// @nodoc
class _$VaccineSaveListRequestCopyWithImpl<$Res,
        $Val extends VaccineSaveListRequest>
    implements $VaccineSaveListRequestCopyWith<$Res> {
  _$VaccineSaveListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? vaccineTypeId = null,
    Object? status = null,
    Object? saveList = null,
  }) {
    return _then(_value.copyWith(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineTypeId: null == vaccineTypeId
          ? _value.vaccineTypeId
          : vaccineTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      saveList: null == saveList
          ? _value.saveList
          : saveList // ignore: cast_nullable_to_non_nullable
              as List<VaccineSaveItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineSaveListRequestCopyWith<$Res>
    implements $VaccineSaveListRequestCopyWith<$Res> {
  factory _$$_VaccineSaveListRequestCopyWith(_$_VaccineSaveListRequest value,
          $Res Function(_$_VaccineSaveListRequest) then) =
      __$$_VaccineSaveListRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'vaccine_type_id') int vaccineTypeId,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'list') List<VaccineSaveItem> saveList});
}

/// @nodoc
class __$$_VaccineSaveListRequestCopyWithImpl<$Res>
    extends _$VaccineSaveListRequestCopyWithImpl<$Res,
        _$_VaccineSaveListRequest>
    implements _$$_VaccineSaveListRequestCopyWith<$Res> {
  __$$_VaccineSaveListRequestCopyWithImpl(_$_VaccineSaveListRequest _value,
      $Res Function(_$_VaccineSaveListRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? vaccineTypeId = null,
    Object? status = null,
    Object? saveList = null,
  }) {
    return _then(_$_VaccineSaveListRequest(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineTypeId: null == vaccineTypeId
          ? _value.vaccineTypeId
          : vaccineTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      saveList: null == saveList
          ? _value._saveList
          : saveList // ignore: cast_nullable_to_non_nullable
              as List<VaccineSaveItem>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_VaccineSaveListRequest implements _VaccineSaveListRequest {
  const _$_VaccineSaveListRequest(
      {@JsonKey(name: 'child_id') required this.childId,
      @JsonKey(name: 'vaccine_type_id') required this.vaccineTypeId,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'list') required final List<VaccineSaveItem> saveList})
      : _saveList = saveList;

  factory _$_VaccineSaveListRequest.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineSaveListRequestFromJson(json);

  @override
  @JsonKey(name: 'child_id')
  final int childId;
  @override
  @JsonKey(name: 'vaccine_type_id')
  final int vaccineTypeId;
  @override
  @JsonKey(name: 'status')
  final String status;
  final List<VaccineSaveItem> _saveList;
  @override
  @JsonKey(name: 'list')
  List<VaccineSaveItem> get saveList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saveList);
  }

  @override
  String toString() {
    return 'VaccineSaveListRequest(childId: $childId, vaccineTypeId: $vaccineTypeId, status: $status, saveList: $saveList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineSaveListRequest &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.vaccineTypeId, vaccineTypeId) ||
                other.vaccineTypeId == vaccineTypeId) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._saveList, _saveList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, childId, vaccineTypeId, status,
      const DeepCollectionEquality().hash(_saveList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineSaveListRequestCopyWith<_$_VaccineSaveListRequest> get copyWith =>
      __$$_VaccineSaveListRequestCopyWithImpl<_$_VaccineSaveListRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineSaveListRequestToJson(
      this,
    );
  }
}

abstract class _VaccineSaveListRequest implements VaccineSaveListRequest {
  const factory _VaccineSaveListRequest(
          {@JsonKey(name: 'child_id')
              required final int childId,
          @JsonKey(name: 'vaccine_type_id')
              required final int vaccineTypeId,
          @JsonKey(name: 'status')
              required final String status,
          @JsonKey(name: 'list')
              required final List<VaccineSaveItem> saveList}) =
      _$_VaccineSaveListRequest;

  factory _VaccineSaveListRequest.fromJson(Map<String, dynamic> json) =
      _$_VaccineSaveListRequest.fromJson;

  @override
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'vaccine_type_id')
  int get vaccineTypeId;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'list')
  List<VaccineSaveItem> get saveList;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineSaveListRequestCopyWith<_$_VaccineSaveListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

VaccineSaveItem _$VaccineSaveItemFromJson(Map<String, dynamic> json) {
  return _VaccineSaveItem.fromJson(json);
}

/// @nodoc
mixin _$VaccineSaveItem {
  @JsonKey(name: 'vaccine_sub_type_id')
  int get vaccineSubTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'what_time')
  int get whatTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'set_at')
  String get setAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineSaveItemCopyWith<VaccineSaveItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineSaveItemCopyWith<$Res> {
  factory $VaccineSaveItemCopyWith(
          VaccineSaveItem value, $Res Function(VaccineSaveItem) then) =
      _$VaccineSaveItemCopyWithImpl<$Res, VaccineSaveItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vaccine_sub_type_id') int vaccineSubTypeId,
      @JsonKey(name: 'what_time') int whatTime,
      @JsonKey(name: 'set_at') String setAt});
}

/// @nodoc
class _$VaccineSaveItemCopyWithImpl<$Res, $Val extends VaccineSaveItem>
    implements $VaccineSaveItemCopyWith<$Res> {
  _$VaccineSaveItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineSubTypeId = null,
    Object? whatTime = null,
    Object? setAt = null,
  }) {
    return _then(_value.copyWith(
      vaccineSubTypeId: null == vaccineSubTypeId
          ? _value.vaccineSubTypeId
          : vaccineSubTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      whatTime: null == whatTime
          ? _value.whatTime
          : whatTime // ignore: cast_nullable_to_non_nullable
              as int,
      setAt: null == setAt
          ? _value.setAt
          : setAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaccineSaveItemCopyWith<$Res>
    implements $VaccineSaveItemCopyWith<$Res> {
  factory _$$_VaccineSaveItemCopyWith(
          _$_VaccineSaveItem value, $Res Function(_$_VaccineSaveItem) then) =
      __$$_VaccineSaveItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vaccine_sub_type_id') int vaccineSubTypeId,
      @JsonKey(name: 'what_time') int whatTime,
      @JsonKey(name: 'set_at') String setAt});
}

/// @nodoc
class __$$_VaccineSaveItemCopyWithImpl<$Res>
    extends _$VaccineSaveItemCopyWithImpl<$Res, _$_VaccineSaveItem>
    implements _$$_VaccineSaveItemCopyWith<$Res> {
  __$$_VaccineSaveItemCopyWithImpl(
      _$_VaccineSaveItem _value, $Res Function(_$_VaccineSaveItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineSubTypeId = null,
    Object? whatTime = null,
    Object? setAt = null,
  }) {
    return _then(_$_VaccineSaveItem(
      vaccineSubTypeId: null == vaccineSubTypeId
          ? _value.vaccineSubTypeId
          : vaccineSubTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      whatTime: null == whatTime
          ? _value.whatTime
          : whatTime // ignore: cast_nullable_to_non_nullable
              as int,
      setAt: null == setAt
          ? _value.setAt
          : setAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaccineSaveItem implements _VaccineSaveItem {
  const _$_VaccineSaveItem(
      {@JsonKey(name: 'vaccine_sub_type_id') required this.vaccineSubTypeId,
      @JsonKey(name: 'what_time') required this.whatTime,
      @JsonKey(name: 'set_at') required this.setAt});

  factory _$_VaccineSaveItem.fromJson(Map<String, dynamic> json) =>
      _$$_VaccineSaveItemFromJson(json);

  @override
  @JsonKey(name: 'vaccine_sub_type_id')
  final int vaccineSubTypeId;
  @override
  @JsonKey(name: 'what_time')
  final int whatTime;
  @override
  @JsonKey(name: 'set_at')
  final String setAt;

  @override
  String toString() {
    return 'VaccineSaveItem(vaccineSubTypeId: $vaccineSubTypeId, whatTime: $whatTime, setAt: $setAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaccineSaveItem &&
            (identical(other.vaccineSubTypeId, vaccineSubTypeId) ||
                other.vaccineSubTypeId == vaccineSubTypeId) &&
            (identical(other.whatTime, whatTime) ||
                other.whatTime == whatTime) &&
            (identical(other.setAt, setAt) || other.setAt == setAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, vaccineSubTypeId, whatTime, setAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaccineSaveItemCopyWith<_$_VaccineSaveItem> get copyWith =>
      __$$_VaccineSaveItemCopyWithImpl<_$_VaccineSaveItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaccineSaveItemToJson(
      this,
    );
  }
}

abstract class _VaccineSaveItem implements VaccineSaveItem {
  const factory _VaccineSaveItem(
      {@JsonKey(name: 'vaccine_sub_type_id')
          required final int vaccineSubTypeId,
      @JsonKey(name: 'what_time')
          required final int whatTime,
      @JsonKey(name: 'set_at')
          required final String setAt}) = _$_VaccineSaveItem;

  factory _VaccineSaveItem.fromJson(Map<String, dynamic> json) =
      _$_VaccineSaveItem.fromJson;

  @override
  @JsonKey(name: 'vaccine_sub_type_id')
  int get vaccineSubTypeId;
  @override
  @JsonKey(name: 'what_time')
  int get whatTime;
  @override
  @JsonKey(name: 'set_at')
  String get setAt;
  @override
  @JsonKey(ignore: true)
  _$$_VaccineSaveItemCopyWith<_$_VaccineSaveItem> get copyWith =>
      throw _privateConstructorUsedError;
}

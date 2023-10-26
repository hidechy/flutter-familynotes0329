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
mixin _$ChildListModel {
  List<ChildListItemModel> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildListModelCopyWith<ChildListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildListModelCopyWith<$Res> {
  factory $ChildListModelCopyWith(
          ChildListModel value, $Res Function(ChildListModel) then) =
      _$ChildListModelCopyWithImpl<$Res, ChildListModel>;
  @useResult
  $Res call({List<ChildListItemModel> list});
}

/// @nodoc
class _$ChildListModelCopyWithImpl<$Res, $Val extends ChildListModel>
    implements $ChildListModelCopyWith<$Res> {
  _$ChildListModelCopyWithImpl(this._value, this._then);

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
              as List<ChildListItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildListModelCopyWith<$Res>
    implements $ChildListModelCopyWith<$Res> {
  factory _$$_ChildListModelCopyWith(
          _$_ChildListModel value, $Res Function(_$_ChildListModel) then) =
      __$$_ChildListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChildListItemModel> list});
}

/// @nodoc
class __$$_ChildListModelCopyWithImpl<$Res>
    extends _$ChildListModelCopyWithImpl<$Res, _$_ChildListModel>
    implements _$$_ChildListModelCopyWith<$Res> {
  __$$_ChildListModelCopyWithImpl(
      _$_ChildListModel _value, $Res Function(_$_ChildListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_ChildListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ChildListItemModel>,
    ));
  }
}

/// @nodoc

class _$_ChildListModel implements _ChildListModel {
  const _$_ChildListModel({final List<ChildListItemModel> list = const []})
      : _list = list;

  final List<ChildListItemModel> _list;
  @override
  @JsonKey()
  List<ChildListItemModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ChildListModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildListModelCopyWith<_$_ChildListModel> get copyWith =>
      __$$_ChildListModelCopyWithImpl<_$_ChildListModel>(this, _$identity);
}

abstract class _ChildListModel implements ChildListModel {
  const factory _ChildListModel({final List<ChildListItemModel> list}) =
      _$_ChildListModel;

  @override
  List<ChildListItemModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ChildListModelCopyWith<_$_ChildListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildListItemModel _$ChildListItemModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'baby':
      return BabyChildListItemModel.fromJson(json);
    case 'child':
      return ChildChildListItemModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ChildListItemModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ChildListItemModel {
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'baby_nickname') String? babyNickname,
            @JsonKey(name: 'birth_schedule_date') String? birthScheduleDate)
        baby,
    required TResult Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'child_nickname') String? childNickname,
            int? gender,
            String? birthday,
            @JsonKey(name: 'month_from_birth') int? monthFromBirth)
        child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'baby_nickname') String? babyNickname,
            @JsonKey(name: 'birth_schedule_date') String? birthScheduleDate)?
        baby,
    TResult? Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'child_nickname') String? childNickname,
            int? gender,
            String? birthday,
            @JsonKey(name: 'month_from_birth') int? monthFromBirth)?
        child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'baby_nickname') String? babyNickname,
            @JsonKey(name: 'birth_schedule_date') String? birthScheduleDate)?
        baby,
    TResult Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'child_nickname') String? childNickname,
            int? gender,
            String? birthday,
            @JsonKey(name: 'month_from_birth') int? monthFromBirth)?
        child,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BabyChildListItemModel value) baby,
    required TResult Function(ChildChildListItemModel value) child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BabyChildListItemModel value)? baby,
    TResult? Function(ChildChildListItemModel value)? child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BabyChildListItemModel value)? baby,
    TResult Function(ChildChildListItemModel value)? child,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildListItemModelCopyWith<ChildListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildListItemModelCopyWith<$Res> {
  factory $ChildListItemModelCopyWith(
          ChildListItemModel value, $Res Function(ChildListItemModel) then) =
      _$ChildListItemModelCopyWithImpl<$Res, ChildListItemModel>;
  @useResult
  $Res call({String type, @JsonKey(name: 'child_id') int childId});
}

/// @nodoc
class _$ChildListItemModelCopyWithImpl<$Res, $Val extends ChildListItemModel>
    implements $ChildListItemModelCopyWith<$Res> {
  _$ChildListItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? childId = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BabyChildListItemModelCopyWith<$Res>
    implements $ChildListItemModelCopyWith<$Res> {
  factory _$$BabyChildListItemModelCopyWith(_$BabyChildListItemModel value,
          $Res Function(_$BabyChildListItemModel) then) =
      __$$BabyChildListItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      @JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'baby_nickname') String? babyNickname,
      @JsonKey(name: 'birth_schedule_date') String? birthScheduleDate});
}

/// @nodoc
class __$$BabyChildListItemModelCopyWithImpl<$Res>
    extends _$ChildListItemModelCopyWithImpl<$Res, _$BabyChildListItemModel>
    implements _$$BabyChildListItemModelCopyWith<$Res> {
  __$$BabyChildListItemModelCopyWithImpl(_$BabyChildListItemModel _value,
      $Res Function(_$BabyChildListItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? childId = null,
    Object? babyNickname = freezed,
    Object? birthScheduleDate = freezed,
  }) {
    return _then(_$BabyChildListItemModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      babyNickname: freezed == babyNickname
          ? _value.babyNickname
          : babyNickname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthScheduleDate: freezed == birthScheduleDate
          ? _value.birthScheduleDate
          : birthScheduleDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BabyChildListItemModel implements BabyChildListItemModel {
  const _$BabyChildListItemModel(
      {required this.type,
      @JsonKey(name: 'child_id') required this.childId,
      @JsonKey(name: 'baby_nickname') required this.babyNickname,
      @JsonKey(name: 'birth_schedule_date') this.birthScheduleDate,
      final String? $type})
      : $type = $type ?? 'baby';

  factory _$BabyChildListItemModel.fromJson(Map<String, dynamic> json) =>
      _$$BabyChildListItemModelFromJson(json);

  @override
  final String type;
  @override
  @JsonKey(name: 'child_id')
  final int childId;
  @override
  @JsonKey(name: 'baby_nickname')
  final String? babyNickname;
  @override
  @JsonKey(name: 'birth_schedule_date')
  final String? birthScheduleDate;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChildListItemModel.baby(type: $type, childId: $childId, babyNickname: $babyNickname, birthScheduleDate: $birthScheduleDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BabyChildListItemModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.babyNickname, babyNickname) ||
                other.babyNickname == babyNickname) &&
            (identical(other.birthScheduleDate, birthScheduleDate) ||
                other.birthScheduleDate == birthScheduleDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, childId, babyNickname, birthScheduleDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BabyChildListItemModelCopyWith<_$BabyChildListItemModel> get copyWith =>
      __$$BabyChildListItemModelCopyWithImpl<_$BabyChildListItemModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'baby_nickname') String? babyNickname,
            @JsonKey(name: 'birth_schedule_date') String? birthScheduleDate)
        baby,
    required TResult Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'child_nickname') String? childNickname,
            int? gender,
            String? birthday,
            @JsonKey(name: 'month_from_birth') int? monthFromBirth)
        child,
  }) {
    return baby(type, childId, babyNickname, birthScheduleDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'baby_nickname') String? babyNickname,
            @JsonKey(name: 'birth_schedule_date') String? birthScheduleDate)?
        baby,
    TResult? Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'child_nickname') String? childNickname,
            int? gender,
            String? birthday,
            @JsonKey(name: 'month_from_birth') int? monthFromBirth)?
        child,
  }) {
    return baby?.call(type, childId, babyNickname, birthScheduleDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'baby_nickname') String? babyNickname,
            @JsonKey(name: 'birth_schedule_date') String? birthScheduleDate)?
        baby,
    TResult Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'child_nickname') String? childNickname,
            int? gender,
            String? birthday,
            @JsonKey(name: 'month_from_birth') int? monthFromBirth)?
        child,
    required TResult orElse(),
  }) {
    if (baby != null) {
      return baby(type, childId, babyNickname, birthScheduleDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BabyChildListItemModel value) baby,
    required TResult Function(ChildChildListItemModel value) child,
  }) {
    return baby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BabyChildListItemModel value)? baby,
    TResult? Function(ChildChildListItemModel value)? child,
  }) {
    return baby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BabyChildListItemModel value)? baby,
    TResult Function(ChildChildListItemModel value)? child,
    required TResult orElse(),
  }) {
    if (baby != null) {
      return baby(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BabyChildListItemModelToJson(
      this,
    );
  }
}

abstract class BabyChildListItemModel implements ChildListItemModel {
  const factory BabyChildListItemModel(
      {required final String type,
      @JsonKey(name: 'child_id')
          required final int childId,
      @JsonKey(name: 'baby_nickname')
          required final String? babyNickname,
      @JsonKey(name: 'birth_schedule_date')
          final String? birthScheduleDate}) = _$BabyChildListItemModel;

  factory BabyChildListItemModel.fromJson(Map<String, dynamic> json) =
      _$BabyChildListItemModel.fromJson;

  @override
  String get type;
  @override
  @JsonKey(name: 'child_id')
  int get childId;
  @JsonKey(name: 'baby_nickname')
  String? get babyNickname;
  @JsonKey(name: 'birth_schedule_date')
  String? get birthScheduleDate;
  @override
  @JsonKey(ignore: true)
  _$$BabyChildListItemModelCopyWith<_$BabyChildListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChildChildListItemModelCopyWith<$Res>
    implements $ChildListItemModelCopyWith<$Res> {
  factory _$$ChildChildListItemModelCopyWith(_$ChildChildListItemModel value,
          $Res Function(_$ChildChildListItemModel) then) =
      __$$ChildChildListItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      @JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'child_nickname') String? childNickname,
      int? gender,
      String? birthday,
      @JsonKey(name: 'month_from_birth') int? monthFromBirth});
}

/// @nodoc
class __$$ChildChildListItemModelCopyWithImpl<$Res>
    extends _$ChildListItemModelCopyWithImpl<$Res, _$ChildChildListItemModel>
    implements _$$ChildChildListItemModelCopyWith<$Res> {
  __$$ChildChildListItemModelCopyWithImpl(_$ChildChildListItemModel _value,
      $Res Function(_$ChildChildListItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? childId = null,
    Object? childNickname = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? monthFromBirth = freezed,
  }) {
    return _then(_$ChildChildListItemModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      childNickname: freezed == childNickname
          ? _value.childNickname
          : childNickname // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      monthFromBirth: freezed == monthFromBirth
          ? _value.monthFromBirth
          : monthFromBirth // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildChildListItemModel implements ChildChildListItemModel {
  const _$ChildChildListItemModel(
      {required this.type,
      @JsonKey(name: 'child_id') required this.childId,
      @JsonKey(name: 'child_nickname') required this.childNickname,
      this.gender,
      this.birthday,
      @JsonKey(name: 'month_from_birth') this.monthFromBirth,
      final String? $type})
      : $type = $type ?? 'child';

  factory _$ChildChildListItemModel.fromJson(Map<String, dynamic> json) =>
      _$$ChildChildListItemModelFromJson(json);

  @override
  final String type;
  @override
  @JsonKey(name: 'child_id')
  final int childId;
  @override
  @JsonKey(name: 'child_nickname')
  final String? childNickname;
  @override
  final int? gender;
  @override
  final String? birthday;
  @override
  @JsonKey(name: 'month_from_birth')
  final int? monthFromBirth;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChildListItemModel.child(type: $type, childId: $childId, childNickname: $childNickname, gender: $gender, birthday: $birthday, monthFromBirth: $monthFromBirth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildChildListItemModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.childNickname, childNickname) ||
                other.childNickname == childNickname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.monthFromBirth, monthFromBirth) ||
                other.monthFromBirth == monthFromBirth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, childId, childNickname,
      gender, birthday, monthFromBirth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildChildListItemModelCopyWith<_$ChildChildListItemModel> get copyWith =>
      __$$ChildChildListItemModelCopyWithImpl<_$ChildChildListItemModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'baby_nickname') String? babyNickname,
            @JsonKey(name: 'birth_schedule_date') String? birthScheduleDate)
        baby,
    required TResult Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'child_nickname') String? childNickname,
            int? gender,
            String? birthday,
            @JsonKey(name: 'month_from_birth') int? monthFromBirth)
        child,
  }) {
    return child(
        type, childId, childNickname, gender, birthday, monthFromBirth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'baby_nickname') String? babyNickname,
            @JsonKey(name: 'birth_schedule_date') String? birthScheduleDate)?
        baby,
    TResult? Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'child_nickname') String? childNickname,
            int? gender,
            String? birthday,
            @JsonKey(name: 'month_from_birth') int? monthFromBirth)?
        child,
  }) {
    return child?.call(
        type, childId, childNickname, gender, birthday, monthFromBirth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'baby_nickname') String? babyNickname,
            @JsonKey(name: 'birth_schedule_date') String? birthScheduleDate)?
        baby,
    TResult Function(
            String type,
            @JsonKey(name: 'child_id') int childId,
            @JsonKey(name: 'child_nickname') String? childNickname,
            int? gender,
            String? birthday,
            @JsonKey(name: 'month_from_birth') int? monthFromBirth)?
        child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(
          type, childId, childNickname, gender, birthday, monthFromBirth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BabyChildListItemModel value) baby,
    required TResult Function(ChildChildListItemModel value) child,
  }) {
    return child(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BabyChildListItemModel value)? baby,
    TResult? Function(ChildChildListItemModel value)? child,
  }) {
    return child?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BabyChildListItemModel value)? baby,
    TResult Function(ChildChildListItemModel value)? child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildChildListItemModelToJson(
      this,
    );
  }
}

abstract class ChildChildListItemModel implements ChildListItemModel {
  const factory ChildChildListItemModel(
          {required final String type,
          @JsonKey(name: 'child_id') required final int childId,
          @JsonKey(name: 'child_nickname') required final String? childNickname,
          final int? gender,
          final String? birthday,
          @JsonKey(name: 'month_from_birth') final int? monthFromBirth}) =
      _$ChildChildListItemModel;

  factory ChildChildListItemModel.fromJson(Map<String, dynamic> json) =
      _$ChildChildListItemModel.fromJson;

  @override
  String get type;
  @override
  @JsonKey(name: 'child_id')
  int get childId;
  @JsonKey(name: 'child_nickname')
  String? get childNickname;
  int? get gender;
  String? get birthday;
  @JsonKey(name: 'month_from_birth')
  int? get monthFromBirth;
  @override
  @JsonKey(ignore: true)
  _$$ChildChildListItemModelCopyWith<_$ChildChildListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

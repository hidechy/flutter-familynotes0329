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
mixin _$ChildListStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ChildListItemData> itemList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ChildListItemData> itemList)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ChildListItemData> itemList)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChildListStatusInit value) init,
    required TResult Function(ChildListStatusLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChildListStatusInit value)? init,
    TResult? Function(ChildListStatusLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChildListStatusInit value)? init,
    TResult Function(ChildListStatusLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildListStatusCopyWith<$Res> {
  factory $ChildListStatusCopyWith(
          ChildListStatus value, $Res Function(ChildListStatus) then) =
      _$ChildListStatusCopyWithImpl<$Res, ChildListStatus>;
}

/// @nodoc
class _$ChildListStatusCopyWithImpl<$Res, $Val extends ChildListStatus>
    implements $ChildListStatusCopyWith<$Res> {
  _$ChildListStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChildListStatusInitCopyWith<$Res> {
  factory _$$ChildListStatusInitCopyWith(_$ChildListStatusInit value,
          $Res Function(_$ChildListStatusInit) then) =
      __$$ChildListStatusInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChildListStatusInitCopyWithImpl<$Res>
    extends _$ChildListStatusCopyWithImpl<$Res, _$ChildListStatusInit>
    implements _$$ChildListStatusInitCopyWith<$Res> {
  __$$ChildListStatusInitCopyWithImpl(
      _$ChildListStatusInit _value, $Res Function(_$ChildListStatusInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChildListStatusInit implements ChildListStatusInit {
  const _$ChildListStatusInit();

  @override
  String toString() {
    return 'ChildListStatus.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChildListStatusInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ChildListItemData> itemList) loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ChildListItemData> itemList)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ChildListItemData> itemList)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChildListStatusInit value) init,
    required TResult Function(ChildListStatusLoaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChildListStatusInit value)? init,
    TResult? Function(ChildListStatusLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChildListStatusInit value)? init,
    TResult Function(ChildListStatusLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ChildListStatusInit implements ChildListStatus {
  const factory ChildListStatusInit() = _$ChildListStatusInit;
}

/// @nodoc
abstract class _$$ChildListStatusLoadedCopyWith<$Res> {
  factory _$$ChildListStatusLoadedCopyWith(_$ChildListStatusLoaded value,
          $Res Function(_$ChildListStatusLoaded) then) =
      __$$ChildListStatusLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChildListItemData> itemList});
}

/// @nodoc
class __$$ChildListStatusLoadedCopyWithImpl<$Res>
    extends _$ChildListStatusCopyWithImpl<$Res, _$ChildListStatusLoaded>
    implements _$$ChildListStatusLoadedCopyWith<$Res> {
  __$$ChildListStatusLoadedCopyWithImpl(_$ChildListStatusLoaded _value,
      $Res Function(_$ChildListStatusLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemList = null,
  }) {
    return _then(_$ChildListStatusLoaded(
      itemList: null == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<ChildListItemData>,
    ));
  }
}

/// @nodoc

class _$ChildListStatusLoaded implements ChildListStatusLoaded {
  const _$ChildListStatusLoaded(
      {required final List<ChildListItemData> itemList})
      : _itemList = itemList;

// 一覧表示用の子どもデータリスト
  final List<ChildListItemData> _itemList;
// 一覧表示用の子どもデータリスト
  @override
  List<ChildListItemData> get itemList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  String toString() {
    return 'ChildListStatus.loaded(itemList: $itemList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildListStatusLoaded &&
            const DeepCollectionEquality().equals(other._itemList, _itemList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_itemList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildListStatusLoadedCopyWith<_$ChildListStatusLoaded> get copyWith =>
      __$$ChildListStatusLoadedCopyWithImpl<_$ChildListStatusLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<ChildListItemData> itemList) loaded,
  }) {
    return loaded(itemList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<ChildListItemData> itemList)? loaded,
  }) {
    return loaded?.call(itemList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<ChildListItemData> itemList)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(itemList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChildListStatusInit value) init,
    required TResult Function(ChildListStatusLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChildListStatusInit value)? init,
    TResult? Function(ChildListStatusLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChildListStatusInit value)? init,
    TResult Function(ChildListStatusLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ChildListStatusLoaded implements ChildListStatus {
  const factory ChildListStatusLoaded(
          {required final List<ChildListItemData> itemList}) =
      _$ChildListStatusLoaded;

// 一覧表示用の子どもデータリスト
  List<ChildListItemData> get itemList;
  @JsonKey(ignore: true)
  _$$ChildListStatusLoadedCopyWith<_$ChildListStatusLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChildListItemData {
  String get type => throw _privateConstructorUsedError;
  int get childId => throw _privateConstructorUsedError;

  /// 名前(ニックネーム)
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type, int childId, String name, DateTime? scheduledBirthday)
        baby,
    required TResult Function(String type, int childId, String name,
            Gender gender, DateTime? birthday, int? monthFromBirth)
        child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String type, int childId, String name, DateTime? scheduledBirthday)?
        baby,
    TResult? Function(String type, int childId, String name, Gender gender,
            DateTime? birthday, int? monthFromBirth)?
        child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String type, int childId, String name, DateTime? scheduledBirthday)?
        baby,
    TResult Function(String type, int childId, String name, Gender gender,
            DateTime? birthday, int? monthFromBirth)?
        child,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChildListItemDataBaby value) baby,
    required TResult Function(ChildListItemDataChild value) child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChildListItemDataBaby value)? baby,
    TResult? Function(ChildListItemDataChild value)? child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChildListItemDataBaby value)? baby,
    TResult Function(ChildListItemDataChild value)? child,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildListItemDataCopyWith<ChildListItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildListItemDataCopyWith<$Res> {
  factory $ChildListItemDataCopyWith(
          ChildListItemData value, $Res Function(ChildListItemData) then) =
      _$ChildListItemDataCopyWithImpl<$Res, ChildListItemData>;
  @useResult
  $Res call({String type, int childId, String name});
}

/// @nodoc
class _$ChildListItemDataCopyWithImpl<$Res, $Val extends ChildListItemData>
    implements $ChildListItemDataCopyWith<$Res> {
  _$ChildListItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? childId = null,
    Object? name = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildListItemDataBabyCopyWith<$Res>
    implements $ChildListItemDataCopyWith<$Res> {
  factory _$$ChildListItemDataBabyCopyWith(_$ChildListItemDataBaby value,
          $Res Function(_$ChildListItemDataBaby) then) =
      __$$ChildListItemDataBabyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type, int childId, String name, DateTime? scheduledBirthday});
}

/// @nodoc
class __$$ChildListItemDataBabyCopyWithImpl<$Res>
    extends _$ChildListItemDataCopyWithImpl<$Res, _$ChildListItemDataBaby>
    implements _$$ChildListItemDataBabyCopyWith<$Res> {
  __$$ChildListItemDataBabyCopyWithImpl(_$ChildListItemDataBaby _value,
      $Res Function(_$ChildListItemDataBaby) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? childId = null,
    Object? name = null,
    Object? scheduledBirthday = freezed,
  }) {
    return _then(_$ChildListItemDataBaby(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledBirthday: freezed == scheduledBirthday
          ? _value.scheduledBirthday
          : scheduledBirthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ChildListItemDataBaby implements ChildListItemDataBaby {
  const _$ChildListItemDataBaby(
      {this.type = 'baby',
      required this.childId,
      required this.name,
      this.scheduledBirthday});

  @override
  @JsonKey()
  final String type;
  @override
  final int childId;

  /// 名前(ニックネーム)
  @override
  final String name;

  /// 出産予定日
  @override
  final DateTime? scheduledBirthday;

  @override
  String toString() {
    return 'ChildListItemData.baby(type: $type, childId: $childId, name: $name, scheduledBirthday: $scheduledBirthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildListItemDataBaby &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.scheduledBirthday, scheduledBirthday) ||
                other.scheduledBirthday == scheduledBirthday));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, childId, name, scheduledBirthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildListItemDataBabyCopyWith<_$ChildListItemDataBaby> get copyWith =>
      __$$ChildListItemDataBabyCopyWithImpl<_$ChildListItemDataBaby>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type, int childId, String name, DateTime? scheduledBirthday)
        baby,
    required TResult Function(String type, int childId, String name,
            Gender gender, DateTime? birthday, int? monthFromBirth)
        child,
  }) {
    return baby(type, childId, name, scheduledBirthday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String type, int childId, String name, DateTime? scheduledBirthday)?
        baby,
    TResult? Function(String type, int childId, String name, Gender gender,
            DateTime? birthday, int? monthFromBirth)?
        child,
  }) {
    return baby?.call(type, childId, name, scheduledBirthday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String type, int childId, String name, DateTime? scheduledBirthday)?
        baby,
    TResult Function(String type, int childId, String name, Gender gender,
            DateTime? birthday, int? monthFromBirth)?
        child,
    required TResult orElse(),
  }) {
    if (baby != null) {
      return baby(type, childId, name, scheduledBirthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChildListItemDataBaby value) baby,
    required TResult Function(ChildListItemDataChild value) child,
  }) {
    return baby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChildListItemDataBaby value)? baby,
    TResult? Function(ChildListItemDataChild value)? child,
  }) {
    return baby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChildListItemDataBaby value)? baby,
    TResult Function(ChildListItemDataChild value)? child,
    required TResult orElse(),
  }) {
    if (baby != null) {
      return baby(this);
    }
    return orElse();
  }
}

abstract class ChildListItemDataBaby implements ChildListItemData {
  const factory ChildListItemDataBaby(
      {final String type,
      required final int childId,
      required final String name,
      final DateTime? scheduledBirthday}) = _$ChildListItemDataBaby;

  @override
  String get type;
  @override
  int get childId;
  @override

  /// 名前(ニックネーム)
  String get name;

  /// 出産予定日
  DateTime? get scheduledBirthday;
  @override
  @JsonKey(ignore: true)
  _$$ChildListItemDataBabyCopyWith<_$ChildListItemDataBaby> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChildListItemDataChildCopyWith<$Res>
    implements $ChildListItemDataCopyWith<$Res> {
  factory _$$ChildListItemDataChildCopyWith(_$ChildListItemDataChild value,
          $Res Function(_$ChildListItemDataChild) then) =
      __$$ChildListItemDataChildCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      int childId,
      String name,
      Gender gender,
      DateTime? birthday,
      int? monthFromBirth});
}

/// @nodoc
class __$$ChildListItemDataChildCopyWithImpl<$Res>
    extends _$ChildListItemDataCopyWithImpl<$Res, _$ChildListItemDataChild>
    implements _$$ChildListItemDataChildCopyWith<$Res> {
  __$$ChildListItemDataChildCopyWithImpl(_$ChildListItemDataChild _value,
      $Res Function(_$ChildListItemDataChild) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? childId = null,
    Object? name = null,
    Object? gender = null,
    Object? birthday = freezed,
    Object? monthFromBirth = freezed,
  }) {
    return _then(_$ChildListItemDataChild(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      monthFromBirth: freezed == monthFromBirth
          ? _value.monthFromBirth
          : monthFromBirth // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ChildListItemDataChild implements ChildListItemDataChild {
  const _$ChildListItemDataChild(
      {this.type = 'child',
      required this.childId,
      required this.name,
      required this.gender,
      required this.birthday,
      required this.monthFromBirth});

  @override
  @JsonKey()
  final String type;
  @override
  final int childId;

  /// 名前(ニックネーム)
  @override
  final String name;

  /// 性別
  @override
  final Gender gender;

  /// 誕生日
  @override
  final DateTime? birthday;

  /// 月齢
  @override
  final int? monthFromBirth;

  @override
  String toString() {
    return 'ChildListItemData.child(type: $type, childId: $childId, name: $name, gender: $gender, birthday: $birthday, monthFromBirth: $monthFromBirth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildListItemDataChild &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.monthFromBirth, monthFromBirth) ||
                other.monthFromBirth == monthFromBirth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, childId, name, gender, birthday, monthFromBirth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildListItemDataChildCopyWith<_$ChildListItemDataChild> get copyWith =>
      __$$ChildListItemDataChildCopyWithImpl<_$ChildListItemDataChild>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type, int childId, String name, DateTime? scheduledBirthday)
        baby,
    required TResult Function(String type, int childId, String name,
            Gender gender, DateTime? birthday, int? monthFromBirth)
        child,
  }) {
    return child(type, childId, name, gender, birthday, monthFromBirth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String type, int childId, String name, DateTime? scheduledBirthday)?
        baby,
    TResult? Function(String type, int childId, String name, Gender gender,
            DateTime? birthday, int? monthFromBirth)?
        child,
  }) {
    return child?.call(type, childId, name, gender, birthday, monthFromBirth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String type, int childId, String name, DateTime? scheduledBirthday)?
        baby,
    TResult Function(String type, int childId, String name, Gender gender,
            DateTime? birthday, int? monthFromBirth)?
        child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(type, childId, name, gender, birthday, monthFromBirth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChildListItemDataBaby value) baby,
    required TResult Function(ChildListItemDataChild value) child,
  }) {
    return child(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChildListItemDataBaby value)? baby,
    TResult? Function(ChildListItemDataChild value)? child,
  }) {
    return child?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChildListItemDataBaby value)? baby,
    TResult Function(ChildListItemDataChild value)? child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(this);
    }
    return orElse();
  }
}

abstract class ChildListItemDataChild implements ChildListItemData {
  const factory ChildListItemDataChild(
      {final String type,
      required final int childId,
      required final String name,
      required final Gender gender,
      required final DateTime? birthday,
      required final int? monthFromBirth}) = _$ChildListItemDataChild;

  @override
  String get type;
  @override
  int get childId;
  @override

  /// 名前(ニックネーム)
  String get name;

  /// 性別
  Gender get gender;

  /// 誕生日
  DateTime? get birthday;

  /// 月齢
  int? get monthFromBirth;
  @override
  @JsonKey(ignore: true)
  _$$ChildListItemDataChildCopyWith<_$ChildListItemDataChild> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChildrenItemData {
  /// 名前(ニックネーム)
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, DateTime scheduledBirthday) baby,
    required TResult Function(String name, Gender? gender, DateTime birthday)
        child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, DateTime scheduledBirthday)? baby,
    TResult? Function(String name, Gender? gender, DateTime birthday)? child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, DateTime scheduledBirthday)? baby,
    TResult Function(String name, Gender? gender, DateTime birthday)? child,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChildrenItemDataBaby value) baby,
    required TResult Function(ChildrenItemDataChild value) child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChildrenItemDataBaby value)? baby,
    TResult? Function(ChildrenItemDataChild value)? child,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChildrenItemDataBaby value)? baby,
    TResult Function(ChildrenItemDataChild value)? child,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChildrenItemDataCopyWith<ChildrenItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenItemDataCopyWith<$Res> {
  factory $ChildrenItemDataCopyWith(
          ChildrenItemData value, $Res Function(ChildrenItemData) then) =
      _$ChildrenItemDataCopyWithImpl<$Res, ChildrenItemData>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ChildrenItemDataCopyWithImpl<$Res, $Val extends ChildrenItemData>
    implements $ChildrenItemDataCopyWith<$Res> {
  _$ChildrenItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildrenItemDataBabyCopyWith<$Res>
    implements $ChildrenItemDataCopyWith<$Res> {
  factory _$$ChildrenItemDataBabyCopyWith(_$ChildrenItemDataBaby value,
          $Res Function(_$ChildrenItemDataBaby) then) =
      __$$ChildrenItemDataBabyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, DateTime scheduledBirthday});
}

/// @nodoc
class __$$ChildrenItemDataBabyCopyWithImpl<$Res>
    extends _$ChildrenItemDataCopyWithImpl<$Res, _$ChildrenItemDataBaby>
    implements _$$ChildrenItemDataBabyCopyWith<$Res> {
  __$$ChildrenItemDataBabyCopyWithImpl(_$ChildrenItemDataBaby _value,
      $Res Function(_$ChildrenItemDataBaby) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? scheduledBirthday = null,
  }) {
    return _then(_$ChildrenItemDataBaby(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledBirthday: null == scheduledBirthday
          ? _value.scheduledBirthday
          : scheduledBirthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChildrenItemDataBaby implements ChildrenItemDataBaby {
  const _$ChildrenItemDataBaby(
      {required this.name, required this.scheduledBirthday});

  /// 名前(ニックネーム)
  @override
  final String name;

  /// 出産予定日
  @override
  final DateTime scheduledBirthday;

  @override
  String toString() {
    return 'ChildrenItemData.baby(name: $name, scheduledBirthday: $scheduledBirthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildrenItemDataBaby &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.scheduledBirthday, scheduledBirthday) ||
                other.scheduledBirthday == scheduledBirthday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, scheduledBirthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildrenItemDataBabyCopyWith<_$ChildrenItemDataBaby> get copyWith =>
      __$$ChildrenItemDataBabyCopyWithImpl<_$ChildrenItemDataBaby>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, DateTime scheduledBirthday) baby,
    required TResult Function(String name, Gender? gender, DateTime birthday)
        child,
  }) {
    return baby(name, scheduledBirthday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, DateTime scheduledBirthday)? baby,
    TResult? Function(String name, Gender? gender, DateTime birthday)? child,
  }) {
    return baby?.call(name, scheduledBirthday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, DateTime scheduledBirthday)? baby,
    TResult Function(String name, Gender? gender, DateTime birthday)? child,
    required TResult orElse(),
  }) {
    if (baby != null) {
      return baby(name, scheduledBirthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChildrenItemDataBaby value) baby,
    required TResult Function(ChildrenItemDataChild value) child,
  }) {
    return baby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChildrenItemDataBaby value)? baby,
    TResult? Function(ChildrenItemDataChild value)? child,
  }) {
    return baby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChildrenItemDataBaby value)? baby,
    TResult Function(ChildrenItemDataChild value)? child,
    required TResult orElse(),
  }) {
    if (baby != null) {
      return baby(this);
    }
    return orElse();
  }
}

abstract class ChildrenItemDataBaby implements ChildrenItemData {
  const factory ChildrenItemDataBaby(
      {required final String name,
      required final DateTime scheduledBirthday}) = _$ChildrenItemDataBaby;

  @override

  /// 名前(ニックネーム)
  String get name;

  /// 出産予定日
  DateTime get scheduledBirthday;
  @override
  @JsonKey(ignore: true)
  _$$ChildrenItemDataBabyCopyWith<_$ChildrenItemDataBaby> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChildrenItemDataChildCopyWith<$Res>
    implements $ChildrenItemDataCopyWith<$Res> {
  factory _$$ChildrenItemDataChildCopyWith(_$ChildrenItemDataChild value,
          $Res Function(_$ChildrenItemDataChild) then) =
      __$$ChildrenItemDataChildCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Gender? gender, DateTime birthday});
}

/// @nodoc
class __$$ChildrenItemDataChildCopyWithImpl<$Res>
    extends _$ChildrenItemDataCopyWithImpl<$Res, _$ChildrenItemDataChild>
    implements _$$ChildrenItemDataChildCopyWith<$Res> {
  __$$ChildrenItemDataChildCopyWithImpl(_$ChildrenItemDataChild _value,
      $Res Function(_$ChildrenItemDataChild) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = freezed,
    Object? birthday = null,
  }) {
    return _then(_$ChildrenItemDataChild(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChildrenItemDataChild implements ChildrenItemDataChild {
  const _$ChildrenItemDataChild(
      {required this.name, required this.gender, required this.birthday});

  /// 名前(ニックネーム)
  @override
  final String name;

  /// 性別
  @override
  final Gender? gender;

  /// 誕生日
  @override
  final DateTime birthday;

  @override
  String toString() {
    return 'ChildrenItemData.child(name: $name, gender: $gender, birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildrenItemDataChild &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, gender, birthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildrenItemDataChildCopyWith<_$ChildrenItemDataChild> get copyWith =>
      __$$ChildrenItemDataChildCopyWithImpl<_$ChildrenItemDataChild>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, DateTime scheduledBirthday) baby,
    required TResult Function(String name, Gender? gender, DateTime birthday)
        child,
  }) {
    return child(name, gender, birthday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, DateTime scheduledBirthday)? baby,
    TResult? Function(String name, Gender? gender, DateTime birthday)? child,
  }) {
    return child?.call(name, gender, birthday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, DateTime scheduledBirthday)? baby,
    TResult Function(String name, Gender? gender, DateTime birthday)? child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(name, gender, birthday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChildrenItemDataBaby value) baby,
    required TResult Function(ChildrenItemDataChild value) child,
  }) {
    return child(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChildrenItemDataBaby value)? baby,
    TResult? Function(ChildrenItemDataChild value)? child,
  }) {
    return child?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChildrenItemDataBaby value)? baby,
    TResult Function(ChildrenItemDataChild value)? child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(this);
    }
    return orElse();
  }
}

abstract class ChildrenItemDataChild implements ChildrenItemData {
  const factory ChildrenItemDataChild(
      {required final String name,
      required final Gender? gender,
      required final DateTime birthday}) = _$ChildrenItemDataChild;

  @override

  /// 名前(ニックネーム)
  String get name;

  /// 性別
  Gender? get gender;

  /// 誕生日
  DateTime get birthday;
  @override
  @JsonKey(ignore: true)
  _$$ChildrenItemDataChildCopyWith<_$ChildrenItemDataChild> get copyWith =>
      throw _privateConstructorUsedError;
}

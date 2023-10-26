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

ChildBirthRequest _$ChildBirthRequestFromJson(Map<String, dynamic> json) {
  return _ChildBirthRequest.fromJson(json);
}

/// @nodoc
mixin _$ChildBirthRequest {
// nullなら新規登録
  @JsonKey(name: 'child_id')
  int? get childId => throw _privateConstructorUsedError; // 乳幼児情報（人数分のリスト）
  @JsonKey(name: 'child_birthData')
  List<ChildBirthDataItem> get childBirthData =>
      throw _privateConstructorUsedError; // 妊娠期間（週）
  @JsonKey(name: 'gestational_week')
  String? get gestationalWeek => throw _privateConstructorUsedError; // 妊娠期間（日）
  @JsonKey(name: 'gestational_week_day')
  String? get gestationalDay => throw _privateConstructorUsedError; // 出産場所
  @JsonKey(name: 'birth_place')
  String? get birthPlace => throw _privateConstructorUsedError; // 医師または助産師
  @JsonKey(name: 'birth_doctor')
  String? get birthDoctor => throw _privateConstructorUsedError; // 母親父親の気持ち
  @JsonKey(name: 'mother_father_feeling')
  String? get motherFatherFeeling =>
      throw _privateConstructorUsedError; // 赤ちゃんへのメッセージ
  String? get message => throw _privateConstructorUsedError; // フリーコメント
  String? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildBirthRequestCopyWith<ChildBirthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildBirthRequestCopyWith<$Res> {
  factory $ChildBirthRequestCopyWith(
          ChildBirthRequest value, $Res Function(ChildBirthRequest) then) =
      _$ChildBirthRequestCopyWithImpl<$Res, ChildBirthRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int? childId,
      @JsonKey(name: 'child_birthData') List<ChildBirthDataItem> childBirthData,
      @JsonKey(name: 'gestational_week') String? gestationalWeek,
      @JsonKey(name: 'gestational_week_day') String? gestationalDay,
      @JsonKey(name: 'birth_place') String? birthPlace,
      @JsonKey(name: 'birth_doctor') String? birthDoctor,
      @JsonKey(name: 'mother_father_feeling') String? motherFatherFeeling,
      String? message,
      String? comment});
}

/// @nodoc
class _$ChildBirthRequestCopyWithImpl<$Res, $Val extends ChildBirthRequest>
    implements $ChildBirthRequestCopyWith<$Res> {
  _$ChildBirthRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = freezed,
    Object? childBirthData = null,
    Object? gestationalWeek = freezed,
    Object? gestationalDay = freezed,
    Object? birthPlace = freezed,
    Object? birthDoctor = freezed,
    Object? motherFatherFeeling = freezed,
    Object? message = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      childId: freezed == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int?,
      childBirthData: null == childBirthData
          ? _value.childBirthData
          : childBirthData // ignore: cast_nullable_to_non_nullable
              as List<ChildBirthDataItem>,
      gestationalWeek: freezed == gestationalWeek
          ? _value.gestationalWeek
          : gestationalWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      gestationalDay: freezed == gestationalDay
          ? _value.gestationalDay
          : gestationalDay // ignore: cast_nullable_to_non_nullable
              as String?,
      birthPlace: freezed == birthPlace
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDoctor: freezed == birthDoctor
          ? _value.birthDoctor
          : birthDoctor // ignore: cast_nullable_to_non_nullable
              as String?,
      motherFatherFeeling: freezed == motherFatherFeeling
          ? _value.motherFatherFeeling
          : motherFatherFeeling // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildBirthRequestCopyWith<$Res>
    implements $ChildBirthRequestCopyWith<$Res> {
  factory _$$_ChildBirthRequestCopyWith(_$_ChildBirthRequest value,
          $Res Function(_$_ChildBirthRequest) then) =
      __$$_ChildBirthRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int? childId,
      @JsonKey(name: 'child_birthData') List<ChildBirthDataItem> childBirthData,
      @JsonKey(name: 'gestational_week') String? gestationalWeek,
      @JsonKey(name: 'gestational_week_day') String? gestationalDay,
      @JsonKey(name: 'birth_place') String? birthPlace,
      @JsonKey(name: 'birth_doctor') String? birthDoctor,
      @JsonKey(name: 'mother_father_feeling') String? motherFatherFeeling,
      String? message,
      String? comment});
}

/// @nodoc
class __$$_ChildBirthRequestCopyWithImpl<$Res>
    extends _$ChildBirthRequestCopyWithImpl<$Res, _$_ChildBirthRequest>
    implements _$$_ChildBirthRequestCopyWith<$Res> {
  __$$_ChildBirthRequestCopyWithImpl(
      _$_ChildBirthRequest _value, $Res Function(_$_ChildBirthRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = freezed,
    Object? childBirthData = null,
    Object? gestationalWeek = freezed,
    Object? gestationalDay = freezed,
    Object? birthPlace = freezed,
    Object? birthDoctor = freezed,
    Object? motherFatherFeeling = freezed,
    Object? message = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$_ChildBirthRequest(
      childId: freezed == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int?,
      childBirthData: null == childBirthData
          ? _value._childBirthData
          : childBirthData // ignore: cast_nullable_to_non_nullable
              as List<ChildBirthDataItem>,
      gestationalWeek: freezed == gestationalWeek
          ? _value.gestationalWeek
          : gestationalWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      gestationalDay: freezed == gestationalDay
          ? _value.gestationalDay
          : gestationalDay // ignore: cast_nullable_to_non_nullable
              as String?,
      birthPlace: freezed == birthPlace
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDoctor: freezed == birthDoctor
          ? _value.birthDoctor
          : birthDoctor // ignore: cast_nullable_to_non_nullable
              as String?,
      motherFatherFeeling: freezed == motherFatherFeeling
          ? _value.motherFatherFeeling
          : motherFatherFeeling // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChildBirthRequest implements _ChildBirthRequest {
  const _$_ChildBirthRequest(
      {@JsonKey(name: 'child_id')
          this.childId,
      @JsonKey(name: 'child_birthData')
          final List<ChildBirthDataItem> childBirthData = const [],
      @JsonKey(name: 'gestational_week')
          this.gestationalWeek,
      @JsonKey(name: 'gestational_week_day')
          this.gestationalDay,
      @JsonKey(name: 'birth_place')
          this.birthPlace,
      @JsonKey(name: 'birth_doctor')
          this.birthDoctor,
      @JsonKey(name: 'mother_father_feeling')
          this.motherFatherFeeling,
      this.message,
      this.comment})
      : _childBirthData = childBirthData;

  factory _$_ChildBirthRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ChildBirthRequestFromJson(json);

// nullなら新規登録
  @override
  @JsonKey(name: 'child_id')
  final int? childId;
// 乳幼児情報（人数分のリスト）
  final List<ChildBirthDataItem> _childBirthData;
// 乳幼児情報（人数分のリスト）
  @override
  @JsonKey(name: 'child_birthData')
  List<ChildBirthDataItem> get childBirthData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childBirthData);
  }

// 妊娠期間（週）
  @override
  @JsonKey(name: 'gestational_week')
  final String? gestationalWeek;
// 妊娠期間（日）
  @override
  @JsonKey(name: 'gestational_week_day')
  final String? gestationalDay;
// 出産場所
  @override
  @JsonKey(name: 'birth_place')
  final String? birthPlace;
// 医師または助産師
  @override
  @JsonKey(name: 'birth_doctor')
  final String? birthDoctor;
// 母親父親の気持ち
  @override
  @JsonKey(name: 'mother_father_feeling')
  final String? motherFatherFeeling;
// 赤ちゃんへのメッセージ
  @override
  final String? message;
// フリーコメント
  @override
  final String? comment;

  @override
  String toString() {
    return 'ChildBirthRequest(childId: $childId, childBirthData: $childBirthData, gestationalWeek: $gestationalWeek, gestationalDay: $gestationalDay, birthPlace: $birthPlace, birthDoctor: $birthDoctor, motherFatherFeeling: $motherFatherFeeling, message: $message, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildBirthRequest &&
            (identical(other.childId, childId) || other.childId == childId) &&
            const DeepCollectionEquality()
                .equals(other._childBirthData, _childBirthData) &&
            (identical(other.gestationalWeek, gestationalWeek) ||
                other.gestationalWeek == gestationalWeek) &&
            (identical(other.gestationalDay, gestationalDay) ||
                other.gestationalDay == gestationalDay) &&
            (identical(other.birthPlace, birthPlace) ||
                other.birthPlace == birthPlace) &&
            (identical(other.birthDoctor, birthDoctor) ||
                other.birthDoctor == birthDoctor) &&
            (identical(other.motherFatherFeeling, motherFatherFeeling) ||
                other.motherFatherFeeling == motherFatherFeeling) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      childId,
      const DeepCollectionEquality().hash(_childBirthData),
      gestationalWeek,
      gestationalDay,
      birthPlace,
      birthDoctor,
      motherFatherFeeling,
      message,
      comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildBirthRequestCopyWith<_$_ChildBirthRequest> get copyWith =>
      __$$_ChildBirthRequestCopyWithImpl<_$_ChildBirthRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildBirthRequestToJson(
      this,
    );
  }
}

abstract class _ChildBirthRequest implements ChildBirthRequest {
  const factory _ChildBirthRequest(
      {@JsonKey(name: 'child_id')
          final int? childId,
      @JsonKey(name: 'child_birthData')
          final List<ChildBirthDataItem> childBirthData,
      @JsonKey(name: 'gestational_week')
          final String? gestationalWeek,
      @JsonKey(name: 'gestational_week_day')
          final String? gestationalDay,
      @JsonKey(name: 'birth_place')
          final String? birthPlace,
      @JsonKey(name: 'birth_doctor')
          final String? birthDoctor,
      @JsonKey(name: 'mother_father_feeling')
          final String? motherFatherFeeling,
      final String? message,
      final String? comment}) = _$_ChildBirthRequest;

  factory _ChildBirthRequest.fromJson(Map<String, dynamic> json) =
      _$_ChildBirthRequest.fromJson;

  @override // nullなら新規登録
  @JsonKey(name: 'child_id')
  int? get childId;
  @override // 乳幼児情報（人数分のリスト）
  @JsonKey(name: 'child_birthData')
  List<ChildBirthDataItem> get childBirthData;
  @override // 妊娠期間（週）
  @JsonKey(name: 'gestational_week')
  String? get gestationalWeek;
  @override // 妊娠期間（日）
  @JsonKey(name: 'gestational_week_day')
  String? get gestationalDay;
  @override // 出産場所
  @JsonKey(name: 'birth_place')
  String? get birthPlace;
  @override // 医師または助産師
  @JsonKey(name: 'birth_doctor')
  String? get birthDoctor;
  @override // 母親父親の気持ち
  @JsonKey(name: 'mother_father_feeling')
  String? get motherFatherFeeling;
  @override // 赤ちゃんへのメッセージ
  String? get message;
  @override // フリーコメント
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$_ChildBirthRequestCopyWith<_$_ChildBirthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildBirthDataItem _$ChildBirthDataItemFromJson(Map<String, dynamic> json) {
  return _ChildBirthDataItem.fromJson(json);
}

/// @nodoc
mixin _$ChildBirthDataItem {
// 出産日
  String get birthday => throw _privateConstructorUsedError;

  /// 名前(ニックネーム)
  String? get nickname => throw _privateConstructorUsedError;

  /// 性別
  int? get gender => throw _privateConstructorUsedError;

  /// 身長
  double? get height => throw _privateConstructorUsedError;

  /// 体重（g）
  int? get weight => throw _privateConstructorUsedError;

  /// 頭囲
  @JsonKey(name: 'head_measurement')
  double? get head => throw _privateConstructorUsedError;

  /// 胸囲
  @JsonKey(name: 'chest_measurement')
  double? get chest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildBirthDataItemCopyWith<ChildBirthDataItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildBirthDataItemCopyWith<$Res> {
  factory $ChildBirthDataItemCopyWith(
          ChildBirthDataItem value, $Res Function(ChildBirthDataItem) then) =
      _$ChildBirthDataItemCopyWithImpl<$Res, ChildBirthDataItem>;
  @useResult
  $Res call(
      {String birthday,
      String? nickname,
      int? gender,
      double? height,
      int? weight,
      @JsonKey(name: 'head_measurement') double? head,
      @JsonKey(name: 'chest_measurement') double? chest});
}

/// @nodoc
class _$ChildBirthDataItemCopyWithImpl<$Res, $Val extends ChildBirthDataItem>
    implements $ChildBirthDataItemCopyWith<$Res> {
  _$ChildBirthDataItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthday = null,
    Object? nickname = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? head = freezed,
    Object? chest = freezed,
  }) {
    return _then(_value.copyWith(
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_ChildBirthDataItemCopyWith<$Res>
    implements $ChildBirthDataItemCopyWith<$Res> {
  factory _$$_ChildBirthDataItemCopyWith(_$_ChildBirthDataItem value,
          $Res Function(_$_ChildBirthDataItem) then) =
      __$$_ChildBirthDataItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String birthday,
      String? nickname,
      int? gender,
      double? height,
      int? weight,
      @JsonKey(name: 'head_measurement') double? head,
      @JsonKey(name: 'chest_measurement') double? chest});
}

/// @nodoc
class __$$_ChildBirthDataItemCopyWithImpl<$Res>
    extends _$ChildBirthDataItemCopyWithImpl<$Res, _$_ChildBirthDataItem>
    implements _$$_ChildBirthDataItemCopyWith<$Res> {
  __$$_ChildBirthDataItemCopyWithImpl(
      _$_ChildBirthDataItem _value, $Res Function(_$_ChildBirthDataItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthday = null,
    Object? nickname = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? head = freezed,
    Object? chest = freezed,
  }) {
    return _then(_$_ChildBirthDataItem(
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
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

@JsonSerializable(explicitToJson: true)
class _$_ChildBirthDataItem implements _ChildBirthDataItem {
  const _$_ChildBirthDataItem(
      {required this.birthday,
      this.nickname,
      this.gender,
      this.height,
      this.weight,
      @JsonKey(name: 'head_measurement') this.head,
      @JsonKey(name: 'chest_measurement') this.chest});

  factory _$_ChildBirthDataItem.fromJson(Map<String, dynamic> json) =>
      _$$_ChildBirthDataItemFromJson(json);

// 出産日
  @override
  final String birthday;

  /// 名前(ニックネーム)
  @override
  final String? nickname;

  /// 性別
  @override
  final int? gender;

  /// 身長
  @override
  final double? height;

  /// 体重（g）
  @override
  final int? weight;

  /// 頭囲
  @override
  @JsonKey(name: 'head_measurement')
  final double? head;

  /// 胸囲
  @override
  @JsonKey(name: 'chest_measurement')
  final double? chest;

  @override
  String toString() {
    return 'ChildBirthDataItem(birthday: $birthday, nickname: $nickname, gender: $gender, height: $height, weight: $weight, head: $head, chest: $chest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChildBirthDataItem &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.chest, chest) || other.chest == chest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, birthday, nickname, gender, height, weight, head, chest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildBirthDataItemCopyWith<_$_ChildBirthDataItem> get copyWith =>
      __$$_ChildBirthDataItemCopyWithImpl<_$_ChildBirthDataItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildBirthDataItemToJson(
      this,
    );
  }
}

abstract class _ChildBirthDataItem implements ChildBirthDataItem {
  const factory _ChildBirthDataItem(
          {required final String birthday,
          final String? nickname,
          final int? gender,
          final double? height,
          final int? weight,
          @JsonKey(name: 'head_measurement') final double? head,
          @JsonKey(name: 'chest_measurement') final double? chest}) =
      _$_ChildBirthDataItem;

  factory _ChildBirthDataItem.fromJson(Map<String, dynamic> json) =
      _$_ChildBirthDataItem.fromJson;

  @override // 出産日
  String get birthday;
  @override

  /// 名前(ニックネーム)
  String? get nickname;
  @override

  /// 性別
  int? get gender;
  @override

  /// 身長
  double? get height;
  @override

  /// 体重（g）
  int? get weight;
  @override

  /// 頭囲
  @JsonKey(name: 'head_measurement')
  double? get head;
  @override

  /// 胸囲
  @JsonKey(name: 'chest_measurement')
  double? get chest;
  @override
  @JsonKey(ignore: true)
  _$$_ChildBirthDataItemCopyWith<_$_ChildBirthDataItem> get copyWith =>
      throw _privateConstructorUsedError;
}

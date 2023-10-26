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

CheckSheetSupportModel _$CheckSheetSupportModelFromJson(
    Map<String, dynamic> json) {
  return _CheckSheetSupportModel.fromJson(json);
}

/// @nodoc
mixin _$CheckSheetSupportModel {
  @JsonKey(name: 'list')
  List<CheckSheetSupportLargeCategoryModel> get largeCategoryList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckSheetSupportModelCopyWith<CheckSheetSupportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSheetSupportModelCopyWith<$Res> {
  factory $CheckSheetSupportModelCopyWith(CheckSheetSupportModel value,
          $Res Function(CheckSheetSupportModel) then) =
      _$CheckSheetSupportModelCopyWithImpl<$Res, CheckSheetSupportModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'list')
          List<CheckSheetSupportLargeCategoryModel> largeCategoryList});
}

/// @nodoc
class _$CheckSheetSupportModelCopyWithImpl<$Res,
        $Val extends CheckSheetSupportModel>
    implements $CheckSheetSupportModelCopyWith<$Res> {
  _$CheckSheetSupportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? largeCategoryList = null,
  }) {
    return _then(_value.copyWith(
      largeCategoryList: null == largeCategoryList
          ? _value.largeCategoryList
          : largeCategoryList // ignore: cast_nullable_to_non_nullable
              as List<CheckSheetSupportLargeCategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckSheetSupportModelCopyWith<$Res>
    implements $CheckSheetSupportModelCopyWith<$Res> {
  factory _$$_CheckSheetSupportModelCopyWith(_$_CheckSheetSupportModel value,
          $Res Function(_$_CheckSheetSupportModel) then) =
      __$$_CheckSheetSupportModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'list')
          List<CheckSheetSupportLargeCategoryModel> largeCategoryList});
}

/// @nodoc
class __$$_CheckSheetSupportModelCopyWithImpl<$Res>
    extends _$CheckSheetSupportModelCopyWithImpl<$Res,
        _$_CheckSheetSupportModel>
    implements _$$_CheckSheetSupportModelCopyWith<$Res> {
  __$$_CheckSheetSupportModelCopyWithImpl(_$_CheckSheetSupportModel _value,
      $Res Function(_$_CheckSheetSupportModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? largeCategoryList = null,
  }) {
    return _then(_$_CheckSheetSupportModel(
      largeCategoryList: null == largeCategoryList
          ? _value._largeCategoryList
          : largeCategoryList // ignore: cast_nullable_to_non_nullable
              as List<CheckSheetSupportLargeCategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckSheetSupportModel implements _CheckSheetSupportModel {
  const _$_CheckSheetSupportModel(
      {@JsonKey(name: 'list')
          required final List<CheckSheetSupportLargeCategoryModel>
              largeCategoryList})
      : _largeCategoryList = largeCategoryList;

  factory _$_CheckSheetSupportModel.fromJson(Map<String, dynamic> json) =>
      _$$_CheckSheetSupportModelFromJson(json);

  final List<CheckSheetSupportLargeCategoryModel> _largeCategoryList;
  @override
  @JsonKey(name: 'list')
  List<CheckSheetSupportLargeCategoryModel> get largeCategoryList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_largeCategoryList);
  }

  @override
  String toString() {
    return 'CheckSheetSupportModel(largeCategoryList: $largeCategoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckSheetSupportModel &&
            const DeepCollectionEquality()
                .equals(other._largeCategoryList, _largeCategoryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_largeCategoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckSheetSupportModelCopyWith<_$_CheckSheetSupportModel> get copyWith =>
      __$$_CheckSheetSupportModelCopyWithImpl<_$_CheckSheetSupportModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckSheetSupportModelToJson(
      this,
    );
  }
}

abstract class _CheckSheetSupportModel implements CheckSheetSupportModel {
  const factory _CheckSheetSupportModel(
      {@JsonKey(name: 'list')
          required final List<CheckSheetSupportLargeCategoryModel>
              largeCategoryList}) = _$_CheckSheetSupportModel;

  factory _CheckSheetSupportModel.fromJson(Map<String, dynamic> json) =
      _$_CheckSheetSupportModel.fromJson;

  @override
  @JsonKey(name: 'list')
  List<CheckSheetSupportLargeCategoryModel> get largeCategoryList;
  @override
  @JsonKey(ignore: true)
  _$$_CheckSheetSupportModelCopyWith<_$_CheckSheetSupportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckSheetSupportLargeCategoryModel
    _$CheckSheetSupportLargeCategoryModelFromJson(Map<String, dynamic> json) {
  return _CheckSheetSupportLargeCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CheckSheetSupportLargeCategoryModel {
  @JsonKey(name: 'large_category_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_category')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'small_categories')
  List<CheckSheetSupportSmallCategoryModel> get smallCategoryList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckSheetSupportLargeCategoryModelCopyWith<
          CheckSheetSupportLargeCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSheetSupportLargeCategoryModelCopyWith<$Res> {
  factory $CheckSheetSupportLargeCategoryModelCopyWith(
          CheckSheetSupportLargeCategoryModel value,
          $Res Function(CheckSheetSupportLargeCategoryModel) then) =
      _$CheckSheetSupportLargeCategoryModelCopyWithImpl<$Res,
          CheckSheetSupportLargeCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'large_category_id')
          int id,
      @JsonKey(name: 'large_category')
          String name,
      @JsonKey(name: 'small_categories')
          List<CheckSheetSupportSmallCategoryModel> smallCategoryList});
}

/// @nodoc
class _$CheckSheetSupportLargeCategoryModelCopyWithImpl<$Res,
        $Val extends CheckSheetSupportLargeCategoryModel>
    implements $CheckSheetSupportLargeCategoryModelCopyWith<$Res> {
  _$CheckSheetSupportLargeCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? smallCategoryList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      smallCategoryList: null == smallCategoryList
          ? _value.smallCategoryList
          : smallCategoryList // ignore: cast_nullable_to_non_nullable
              as List<CheckSheetSupportSmallCategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckSheetSupportLargeCategoryModelCopyWith<$Res>
    implements $CheckSheetSupportLargeCategoryModelCopyWith<$Res> {
  factory _$$_CheckSheetSupportLargeCategoryModelCopyWith(
          _$_CheckSheetSupportLargeCategoryModel value,
          $Res Function(_$_CheckSheetSupportLargeCategoryModel) then) =
      __$$_CheckSheetSupportLargeCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'large_category_id')
          int id,
      @JsonKey(name: 'large_category')
          String name,
      @JsonKey(name: 'small_categories')
          List<CheckSheetSupportSmallCategoryModel> smallCategoryList});
}

/// @nodoc
class __$$_CheckSheetSupportLargeCategoryModelCopyWithImpl<$Res>
    extends _$CheckSheetSupportLargeCategoryModelCopyWithImpl<$Res,
        _$_CheckSheetSupportLargeCategoryModel>
    implements _$$_CheckSheetSupportLargeCategoryModelCopyWith<$Res> {
  __$$_CheckSheetSupportLargeCategoryModelCopyWithImpl(
      _$_CheckSheetSupportLargeCategoryModel _value,
      $Res Function(_$_CheckSheetSupportLargeCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? smallCategoryList = null,
  }) {
    return _then(_$_CheckSheetSupportLargeCategoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      smallCategoryList: null == smallCategoryList
          ? _value._smallCategoryList
          : smallCategoryList // ignore: cast_nullable_to_non_nullable
              as List<CheckSheetSupportSmallCategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckSheetSupportLargeCategoryModel
    implements _CheckSheetSupportLargeCategoryModel {
  const _$_CheckSheetSupportLargeCategoryModel(
      {@JsonKey(name: 'large_category_id')
          required this.id,
      @JsonKey(name: 'large_category')
          required this.name,
      @JsonKey(name: 'small_categories')
          required final List<CheckSheetSupportSmallCategoryModel>
              smallCategoryList})
      : _smallCategoryList = smallCategoryList;

  factory _$_CheckSheetSupportLargeCategoryModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_CheckSheetSupportLargeCategoryModelFromJson(json);

  @override
  @JsonKey(name: 'large_category_id')
  final int id;
  @override
  @JsonKey(name: 'large_category')
  final String name;
  final List<CheckSheetSupportSmallCategoryModel> _smallCategoryList;
  @override
  @JsonKey(name: 'small_categories')
  List<CheckSheetSupportSmallCategoryModel> get smallCategoryList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_smallCategoryList);
  }

  @override
  String toString() {
    return 'CheckSheetSupportLargeCategoryModel(id: $id, name: $name, smallCategoryList: $smallCategoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckSheetSupportLargeCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._smallCategoryList, _smallCategoryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_smallCategoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckSheetSupportLargeCategoryModelCopyWith<
          _$_CheckSheetSupportLargeCategoryModel>
      get copyWith => __$$_CheckSheetSupportLargeCategoryModelCopyWithImpl<
          _$_CheckSheetSupportLargeCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckSheetSupportLargeCategoryModelToJson(
      this,
    );
  }
}

abstract class _CheckSheetSupportLargeCategoryModel
    implements CheckSheetSupportLargeCategoryModel {
  const factory _CheckSheetSupportLargeCategoryModel(
      {@JsonKey(name: 'large_category_id')
          required final int id,
      @JsonKey(name: 'large_category')
          required final String name,
      @JsonKey(name: 'small_categories')
          required final List<CheckSheetSupportSmallCategoryModel>
              smallCategoryList}) = _$_CheckSheetSupportLargeCategoryModel;

  factory _CheckSheetSupportLargeCategoryModel.fromJson(
          Map<String, dynamic> json) =
      _$_CheckSheetSupportLargeCategoryModel.fromJson;

  @override
  @JsonKey(name: 'large_category_id')
  int get id;
  @override
  @JsonKey(name: 'large_category')
  String get name;
  @override
  @JsonKey(name: 'small_categories')
  List<CheckSheetSupportSmallCategoryModel> get smallCategoryList;
  @override
  @JsonKey(ignore: true)
  _$$_CheckSheetSupportLargeCategoryModelCopyWith<
          _$_CheckSheetSupportLargeCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

CheckSheetSupportSmallCategoryModel
    _$CheckSheetSupportSmallCategoryModelFromJson(Map<String, dynamic> json) {
  return _CheckSheetSupportSmallCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CheckSheetSupportSmallCategoryModel {
  @JsonKey(name: 'small_category_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'small_category')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  List<SupportQuestionModel> get detailList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckSheetSupportSmallCategoryModelCopyWith<
          CheckSheetSupportSmallCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSheetSupportSmallCategoryModelCopyWith<$Res> {
  factory $CheckSheetSupportSmallCategoryModelCopyWith(
          CheckSheetSupportSmallCategoryModel value,
          $Res Function(CheckSheetSupportSmallCategoryModel) then) =
      _$CheckSheetSupportSmallCategoryModelCopyWithImpl<$Res,
          CheckSheetSupportSmallCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'small_category_id') int id,
      @JsonKey(name: 'small_category') String name,
      @JsonKey(name: 'details') List<SupportQuestionModel> detailList});
}

/// @nodoc
class _$CheckSheetSupportSmallCategoryModelCopyWithImpl<$Res,
        $Val extends CheckSheetSupportSmallCategoryModel>
    implements $CheckSheetSupportSmallCategoryModelCopyWith<$Res> {
  _$CheckSheetSupportSmallCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? detailList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      detailList: null == detailList
          ? _value.detailList
          : detailList // ignore: cast_nullable_to_non_nullable
              as List<SupportQuestionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckSheetSupportSmallCategoryModelCopyWith<$Res>
    implements $CheckSheetSupportSmallCategoryModelCopyWith<$Res> {
  factory _$$_CheckSheetSupportSmallCategoryModelCopyWith(
          _$_CheckSheetSupportSmallCategoryModel value,
          $Res Function(_$_CheckSheetSupportSmallCategoryModel) then) =
      __$$_CheckSheetSupportSmallCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'small_category_id') int id,
      @JsonKey(name: 'small_category') String name,
      @JsonKey(name: 'details') List<SupportQuestionModel> detailList});
}

/// @nodoc
class __$$_CheckSheetSupportSmallCategoryModelCopyWithImpl<$Res>
    extends _$CheckSheetSupportSmallCategoryModelCopyWithImpl<$Res,
        _$_CheckSheetSupportSmallCategoryModel>
    implements _$$_CheckSheetSupportSmallCategoryModelCopyWith<$Res> {
  __$$_CheckSheetSupportSmallCategoryModelCopyWithImpl(
      _$_CheckSheetSupportSmallCategoryModel _value,
      $Res Function(_$_CheckSheetSupportSmallCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? detailList = null,
  }) {
    return _then(_$_CheckSheetSupportSmallCategoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      detailList: null == detailList
          ? _value._detailList
          : detailList // ignore: cast_nullable_to_non_nullable
              as List<SupportQuestionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckSheetSupportSmallCategoryModel
    implements _CheckSheetSupportSmallCategoryModel {
  const _$_CheckSheetSupportSmallCategoryModel(
      {@JsonKey(name: 'small_category_id')
          required this.id,
      @JsonKey(name: 'small_category')
          required this.name,
      @JsonKey(name: 'details')
          required final List<SupportQuestionModel> detailList})
      : _detailList = detailList;

  factory _$_CheckSheetSupportSmallCategoryModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_CheckSheetSupportSmallCategoryModelFromJson(json);

  @override
  @JsonKey(name: 'small_category_id')
  final int id;
  @override
  @JsonKey(name: 'small_category')
  final String name;
  final List<SupportQuestionModel> _detailList;
  @override
  @JsonKey(name: 'details')
  List<SupportQuestionModel> get detailList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detailList);
  }

  @override
  String toString() {
    return 'CheckSheetSupportSmallCategoryModel(id: $id, name: $name, detailList: $detailList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckSheetSupportSmallCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._detailList, _detailList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_detailList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckSheetSupportSmallCategoryModelCopyWith<
          _$_CheckSheetSupportSmallCategoryModel>
      get copyWith => __$$_CheckSheetSupportSmallCategoryModelCopyWithImpl<
          _$_CheckSheetSupportSmallCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckSheetSupportSmallCategoryModelToJson(
      this,
    );
  }
}

abstract class _CheckSheetSupportSmallCategoryModel
    implements CheckSheetSupportSmallCategoryModel {
  const factory _CheckSheetSupportSmallCategoryModel(
          {@JsonKey(name: 'small_category_id')
              required final int id,
          @JsonKey(name: 'small_category')
              required final String name,
          @JsonKey(name: 'details')
              required final List<SupportQuestionModel> detailList}) =
      _$_CheckSheetSupportSmallCategoryModel;

  factory _CheckSheetSupportSmallCategoryModel.fromJson(
          Map<String, dynamic> json) =
      _$_CheckSheetSupportSmallCategoryModel.fromJson;

  @override
  @JsonKey(name: 'small_category_id')
  int get id;
  @override
  @JsonKey(name: 'small_category')
  String get name;
  @override
  @JsonKey(name: 'details')
  List<SupportQuestionModel> get detailList;
  @override
  @JsonKey(ignore: true)
  _$$_CheckSheetSupportSmallCategoryModelCopyWith<
          _$_CheckSheetSupportSmallCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

SupportQuestionModel _$SupportQuestionModelFromJson(Map<String, dynamic> json) {
  return _SupportQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$SupportQuestionModel {
  @JsonKey(name: 'support_check_sheet_id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'support_check_sheet_question_id')
  int get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'question')
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'example')
  String get example => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_check')
  String get isCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportQuestionModelCopyWith<SupportQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportQuestionModelCopyWith<$Res> {
  factory $SupportQuestionModelCopyWith(SupportQuestionModel value,
          $Res Function(SupportQuestionModel) then) =
      _$SupportQuestionModelCopyWithImpl<$Res, SupportQuestionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'support_check_sheet_id') int? id,
      @JsonKey(name: 'support_check_sheet_question_id') int questionId,
      @JsonKey(name: 'question') String question,
      @JsonKey(name: 'example') String example,
      @JsonKey(name: 'is_check') String isCheck,
      @JsonKey(name: 'note') String note});
}

/// @nodoc
class _$SupportQuestionModelCopyWithImpl<$Res,
        $Val extends SupportQuestionModel>
    implements $SupportQuestionModelCopyWith<$Res> {
  _$SupportQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionId = null,
    Object? question = null,
    Object? example = null,
    Object? isCheck = null,
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SupportQuestionModelCopyWith<$Res>
    implements $SupportQuestionModelCopyWith<$Res> {
  factory _$$_SupportQuestionModelCopyWith(_$_SupportQuestionModel value,
          $Res Function(_$_SupportQuestionModel) then) =
      __$$_SupportQuestionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'support_check_sheet_id') int? id,
      @JsonKey(name: 'support_check_sheet_question_id') int questionId,
      @JsonKey(name: 'question') String question,
      @JsonKey(name: 'example') String example,
      @JsonKey(name: 'is_check') String isCheck,
      @JsonKey(name: 'note') String note});
}

/// @nodoc
class __$$_SupportQuestionModelCopyWithImpl<$Res>
    extends _$SupportQuestionModelCopyWithImpl<$Res, _$_SupportQuestionModel>
    implements _$$_SupportQuestionModelCopyWith<$Res> {
  __$$_SupportQuestionModelCopyWithImpl(_$_SupportQuestionModel _value,
      $Res Function(_$_SupportQuestionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionId = null,
    Object? question = null,
    Object? example = null,
    Object? isCheck = null,
    Object? note = null,
  }) {
    return _then(_$_SupportQuestionModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupportQuestionModel implements _SupportQuestionModel {
  const _$_SupportQuestionModel(
      {@JsonKey(name: 'support_check_sheet_id')
          required this.id,
      @JsonKey(name: 'support_check_sheet_question_id')
          required this.questionId,
      @JsonKey(name: 'question')
          required this.question,
      @JsonKey(name: 'example')
          required this.example,
      @JsonKey(name: 'is_check')
          required this.isCheck,
      @JsonKey(name: 'note')
          this.note = ''});

  factory _$_SupportQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_SupportQuestionModelFromJson(json);

  @override
  @JsonKey(name: 'support_check_sheet_id')
  final int? id;
  @override
  @JsonKey(name: 'support_check_sheet_question_id')
  final int questionId;
  @override
  @JsonKey(name: 'question')
  final String question;
  @override
  @JsonKey(name: 'example')
  final String example;
  @override
  @JsonKey(name: 'is_check')
  final String isCheck;
  @override
  @JsonKey(name: 'note')
  final String note;

  @override
  String toString() {
    return 'SupportQuestionModel(id: $id, questionId: $questionId, question: $question, example: $example, isCheck: $isCheck, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportQuestionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.example, example) || other.example == example) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, questionId, question, example, isCheck, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupportQuestionModelCopyWith<_$_SupportQuestionModel> get copyWith =>
      __$$_SupportQuestionModelCopyWithImpl<_$_SupportQuestionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportQuestionModelToJson(
      this,
    );
  }
}

abstract class _SupportQuestionModel implements SupportQuestionModel {
  const factory _SupportQuestionModel(
      {@JsonKey(name: 'support_check_sheet_id')
          required final int? id,
      @JsonKey(name: 'support_check_sheet_question_id')
          required final int questionId,
      @JsonKey(name: 'question')
          required final String question,
      @JsonKey(name: 'example')
          required final String example,
      @JsonKey(name: 'is_check')
          required final String isCheck,
      @JsonKey(name: 'note')
          final String note}) = _$_SupportQuestionModel;

  factory _SupportQuestionModel.fromJson(Map<String, dynamic> json) =
      _$_SupportQuestionModel.fromJson;

  @override
  @JsonKey(name: 'support_check_sheet_id')
  int? get id;
  @override
  @JsonKey(name: 'support_check_sheet_question_id')
  int get questionId;
  @override
  @JsonKey(name: 'question')
  String get question;
  @override
  @JsonKey(name: 'example')
  String get example;
  @override
  @JsonKey(name: 'is_check')
  String get isCheck;
  @override
  @JsonKey(name: 'note')
  String get note;
  @override
  @JsonKey(ignore: true)
  _$$_SupportQuestionModelCopyWith<_$_SupportQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

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

CheckSheetGrowthModel _$CheckSheetGrowthModelFromJson(
    Map<String, dynamic> json) {
  return _CheckSheetGrowthModel.fromJson(json);
}

/// @nodoc
mixin _$CheckSheetGrowthModel {
  @JsonKey(name: 'list')
  List<GrowthDetailCategoryModel> get list =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckSheetGrowthModelCopyWith<CheckSheetGrowthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSheetGrowthModelCopyWith<$Res> {
  factory $CheckSheetGrowthModelCopyWith(CheckSheetGrowthModel value,
          $Res Function(CheckSheetGrowthModel) then) =
      _$CheckSheetGrowthModelCopyWithImpl<$Res, CheckSheetGrowthModel>;
  @useResult
  $Res call({@JsonKey(name: 'list') List<GrowthDetailCategoryModel> list});
}

/// @nodoc
class _$CheckSheetGrowthModelCopyWithImpl<$Res,
        $Val extends CheckSheetGrowthModel>
    implements $CheckSheetGrowthModelCopyWith<$Res> {
  _$CheckSheetGrowthModelCopyWithImpl(this._value, this._then);

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
              as List<GrowthDetailCategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckSheetGrowthModelCopyWith<$Res>
    implements $CheckSheetGrowthModelCopyWith<$Res> {
  factory _$$_CheckSheetGrowthModelCopyWith(_$_CheckSheetGrowthModel value,
          $Res Function(_$_CheckSheetGrowthModel) then) =
      __$$_CheckSheetGrowthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'list') List<GrowthDetailCategoryModel> list});
}

/// @nodoc
class __$$_CheckSheetGrowthModelCopyWithImpl<$Res>
    extends _$CheckSheetGrowthModelCopyWithImpl<$Res, _$_CheckSheetGrowthModel>
    implements _$$_CheckSheetGrowthModelCopyWith<$Res> {
  __$$_CheckSheetGrowthModelCopyWithImpl(_$_CheckSheetGrowthModel _value,
      $Res Function(_$_CheckSheetGrowthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_CheckSheetGrowthModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GrowthDetailCategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckSheetGrowthModel implements _CheckSheetGrowthModel {
  const _$_CheckSheetGrowthModel(
      {@JsonKey(name: 'list')
          required final List<GrowthDetailCategoryModel> list})
      : _list = list;

  factory _$_CheckSheetGrowthModel.fromJson(Map<String, dynamic> json) =>
      _$$_CheckSheetGrowthModelFromJson(json);

  final List<GrowthDetailCategoryModel> _list;
  @override
  @JsonKey(name: 'list')
  List<GrowthDetailCategoryModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'CheckSheetGrowthModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckSheetGrowthModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckSheetGrowthModelCopyWith<_$_CheckSheetGrowthModel> get copyWith =>
      __$$_CheckSheetGrowthModelCopyWithImpl<_$_CheckSheetGrowthModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckSheetGrowthModelToJson(
      this,
    );
  }
}

abstract class _CheckSheetGrowthModel implements CheckSheetGrowthModel {
  const factory _CheckSheetGrowthModel(
          {@JsonKey(name: 'list')
              required final List<GrowthDetailCategoryModel> list}) =
      _$_CheckSheetGrowthModel;

  factory _CheckSheetGrowthModel.fromJson(Map<String, dynamic> json) =
      _$_CheckSheetGrowthModel.fromJson;

  @override
  @JsonKey(name: 'list')
  List<GrowthDetailCategoryModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_CheckSheetGrowthModelCopyWith<_$_CheckSheetGrowthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GrowthDetailCategoryModel _$GrowthDetailCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _GrowthDetailCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$GrowthDetailCategoryModel {
  @JsonKey(name: 'category_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  List<GrowthQuestionModel> get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrowthDetailCategoryModelCopyWith<GrowthDetailCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthDetailCategoryModelCopyWith<$Res> {
  factory $GrowthDetailCategoryModelCopyWith(GrowthDetailCategoryModel value,
          $Res Function(GrowthDetailCategoryModel) then) =
      _$GrowthDetailCategoryModelCopyWithImpl<$Res, GrowthDetailCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'category_id') int id,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'details') List<GrowthQuestionModel> details});
}

/// @nodoc
class _$GrowthDetailCategoryModelCopyWithImpl<$Res,
        $Val extends GrowthDetailCategoryModel>
    implements $GrowthDetailCategoryModelCopyWith<$Res> {
  _$GrowthDetailCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<GrowthQuestionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GrowthDetailCategoryModelCopyWith<$Res>
    implements $GrowthDetailCategoryModelCopyWith<$Res> {
  factory _$$_GrowthDetailCategoryModelCopyWith(
          _$_GrowthDetailCategoryModel value,
          $Res Function(_$_GrowthDetailCategoryModel) then) =
      __$$_GrowthDetailCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'category_id') int id,
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'details') List<GrowthQuestionModel> details});
}

/// @nodoc
class __$$_GrowthDetailCategoryModelCopyWithImpl<$Res>
    extends _$GrowthDetailCategoryModelCopyWithImpl<$Res,
        _$_GrowthDetailCategoryModel>
    implements _$$_GrowthDetailCategoryModelCopyWith<$Res> {
  __$$_GrowthDetailCategoryModelCopyWithImpl(
      _$_GrowthDetailCategoryModel _value,
      $Res Function(_$_GrowthDetailCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? details = null,
  }) {
    return _then(_$_GrowthDetailCategoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<GrowthQuestionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GrowthDetailCategoryModel implements _GrowthDetailCategoryModel {
  const _$_GrowthDetailCategoryModel(
      {@JsonKey(name: 'category_id')
          required this.id,
      @JsonKey(name: 'category')
          required this.category,
      @JsonKey(name: 'details')
          required final List<GrowthQuestionModel> details})
      : _details = details;

  factory _$_GrowthDetailCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_GrowthDetailCategoryModelFromJson(json);

  @override
  @JsonKey(name: 'category_id')
  final int id;
  @override
  @JsonKey(name: 'category')
  final String category;
  final List<GrowthQuestionModel> _details;
  @override
  @JsonKey(name: 'details')
  List<GrowthQuestionModel> get details {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString() {
    return 'GrowthDetailCategoryModel(id: $id, category: $category, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GrowthDetailCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, category, const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GrowthDetailCategoryModelCopyWith<_$_GrowthDetailCategoryModel>
      get copyWith => __$$_GrowthDetailCategoryModelCopyWithImpl<
          _$_GrowthDetailCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrowthDetailCategoryModelToJson(
      this,
    );
  }
}

abstract class _GrowthDetailCategoryModel implements GrowthDetailCategoryModel {
  const factory _GrowthDetailCategoryModel(
          {@JsonKey(name: 'category_id')
              required final int id,
          @JsonKey(name: 'category')
              required final String category,
          @JsonKey(name: 'details')
              required final List<GrowthQuestionModel> details}) =
      _$_GrowthDetailCategoryModel;

  factory _GrowthDetailCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_GrowthDetailCategoryModel.fromJson;

  @override
  @JsonKey(name: 'category_id')
  int get id;
  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(name: 'details')
  List<GrowthQuestionModel> get details;
  @override
  @JsonKey(ignore: true)
  _$$_GrowthDetailCategoryModelCopyWith<_$_GrowthDetailCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

GrowthQuestionModel _$GrowthQuestionModelFromJson(Map<String, dynamic> json) {
  return _GrowthQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$GrowthQuestionModel {
  @JsonKey(name: 'growth_check_sheet_id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'growth_check_sheet_question_id')
  int get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'question')
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_check')
  String get isCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrowthQuestionModelCopyWith<GrowthQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthQuestionModelCopyWith<$Res> {
  factory $GrowthQuestionModelCopyWith(
          GrowthQuestionModel value, $Res Function(GrowthQuestionModel) then) =
      _$GrowthQuestionModelCopyWithImpl<$Res, GrowthQuestionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'growth_check_sheet_id') int? id,
      @JsonKey(name: 'growth_check_sheet_question_id') int questionId,
      @JsonKey(name: 'question') String question,
      @JsonKey(name: 'is_check') String isCheck,
      @JsonKey(name: 'note') String? note});
}

/// @nodoc
class _$GrowthQuestionModelCopyWithImpl<$Res, $Val extends GrowthQuestionModel>
    implements $GrowthQuestionModelCopyWith<$Res> {
  _$GrowthQuestionModelCopyWithImpl(this._value, this._then);

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
    Object? isCheck = null,
    Object? note = freezed,
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
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GrowthQuestionModelCopyWith<$Res>
    implements $GrowthQuestionModelCopyWith<$Res> {
  factory _$$_GrowthQuestionModelCopyWith(_$_GrowthQuestionModel value,
          $Res Function(_$_GrowthQuestionModel) then) =
      __$$_GrowthQuestionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'growth_check_sheet_id') int? id,
      @JsonKey(name: 'growth_check_sheet_question_id') int questionId,
      @JsonKey(name: 'question') String question,
      @JsonKey(name: 'is_check') String isCheck,
      @JsonKey(name: 'note') String? note});
}

/// @nodoc
class __$$_GrowthQuestionModelCopyWithImpl<$Res>
    extends _$GrowthQuestionModelCopyWithImpl<$Res, _$_GrowthQuestionModel>
    implements _$$_GrowthQuestionModelCopyWith<$Res> {
  __$$_GrowthQuestionModelCopyWithImpl(_$_GrowthQuestionModel _value,
      $Res Function(_$_GrowthQuestionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionId = null,
    Object? question = null,
    Object? isCheck = null,
    Object? note = freezed,
  }) {
    return _then(_$_GrowthQuestionModel(
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
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GrowthQuestionModel implements _GrowthQuestionModel {
  const _$_GrowthQuestionModel(
      {@JsonKey(name: 'growth_check_sheet_id') required this.id,
      @JsonKey(name: 'growth_check_sheet_question_id') required this.questionId,
      @JsonKey(name: 'question') required this.question,
      @JsonKey(name: 'is_check') required this.isCheck,
      @JsonKey(name: 'note') required this.note});

  factory _$_GrowthQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_GrowthQuestionModelFromJson(json);

  @override
  @JsonKey(name: 'growth_check_sheet_id')
  final int? id;
  @override
  @JsonKey(name: 'growth_check_sheet_question_id')
  final int questionId;
  @override
  @JsonKey(name: 'question')
  final String question;
  @override
  @JsonKey(name: 'is_check')
  final String isCheck;
  @override
  @JsonKey(name: 'note')
  final String? note;

  @override
  String toString() {
    return 'GrowthQuestionModel(id: $id, questionId: $questionId, question: $question, isCheck: $isCheck, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GrowthQuestionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, questionId, question, isCheck, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GrowthQuestionModelCopyWith<_$_GrowthQuestionModel> get copyWith =>
      __$$_GrowthQuestionModelCopyWithImpl<_$_GrowthQuestionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrowthQuestionModelToJson(
      this,
    );
  }
}

abstract class _GrowthQuestionModel implements GrowthQuestionModel {
  const factory _GrowthQuestionModel(
      {@JsonKey(name: 'growth_check_sheet_id')
          required final int? id,
      @JsonKey(name: 'growth_check_sheet_question_id')
          required final int questionId,
      @JsonKey(name: 'question')
          required final String question,
      @JsonKey(name: 'is_check')
          required final String isCheck,
      @JsonKey(name: 'note')
          required final String? note}) = _$_GrowthQuestionModel;

  factory _GrowthQuestionModel.fromJson(Map<String, dynamic> json) =
      _$_GrowthQuestionModel.fromJson;

  @override
  @JsonKey(name: 'growth_check_sheet_id')
  int? get id;
  @override
  @JsonKey(name: 'growth_check_sheet_question_id')
  int get questionId;
  @override
  @JsonKey(name: 'question')
  String get question;
  @override
  @JsonKey(name: 'is_check')
  String get isCheck;
  @override
  @JsonKey(name: 'note')
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$_GrowthQuestionModelCopyWith<_$_GrowthQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

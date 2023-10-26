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

LifeHabitQuestionAnswerResultListModel
    _$LifeHabitQuestionAnswerResultListModelFromJson(
        Map<String, dynamic> json) {
  return _LifeHabitQuestionAnswerResultListModel.fromJson(json);
}

/// @nodoc
mixin _$LifeHabitQuestionAnswerResultListModel {
  @JsonKey(name: 'results')
  List<QuestionAnswerResultModel> get list =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'other_comments')
  OtherCommentsModel get otherComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'general_comments')
  GeneralCommentsModel get generalComments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LifeHabitQuestionAnswerResultListModelCopyWith<
          LifeHabitQuestionAnswerResultListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeHabitQuestionAnswerResultListModelCopyWith<$Res> {
  factory $LifeHabitQuestionAnswerResultListModelCopyWith(
          LifeHabitQuestionAnswerResultListModel value,
          $Res Function(LifeHabitQuestionAnswerResultListModel) then) =
      _$LifeHabitQuestionAnswerResultListModelCopyWithImpl<$Res,
          LifeHabitQuestionAnswerResultListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<QuestionAnswerResultModel> list,
      @JsonKey(name: 'other_comments') OtherCommentsModel otherComments,
      @JsonKey(name: 'general_comments') GeneralCommentsModel generalComments});

  $OtherCommentsModelCopyWith<$Res> get otherComments;
  $GeneralCommentsModelCopyWith<$Res> get generalComments;
}

/// @nodoc
class _$LifeHabitQuestionAnswerResultListModelCopyWithImpl<$Res,
        $Val extends LifeHabitQuestionAnswerResultListModel>
    implements $LifeHabitQuestionAnswerResultListModelCopyWith<$Res> {
  _$LifeHabitQuestionAnswerResultListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? otherComments = null,
    Object? generalComments = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswerResultModel>,
      otherComments: null == otherComments
          ? _value.otherComments
          : otherComments // ignore: cast_nullable_to_non_nullable
              as OtherCommentsModel,
      generalComments: null == generalComments
          ? _value.generalComments
          : generalComments // ignore: cast_nullable_to_non_nullable
              as GeneralCommentsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OtherCommentsModelCopyWith<$Res> get otherComments {
    return $OtherCommentsModelCopyWith<$Res>(_value.otherComments, (value) {
      return _then(_value.copyWith(otherComments: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeneralCommentsModelCopyWith<$Res> get generalComments {
    return $GeneralCommentsModelCopyWith<$Res>(_value.generalComments, (value) {
      return _then(_value.copyWith(generalComments: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LifeHabitQuestionAnswerResultListModelCopyWith<$Res>
    implements $LifeHabitQuestionAnswerResultListModelCopyWith<$Res> {
  factory _$$_LifeHabitQuestionAnswerResultListModelCopyWith(
          _$_LifeHabitQuestionAnswerResultListModel value,
          $Res Function(_$_LifeHabitQuestionAnswerResultListModel) then) =
      __$$_LifeHabitQuestionAnswerResultListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<QuestionAnswerResultModel> list,
      @JsonKey(name: 'other_comments') OtherCommentsModel otherComments,
      @JsonKey(name: 'general_comments') GeneralCommentsModel generalComments});

  @override
  $OtherCommentsModelCopyWith<$Res> get otherComments;
  @override
  $GeneralCommentsModelCopyWith<$Res> get generalComments;
}

/// @nodoc
class __$$_LifeHabitQuestionAnswerResultListModelCopyWithImpl<$Res>
    extends _$LifeHabitQuestionAnswerResultListModelCopyWithImpl<$Res,
        _$_LifeHabitQuestionAnswerResultListModel>
    implements _$$_LifeHabitQuestionAnswerResultListModelCopyWith<$Res> {
  __$$_LifeHabitQuestionAnswerResultListModelCopyWithImpl(
      _$_LifeHabitQuestionAnswerResultListModel _value,
      $Res Function(_$_LifeHabitQuestionAnswerResultListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? otherComments = null,
    Object? generalComments = null,
  }) {
    return _then(_$_LifeHabitQuestionAnswerResultListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswerResultModel>,
      otherComments: null == otherComments
          ? _value.otherComments
          : otherComments // ignore: cast_nullable_to_non_nullable
              as OtherCommentsModel,
      generalComments: null == generalComments
          ? _value.generalComments
          : generalComments // ignore: cast_nullable_to_non_nullable
              as GeneralCommentsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LifeHabitQuestionAnswerResultListModel
    implements _LifeHabitQuestionAnswerResultListModel {
  const _$_LifeHabitQuestionAnswerResultListModel(
      {@JsonKey(name: 'results')
          required final List<QuestionAnswerResultModel> list,
      @JsonKey(name: 'other_comments')
          required this.otherComments,
      @JsonKey(name: 'general_comments')
          required this.generalComments})
      : _list = list;

  factory _$_LifeHabitQuestionAnswerResultListModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_LifeHabitQuestionAnswerResultListModelFromJson(json);

  final List<QuestionAnswerResultModel> _list;
  @override
  @JsonKey(name: 'results')
  List<QuestionAnswerResultModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: 'other_comments')
  final OtherCommentsModel otherComments;
  @override
  @JsonKey(name: 'general_comments')
  final GeneralCommentsModel generalComments;

  @override
  String toString() {
    return 'LifeHabitQuestionAnswerResultListModel(list: $list, otherComments: $otherComments, generalComments: $generalComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LifeHabitQuestionAnswerResultListModel &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.otherComments, otherComments) ||
                other.otherComments == otherComments) &&
            (identical(other.generalComments, generalComments) ||
                other.generalComments == generalComments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_list),
      otherComments,
      generalComments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LifeHabitQuestionAnswerResultListModelCopyWith<
          _$_LifeHabitQuestionAnswerResultListModel>
      get copyWith => __$$_LifeHabitQuestionAnswerResultListModelCopyWithImpl<
          _$_LifeHabitQuestionAnswerResultListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LifeHabitQuestionAnswerResultListModelToJson(
      this,
    );
  }
}

abstract class _LifeHabitQuestionAnswerResultListModel
    implements LifeHabitQuestionAnswerResultListModel {
  const factory _LifeHabitQuestionAnswerResultListModel(
          {@JsonKey(name: 'results')
              required final List<QuestionAnswerResultModel> list,
          @JsonKey(name: 'other_comments')
              required final OtherCommentsModel otherComments,
          @JsonKey(name: 'general_comments')
              required final GeneralCommentsModel generalComments}) =
      _$_LifeHabitQuestionAnswerResultListModel;

  factory _LifeHabitQuestionAnswerResultListModel.fromJson(
          Map<String, dynamic> json) =
      _$_LifeHabitQuestionAnswerResultListModel.fromJson;

  @override
  @JsonKey(name: 'results')
  List<QuestionAnswerResultModel> get list;
  @override
  @JsonKey(name: 'other_comments')
  OtherCommentsModel get otherComments;
  @override
  @JsonKey(name: 'general_comments')
  GeneralCommentsModel get generalComments;
  @override
  @JsonKey(ignore: true)
  _$$_LifeHabitQuestionAnswerResultListModelCopyWith<
          _$_LifeHabitQuestionAnswerResultListModel>
      get copyWith => throw _privateConstructorUsedError;
}

QuestionAnswerResultModel _$QuestionAnswerResultModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionAnswerResultModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionAnswerResultModel {
  @JsonKey(name: 'question_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'hint')
  String get hint => throw _privateConstructorUsedError;
  @JsonKey(name: 'question')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer')
  int get answer => throw _privateConstructorUsedError;
  @JsonKey(name: 'point')
  int get point => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'choices')
  List<ChoiceModel> get choices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionAnswerResultModelCopyWith<QuestionAnswerResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerResultModelCopyWith<$Res> {
  factory $QuestionAnswerResultModelCopyWith(QuestionAnswerResultModel value,
          $Res Function(QuestionAnswerResultModel) then) =
      _$QuestionAnswerResultModelCopyWithImpl<$Res, QuestionAnswerResultModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'question_id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'hint') String hint,
      @JsonKey(name: 'question') String content,
      @JsonKey(name: 'answer') int answer,
      @JsonKey(name: 'point') int point,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(name: 'choices') List<ChoiceModel> choices});
}

/// @nodoc
class _$QuestionAnswerResultModelCopyWithImpl<$Res,
        $Val extends QuestionAnswerResultModel>
    implements $QuestionAnswerResultModelCopyWith<$Res> {
  _$QuestionAnswerResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? hint = null,
    Object? content = null,
    Object? answer = null,
    Object? point = null,
    Object? comment = null,
    Object? choices = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as int,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionAnswerResultModelCopyWith<$Res>
    implements $QuestionAnswerResultModelCopyWith<$Res> {
  factory _$$_QuestionAnswerResultModelCopyWith(
          _$_QuestionAnswerResultModel value,
          $Res Function(_$_QuestionAnswerResultModel) then) =
      __$$_QuestionAnswerResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'question_id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'hint') String hint,
      @JsonKey(name: 'question') String content,
      @JsonKey(name: 'answer') int answer,
      @JsonKey(name: 'point') int point,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(name: 'choices') List<ChoiceModel> choices});
}

/// @nodoc
class __$$_QuestionAnswerResultModelCopyWithImpl<$Res>
    extends _$QuestionAnswerResultModelCopyWithImpl<$Res,
        _$_QuestionAnswerResultModel>
    implements _$$_QuestionAnswerResultModelCopyWith<$Res> {
  __$$_QuestionAnswerResultModelCopyWithImpl(
      _$_QuestionAnswerResultModel _value,
      $Res Function(_$_QuestionAnswerResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? hint = null,
    Object? content = null,
    Object? answer = null,
    Object? point = null,
    Object? comment = null,
    Object? choices = null,
  }) {
    return _then(_$_QuestionAnswerResultModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as int,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionAnswerResultModel implements _QuestionAnswerResultModel {
  const _$_QuestionAnswerResultModel(
      {@JsonKey(name: 'question_id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'hint') this.hint = '',
      @JsonKey(name: 'question') required this.content,
      @JsonKey(name: 'answer') required this.answer,
      @JsonKey(name: 'point') required this.point,
      @JsonKey(name: 'comment') required this.comment,
      @JsonKey(name: 'choices') required final List<ChoiceModel> choices})
      : _choices = choices;

  factory _$_QuestionAnswerResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionAnswerResultModelFromJson(json);

  @override
  @JsonKey(name: 'question_id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'hint')
  final String hint;
  @override
  @JsonKey(name: 'question')
  final String content;
  @override
  @JsonKey(name: 'answer')
  final int answer;
  @override
  @JsonKey(name: 'point')
  final int point;
  @override
  @JsonKey(name: 'comment')
  final String comment;
  final List<ChoiceModel> _choices;
  @override
  @JsonKey(name: 'choices')
  List<ChoiceModel> get choices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  String toString() {
    return 'QuestionAnswerResultModel(id: $id, title: $title, hint: $hint, content: $content, answer: $answer, point: $point, comment: $comment, choices: $choices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionAnswerResultModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, hint, content, answer,
      point, comment, const DeepCollectionEquality().hash(_choices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionAnswerResultModelCopyWith<_$_QuestionAnswerResultModel>
      get copyWith => __$$_QuestionAnswerResultModelCopyWithImpl<
          _$_QuestionAnswerResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionAnswerResultModelToJson(
      this,
    );
  }
}

abstract class _QuestionAnswerResultModel implements QuestionAnswerResultModel {
  const factory _QuestionAnswerResultModel(
          {@JsonKey(name: 'question_id') required final int id,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'hint') final String hint,
          @JsonKey(name: 'question') required final String content,
          @JsonKey(name: 'answer') required final int answer,
          @JsonKey(name: 'point') required final int point,
          @JsonKey(name: 'comment') required final String comment,
          @JsonKey(name: 'choices') required final List<ChoiceModel> choices}) =
      _$_QuestionAnswerResultModel;

  factory _QuestionAnswerResultModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionAnswerResultModel.fromJson;

  @override
  @JsonKey(name: 'question_id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'hint')
  String get hint;
  @override
  @JsonKey(name: 'question')
  String get content;
  @override
  @JsonKey(name: 'answer')
  int get answer;
  @override
  @JsonKey(name: 'point')
  int get point;
  @override
  @JsonKey(name: 'comment')
  String get comment;
  @override
  @JsonKey(name: 'choices')
  List<ChoiceModel> get choices;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionAnswerResultModelCopyWith<_$_QuestionAnswerResultModel>
      get copyWith => throw _privateConstructorUsedError;
}

ChoiceModel _$ChoiceModelFromJson(Map<String, dynamic> json) {
  return _ChoiceModel.fromJson(json);
}

/// @nodoc
mixin _$ChoiceModel {
  @JsonKey(name: 'choice_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'choice')
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceModelCopyWith<ChoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceModelCopyWith<$Res> {
  factory $ChoiceModelCopyWith(
          ChoiceModel value, $Res Function(ChoiceModel) then) =
      _$ChoiceModelCopyWithImpl<$Res, ChoiceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'choice_id') int id,
      @JsonKey(name: 'choice') String content});
}

/// @nodoc
class _$ChoiceModelCopyWithImpl<$Res, $Val extends ChoiceModel>
    implements $ChoiceModelCopyWith<$Res> {
  _$ChoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChoiceModelCopyWith<$Res>
    implements $ChoiceModelCopyWith<$Res> {
  factory _$$_ChoiceModelCopyWith(
          _$_ChoiceModel value, $Res Function(_$_ChoiceModel) then) =
      __$$_ChoiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'choice_id') int id,
      @JsonKey(name: 'choice') String content});
}

/// @nodoc
class __$$_ChoiceModelCopyWithImpl<$Res>
    extends _$ChoiceModelCopyWithImpl<$Res, _$_ChoiceModel>
    implements _$$_ChoiceModelCopyWith<$Res> {
  __$$_ChoiceModelCopyWithImpl(
      _$_ChoiceModel _value, $Res Function(_$_ChoiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
  }) {
    return _then(_$_ChoiceModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChoiceModel implements _ChoiceModel {
  const _$_ChoiceModel(
      {@JsonKey(name: 'choice_id') required this.id,
      @JsonKey(name: 'choice') required this.content});

  factory _$_ChoiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceModelFromJson(json);

  @override
  @JsonKey(name: 'choice_id')
  final int id;
  @override
  @JsonKey(name: 'choice')
  final String content;

  @override
  String toString() {
    return 'ChoiceModel(id: $id, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoiceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoiceModelCopyWith<_$_ChoiceModel> get copyWith =>
      __$$_ChoiceModelCopyWithImpl<_$_ChoiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoiceModelToJson(
      this,
    );
  }
}

abstract class _ChoiceModel implements ChoiceModel {
  const factory _ChoiceModel(
      {@JsonKey(name: 'choice_id') required final int id,
      @JsonKey(name: 'choice') required final String content}) = _$_ChoiceModel;

  factory _ChoiceModel.fromJson(Map<String, dynamic> json) =
      _$_ChoiceModel.fromJson;

  @override
  @JsonKey(name: 'choice_id')
  int get id;
  @override
  @JsonKey(name: 'choice')
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ChoiceModelCopyWith<_$_ChoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GeneralCommentsModel _$GeneralCommentsModelFromJson(Map<String, dynamic> json) {
  return _GeneralCommentsModel.fromJson(json);
}

/// @nodoc
mixin _$GeneralCommentsModel {
  @JsonKey(name: 'perfect_comment')
  String get perfectComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<CategoryModel> get categoryList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralCommentsModelCopyWith<GeneralCommentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralCommentsModelCopyWith<$Res> {
  factory $GeneralCommentsModelCopyWith(GeneralCommentsModel value,
          $Res Function(GeneralCommentsModel) then) =
      _$GeneralCommentsModelCopyWithImpl<$Res, GeneralCommentsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'perfect_comment') String perfectComment,
      @JsonKey(name: 'categories') List<CategoryModel> categoryList});
}

/// @nodoc
class _$GeneralCommentsModelCopyWithImpl<$Res,
        $Val extends GeneralCommentsModel>
    implements $GeneralCommentsModelCopyWith<$Res> {
  _$GeneralCommentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perfectComment = null,
    Object? categoryList = null,
  }) {
    return _then(_value.copyWith(
      perfectComment: null == perfectComment
          ? _value.perfectComment
          : perfectComment // ignore: cast_nullable_to_non_nullable
              as String,
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeneralCommentsModelCopyWith<$Res>
    implements $GeneralCommentsModelCopyWith<$Res> {
  factory _$$_GeneralCommentsModelCopyWith(_$_GeneralCommentsModel value,
          $Res Function(_$_GeneralCommentsModel) then) =
      __$$_GeneralCommentsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'perfect_comment') String perfectComment,
      @JsonKey(name: 'categories') List<CategoryModel> categoryList});
}

/// @nodoc
class __$$_GeneralCommentsModelCopyWithImpl<$Res>
    extends _$GeneralCommentsModelCopyWithImpl<$Res, _$_GeneralCommentsModel>
    implements _$$_GeneralCommentsModelCopyWith<$Res> {
  __$$_GeneralCommentsModelCopyWithImpl(_$_GeneralCommentsModel _value,
      $Res Function(_$_GeneralCommentsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perfectComment = null,
    Object? categoryList = null,
  }) {
    return _then(_$_GeneralCommentsModel(
      perfectComment: null == perfectComment
          ? _value.perfectComment
          : perfectComment // ignore: cast_nullable_to_non_nullable
              as String,
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneralCommentsModel implements _GeneralCommentsModel {
  const _$_GeneralCommentsModel(
      {@JsonKey(name: 'perfect_comment')
          required this.perfectComment,
      @JsonKey(name: 'categories')
          required final List<CategoryModel> categoryList})
      : _categoryList = categoryList;

  factory _$_GeneralCommentsModel.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralCommentsModelFromJson(json);

  @override
  @JsonKey(name: 'perfect_comment')
  final String perfectComment;
  final List<CategoryModel> _categoryList;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel> get categoryList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  String toString() {
    return 'GeneralCommentsModel(perfectComment: $perfectComment, categoryList: $categoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralCommentsModel &&
            (identical(other.perfectComment, perfectComment) ||
                other.perfectComment == perfectComment) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, perfectComment,
      const DeepCollectionEquality().hash(_categoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneralCommentsModelCopyWith<_$_GeneralCommentsModel> get copyWith =>
      __$$_GeneralCommentsModelCopyWithImpl<_$_GeneralCommentsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralCommentsModelToJson(
      this,
    );
  }
}

abstract class _GeneralCommentsModel implements GeneralCommentsModel {
  const factory _GeneralCommentsModel(
          {@JsonKey(name: 'perfect_comment')
              required final String perfectComment,
          @JsonKey(name: 'categories')
              required final List<CategoryModel> categoryList}) =
      _$_GeneralCommentsModel;

  factory _GeneralCommentsModel.fromJson(Map<String, dynamic> json) =
      _$_GeneralCommentsModel.fromJson;

  @override
  @JsonKey(name: 'perfect_comment')
  String get perfectComment;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel> get categoryList;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralCommentsModelCopyWith<_$_GeneralCommentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  @JsonKey(name: 'category_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments')
  List<CommentModel> get commentList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'category_id') int id,
      @JsonKey(name: 'category_name') String name,
      @JsonKey(name: 'comments') List<CommentModel> commentList});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? commentList = null,
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
      commentList: null == commentList
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$_CategoryModelCopyWith(
          _$_CategoryModel value, $Res Function(_$_CategoryModel) then) =
      __$$_CategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'category_id') int id,
      @JsonKey(name: 'category_name') String name,
      @JsonKey(name: 'comments') List<CommentModel> commentList});
}

/// @nodoc
class __$$_CategoryModelCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$_CategoryModel>
    implements _$$_CategoryModelCopyWith<$Res> {
  __$$_CategoryModelCopyWithImpl(
      _$_CategoryModel _value, $Res Function(_$_CategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? commentList = null,
  }) {
    return _then(_$_CategoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      commentList: null == commentList
          ? _value._commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryModel implements _CategoryModel {
  const _$_CategoryModel(
      {@JsonKey(name: 'category_id') required this.id,
      @JsonKey(name: 'category_name') required this.name,
      @JsonKey(name: 'comments') required final List<CommentModel> commentList})
      : _commentList = commentList;

  factory _$_CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryModelFromJson(json);

  @override
  @JsonKey(name: 'category_id')
  final int id;
  @override
  @JsonKey(name: 'category_name')
  final String name;
  final List<CommentModel> _commentList;
  @override
  @JsonKey(name: 'comments')
  List<CommentModel> get commentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentList);
  }

  @override
  String toString() {
    return 'CategoryModel(id: $id, name: $name, commentList: $commentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._commentList, _commentList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_commentList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      __$$_CategoryModelCopyWithImpl<_$_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryModelToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
      {@JsonKey(name: 'category_id')
          required final int id,
      @JsonKey(name: 'category_name')
          required final String name,
      @JsonKey(name: 'comments')
          required final List<CommentModel> commentList}) = _$_CategoryModel;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryModel.fromJson;

  @override
  @JsonKey(name: 'category_id')
  int get id;
  @override
  @JsonKey(name: 'category_name')
  String get name;
  @override
  @JsonKey(name: 'comments')
  List<CommentModel> get commentList;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return _CommentModel.fromJson(json);
}

/// @nodoc
mixin _$CommentModel {
  @JsonKey(name: 'comment')
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentModelCopyWith<CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
          CommentModel value, $Res Function(CommentModel) then) =
      _$CommentModelCopyWithImpl<$Res, CommentModel>;
  @useResult
  $Res call({@JsonKey(name: 'comment') String content});
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res, $Val extends CommentModel>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentModelCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$_CommentModelCopyWith(
          _$_CommentModel value, $Res Function(_$_CommentModel) then) =
      __$$_CommentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'comment') String content});
}

/// @nodoc
class __$$_CommentModelCopyWithImpl<$Res>
    extends _$CommentModelCopyWithImpl<$Res, _$_CommentModel>
    implements _$$_CommentModelCopyWith<$Res> {
  __$$_CommentModelCopyWithImpl(
      _$_CommentModel _value, $Res Function(_$_CommentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$_CommentModel(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentModel implements _CommentModel {
  const _$_CommentModel({@JsonKey(name: 'comment') required this.content});

  factory _$_CommentModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommentModelFromJson(json);

  @override
  @JsonKey(name: 'comment')
  final String content;

  @override
  String toString() {
    return 'CommentModel(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentModel &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentModelCopyWith<_$_CommentModel> get copyWith =>
      __$$_CommentModelCopyWithImpl<_$_CommentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentModelToJson(
      this,
    );
  }
}

abstract class _CommentModel implements CommentModel {
  const factory _CommentModel(
          {@JsonKey(name: 'comment') required final String content}) =
      _$_CommentModel;

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$_CommentModel.fromJson;

  @override
  @JsonKey(name: 'comment')
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_CommentModelCopyWith<_$_CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherCommentsModel _$OtherCommentsModelFromJson(Map<String, dynamic> json) {
  return _OtherCommentsModel.fromJson(json);
}

/// @nodoc
mixin _$OtherCommentsModel {
  @JsonKey(name: 'categories')
  List<OtherCategoryModel> get categoryList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherCommentsModelCopyWith<OtherCommentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherCommentsModelCopyWith<$Res> {
  factory $OtherCommentsModelCopyWith(
          OtherCommentsModel value, $Res Function(OtherCommentsModel) then) =
      _$OtherCommentsModelCopyWithImpl<$Res, OtherCommentsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'categories') List<OtherCategoryModel> categoryList});
}

/// @nodoc
class _$OtherCommentsModelCopyWithImpl<$Res, $Val extends OtherCommentsModel>
    implements $OtherCommentsModelCopyWith<$Res> {
  _$OtherCommentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
  }) {
    return _then(_value.copyWith(
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<OtherCategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OtherCommentsModelCopyWith<$Res>
    implements $OtherCommentsModelCopyWith<$Res> {
  factory _$$_OtherCommentsModelCopyWith(_$_OtherCommentsModel value,
          $Res Function(_$_OtherCommentsModel) then) =
      __$$_OtherCommentsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'categories') List<OtherCategoryModel> categoryList});
}

/// @nodoc
class __$$_OtherCommentsModelCopyWithImpl<$Res>
    extends _$OtherCommentsModelCopyWithImpl<$Res, _$_OtherCommentsModel>
    implements _$$_OtherCommentsModelCopyWith<$Res> {
  __$$_OtherCommentsModelCopyWithImpl(
      _$_OtherCommentsModel _value, $Res Function(_$_OtherCommentsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
  }) {
    return _then(_$_OtherCommentsModel(
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<OtherCategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtherCommentsModel implements _OtherCommentsModel {
  const _$_OtherCommentsModel(
      {@JsonKey(name: 'categories')
          required final List<OtherCategoryModel> categoryList})
      : _categoryList = categoryList;

  factory _$_OtherCommentsModel.fromJson(Map<String, dynamic> json) =>
      _$$_OtherCommentsModelFromJson(json);

  final List<OtherCategoryModel> _categoryList;
  @override
  @JsonKey(name: 'categories')
  List<OtherCategoryModel> get categoryList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  String toString() {
    return 'OtherCommentsModel(categoryList: $categoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtherCommentsModel &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtherCommentsModelCopyWith<_$_OtherCommentsModel> get copyWith =>
      __$$_OtherCommentsModelCopyWithImpl<_$_OtherCommentsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtherCommentsModelToJson(
      this,
    );
  }
}

abstract class _OtherCommentsModel implements OtherCommentsModel {
  const factory _OtherCommentsModel(
          {@JsonKey(name: 'categories')
              required final List<OtherCategoryModel> categoryList}) =
      _$_OtherCommentsModel;

  factory _OtherCommentsModel.fromJson(Map<String, dynamic> json) =
      _$_OtherCommentsModel.fromJson;

  @override
  @JsonKey(name: 'categories')
  List<OtherCategoryModel> get categoryList;
  @override
  @JsonKey(ignore: true)
  _$$_OtherCommentsModelCopyWith<_$_OtherCommentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherCategoryModel _$OtherCategoryModelFromJson(Map<String, dynamic> json) {
  return _OtherCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$OtherCategoryModel {
  @JsonKey(name: 'category_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments')
  List<OtherCommentModel> get commentList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherCategoryModelCopyWith<OtherCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherCategoryModelCopyWith<$Res> {
  factory $OtherCategoryModelCopyWith(
          OtherCategoryModel value, $Res Function(OtherCategoryModel) then) =
      _$OtherCategoryModelCopyWithImpl<$Res, OtherCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'category_name') String name,
      @JsonKey(name: 'comments') List<OtherCommentModel> commentList});
}

/// @nodoc
class _$OtherCategoryModelCopyWithImpl<$Res, $Val extends OtherCategoryModel>
    implements $OtherCategoryModelCopyWith<$Res> {
  _$OtherCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? commentList = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      commentList: null == commentList
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<OtherCommentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OtherCategoryModelCopyWith<$Res>
    implements $OtherCategoryModelCopyWith<$Res> {
  factory _$$_OtherCategoryModelCopyWith(_$_OtherCategoryModel value,
          $Res Function(_$_OtherCategoryModel) then) =
      __$$_OtherCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'category_name') String name,
      @JsonKey(name: 'comments') List<OtherCommentModel> commentList});
}

/// @nodoc
class __$$_OtherCategoryModelCopyWithImpl<$Res>
    extends _$OtherCategoryModelCopyWithImpl<$Res, _$_OtherCategoryModel>
    implements _$$_OtherCategoryModelCopyWith<$Res> {
  __$$_OtherCategoryModelCopyWithImpl(
      _$_OtherCategoryModel _value, $Res Function(_$_OtherCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? commentList = null,
  }) {
    return _then(_$_OtherCategoryModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      commentList: null == commentList
          ? _value._commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<OtherCommentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtherCategoryModel implements _OtherCategoryModel {
  const _$_OtherCategoryModel(
      {@JsonKey(name: 'category_name')
          required this.name,
      @JsonKey(name: 'comments')
          required final List<OtherCommentModel> commentList})
      : _commentList = commentList;

  factory _$_OtherCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_OtherCategoryModelFromJson(json);

  @override
  @JsonKey(name: 'category_name')
  final String name;
  final List<OtherCommentModel> _commentList;
  @override
  @JsonKey(name: 'comments')
  List<OtherCommentModel> get commentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentList);
  }

  @override
  String toString() {
    return 'OtherCategoryModel(name: $name, commentList: $commentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtherCategoryModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._commentList, _commentList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_commentList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtherCategoryModelCopyWith<_$_OtherCategoryModel> get copyWith =>
      __$$_OtherCategoryModelCopyWithImpl<_$_OtherCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtherCategoryModelToJson(
      this,
    );
  }
}

abstract class _OtherCategoryModel implements OtherCategoryModel {
  const factory _OtherCategoryModel(
          {@JsonKey(name: 'category_name')
              required final String name,
          @JsonKey(name: 'comments')
              required final List<OtherCommentModel> commentList}) =
      _$_OtherCategoryModel;

  factory _OtherCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_OtherCategoryModel.fromJson;

  @override
  @JsonKey(name: 'category_name')
  String get name;
  @override
  @JsonKey(name: 'comments')
  List<OtherCommentModel> get commentList;
  @override
  @JsonKey(ignore: true)
  _$$_OtherCategoryModelCopyWith<_$_OtherCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherCommentModel _$OtherCommentModelFromJson(Map<String, dynamic> json) {
  return _OtherCommentModel.fromJson(json);
}

/// @nodoc
mixin _$OtherCommentModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherCommentModelCopyWith<OtherCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherCommentModelCopyWith<$Res> {
  factory $OtherCommentModelCopyWith(
          OtherCommentModel value, $Res Function(OtherCommentModel) then) =
      _$OtherCommentModelCopyWithImpl<$Res, OtherCommentModel>;
  @useResult
  $Res call({int id, String title, @JsonKey(name: 'comment') String content});
}

/// @nodoc
class _$OtherCommentModelCopyWithImpl<$Res, $Val extends OtherCommentModel>
    implements $OtherCommentModelCopyWith<$Res> {
  _$OtherCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OtherCommentModelCopyWith<$Res>
    implements $OtherCommentModelCopyWith<$Res> {
  factory _$$_OtherCommentModelCopyWith(_$_OtherCommentModel value,
          $Res Function(_$_OtherCommentModel) then) =
      __$$_OtherCommentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, @JsonKey(name: 'comment') String content});
}

/// @nodoc
class __$$_OtherCommentModelCopyWithImpl<$Res>
    extends _$OtherCommentModelCopyWithImpl<$Res, _$_OtherCommentModel>
    implements _$$_OtherCommentModelCopyWith<$Res> {
  __$$_OtherCommentModelCopyWithImpl(
      _$_OtherCommentModel _value, $Res Function(_$_OtherCommentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$_OtherCommentModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtherCommentModel implements _OtherCommentModel {
  const _$_OtherCommentModel(
      {required this.id,
      required this.title,
      @JsonKey(name: 'comment') required this.content});

  factory _$_OtherCommentModel.fromJson(Map<String, dynamic> json) =>
      _$$_OtherCommentModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'comment')
  final String content;

  @override
  String toString() {
    return 'OtherCommentModel(id: $id, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtherCommentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtherCommentModelCopyWith<_$_OtherCommentModel> get copyWith =>
      __$$_OtherCommentModelCopyWithImpl<_$_OtherCommentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtherCommentModelToJson(
      this,
    );
  }
}

abstract class _OtherCommentModel implements OtherCommentModel {
  const factory _OtherCommentModel(
          {required final int id,
          required final String title,
          @JsonKey(name: 'comment') required final String content}) =
      _$_OtherCommentModel;

  factory _OtherCommentModel.fromJson(Map<String, dynamic> json) =
      _$_OtherCommentModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'comment')
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_OtherCommentModelCopyWith<_$_OtherCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

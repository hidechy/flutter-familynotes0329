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
mixin _$LifeHabitQuestionListModel {
  List<LifeHabitQuestionModel> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LifeHabitQuestionListModelCopyWith<LifeHabitQuestionListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeHabitQuestionListModelCopyWith<$Res> {
  factory $LifeHabitQuestionListModelCopyWith(LifeHabitQuestionListModel value,
          $Res Function(LifeHabitQuestionListModel) then) =
      _$LifeHabitQuestionListModelCopyWithImpl<$Res,
          LifeHabitQuestionListModel>;
  @useResult
  $Res call({List<LifeHabitQuestionModel> list});
}

/// @nodoc
class _$LifeHabitQuestionListModelCopyWithImpl<$Res,
        $Val extends LifeHabitQuestionListModel>
    implements $LifeHabitQuestionListModelCopyWith<$Res> {
  _$LifeHabitQuestionListModelCopyWithImpl(this._value, this._then);

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
              as List<LifeHabitQuestionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LifeHabitQuestionListModelCopyWith<$Res>
    implements $LifeHabitQuestionListModelCopyWith<$Res> {
  factory _$$_LifeHabitQuestionListModelCopyWith(
          _$_LifeHabitQuestionListModel value,
          $Res Function(_$_LifeHabitQuestionListModel) then) =
      __$$_LifeHabitQuestionListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LifeHabitQuestionModel> list});
}

/// @nodoc
class __$$_LifeHabitQuestionListModelCopyWithImpl<$Res>
    extends _$LifeHabitQuestionListModelCopyWithImpl<$Res,
        _$_LifeHabitQuestionListModel>
    implements _$$_LifeHabitQuestionListModelCopyWith<$Res> {
  __$$_LifeHabitQuestionListModelCopyWithImpl(
      _$_LifeHabitQuestionListModel _value,
      $Res Function(_$_LifeHabitQuestionListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_LifeHabitQuestionListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<LifeHabitQuestionModel>,
    ));
  }
}

/// @nodoc

class _$_LifeHabitQuestionListModel implements _LifeHabitQuestionListModel {
  const _$_LifeHabitQuestionListModel(
      {required final List<LifeHabitQuestionModel> list})
      : _list = list;

  final List<LifeHabitQuestionModel> _list;
  @override
  List<LifeHabitQuestionModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'LifeHabitQuestionListModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LifeHabitQuestionListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LifeHabitQuestionListModelCopyWith<_$_LifeHabitQuestionListModel>
      get copyWith => __$$_LifeHabitQuestionListModelCopyWithImpl<
          _$_LifeHabitQuestionListModel>(this, _$identity);
}

abstract class _LifeHabitQuestionListModel
    implements LifeHabitQuestionListModel {
  const factory _LifeHabitQuestionListModel(
          {required final List<LifeHabitQuestionModel> list}) =
      _$_LifeHabitQuestionListModel;

  @override
  List<LifeHabitQuestionModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_LifeHabitQuestionListModelCopyWith<_$_LifeHabitQuestionListModel>
      get copyWith => throw _privateConstructorUsedError;
}

LifeHabitQuestionModel _$LifeHabitQuestionModelFromJson(
    Map<String, dynamic> json) {
  return _LifeHabitQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$LifeHabitQuestionModel {
  @JsonKey(name: 'question_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'hint')
  String get hint => throw _privateConstructorUsedError;
  @JsonKey(name: 'question')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'choices')
  List<ChoiceModel> get choices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LifeHabitQuestionModelCopyWith<LifeHabitQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeHabitQuestionModelCopyWith<$Res> {
  factory $LifeHabitQuestionModelCopyWith(LifeHabitQuestionModel value,
          $Res Function(LifeHabitQuestionModel) then) =
      _$LifeHabitQuestionModelCopyWithImpl<$Res, LifeHabitQuestionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'question_id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'hint') String hint,
      @JsonKey(name: 'question') String content,
      @JsonKey(name: 'choices') List<ChoiceModel> choices});
}

/// @nodoc
class _$LifeHabitQuestionModelCopyWithImpl<$Res,
        $Val extends LifeHabitQuestionModel>
    implements $LifeHabitQuestionModelCopyWith<$Res> {
  _$LifeHabitQuestionModelCopyWithImpl(this._value, this._then);

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
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LifeHabitQuestionModelCopyWith<$Res>
    implements $LifeHabitQuestionModelCopyWith<$Res> {
  factory _$$_LifeHabitQuestionModelCopyWith(_$_LifeHabitQuestionModel value,
          $Res Function(_$_LifeHabitQuestionModel) then) =
      __$$_LifeHabitQuestionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'question_id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'hint') String hint,
      @JsonKey(name: 'question') String content,
      @JsonKey(name: 'choices') List<ChoiceModel> choices});
}

/// @nodoc
class __$$_LifeHabitQuestionModelCopyWithImpl<$Res>
    extends _$LifeHabitQuestionModelCopyWithImpl<$Res,
        _$_LifeHabitQuestionModel>
    implements _$$_LifeHabitQuestionModelCopyWith<$Res> {
  __$$_LifeHabitQuestionModelCopyWithImpl(_$_LifeHabitQuestionModel _value,
      $Res Function(_$_LifeHabitQuestionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? hint = null,
    Object? content = null,
    Object? choices = null,
  }) {
    return _then(_$_LifeHabitQuestionModel(
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
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LifeHabitQuestionModel implements _LifeHabitQuestionModel {
  const _$_LifeHabitQuestionModel(
      {@JsonKey(name: 'question_id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'hint') this.hint = '',
      @JsonKey(name: 'question') required this.content,
      @JsonKey(name: 'choices') required final List<ChoiceModel> choices})
      : _choices = choices;

  factory _$_LifeHabitQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_LifeHabitQuestionModelFromJson(json);

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
  final List<ChoiceModel> _choices;
  @override
  @JsonKey(name: 'choices')
  List<ChoiceModel> get choices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  String toString() {
    return 'LifeHabitQuestionModel(id: $id, title: $title, hint: $hint, content: $content, choices: $choices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LifeHabitQuestionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, hint, content,
      const DeepCollectionEquality().hash(_choices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LifeHabitQuestionModelCopyWith<_$_LifeHabitQuestionModel> get copyWith =>
      __$$_LifeHabitQuestionModelCopyWithImpl<_$_LifeHabitQuestionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LifeHabitQuestionModelToJson(
      this,
    );
  }
}

abstract class _LifeHabitQuestionModel implements LifeHabitQuestionModel {
  const factory _LifeHabitQuestionModel(
          {@JsonKey(name: 'question_id') required final int id,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'hint') final String hint,
          @JsonKey(name: 'question') required final String content,
          @JsonKey(name: 'choices') required final List<ChoiceModel> choices}) =
      _$_LifeHabitQuestionModel;

  factory _LifeHabitQuestionModel.fromJson(Map<String, dynamic> json) =
      _$_LifeHabitQuestionModel.fromJson;

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
  @JsonKey(name: 'choices')
  List<ChoiceModel> get choices;
  @override
  @JsonKey(ignore: true)
  _$$_LifeHabitQuestionModelCopyWith<_$_LifeHabitQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
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

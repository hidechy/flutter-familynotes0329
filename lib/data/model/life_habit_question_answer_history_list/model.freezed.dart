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
mixin _$LifeHabitQuestionAnswerHistoryListModel {
  List<QuestionAnswerHistoryModel> get list =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LifeHabitQuestionAnswerHistoryListModelCopyWith<
          LifeHabitQuestionAnswerHistoryListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeHabitQuestionAnswerHistoryListModelCopyWith<$Res> {
  factory $LifeHabitQuestionAnswerHistoryListModelCopyWith(
          LifeHabitQuestionAnswerHistoryListModel value,
          $Res Function(LifeHabitQuestionAnswerHistoryListModel) then) =
      _$LifeHabitQuestionAnswerHistoryListModelCopyWithImpl<$Res,
          LifeHabitQuestionAnswerHistoryListModel>;
  @useResult
  $Res call({List<QuestionAnswerHistoryModel> list});
}

/// @nodoc
class _$LifeHabitQuestionAnswerHistoryListModelCopyWithImpl<$Res,
        $Val extends LifeHabitQuestionAnswerHistoryListModel>
    implements $LifeHabitQuestionAnswerHistoryListModelCopyWith<$Res> {
  _$LifeHabitQuestionAnswerHistoryListModelCopyWithImpl(
      this._value, this._then);

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
              as List<QuestionAnswerHistoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LifeHabitQuestionAnswerHistoryListModelCopyWith<$Res>
    implements $LifeHabitQuestionAnswerHistoryListModelCopyWith<$Res> {
  factory _$$_LifeHabitQuestionAnswerHistoryListModelCopyWith(
          _$_LifeHabitQuestionAnswerHistoryListModel value,
          $Res Function(_$_LifeHabitQuestionAnswerHistoryListModel) then) =
      __$$_LifeHabitQuestionAnswerHistoryListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuestionAnswerHistoryModel> list});
}

/// @nodoc
class __$$_LifeHabitQuestionAnswerHistoryListModelCopyWithImpl<$Res>
    extends _$LifeHabitQuestionAnswerHistoryListModelCopyWithImpl<$Res,
        _$_LifeHabitQuestionAnswerHistoryListModel>
    implements _$$_LifeHabitQuestionAnswerHistoryListModelCopyWith<$Res> {
  __$$_LifeHabitQuestionAnswerHistoryListModelCopyWithImpl(
      _$_LifeHabitQuestionAnswerHistoryListModel _value,
      $Res Function(_$_LifeHabitQuestionAnswerHistoryListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_LifeHabitQuestionAnswerHistoryListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswerHistoryModel>,
    ));
  }
}

/// @nodoc

class _$_LifeHabitQuestionAnswerHistoryListModel
    implements _LifeHabitQuestionAnswerHistoryListModel {
  const _$_LifeHabitQuestionAnswerHistoryListModel(
      {required final List<QuestionAnswerHistoryModel> list})
      : _list = list;

  final List<QuestionAnswerHistoryModel> _list;
  @override
  List<QuestionAnswerHistoryModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'LifeHabitQuestionAnswerHistoryListModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LifeHabitQuestionAnswerHistoryListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LifeHabitQuestionAnswerHistoryListModelCopyWith<
          _$_LifeHabitQuestionAnswerHistoryListModel>
      get copyWith => __$$_LifeHabitQuestionAnswerHistoryListModelCopyWithImpl<
          _$_LifeHabitQuestionAnswerHistoryListModel>(this, _$identity);
}

abstract class _LifeHabitQuestionAnswerHistoryListModel
    implements LifeHabitQuestionAnswerHistoryListModel {
  const factory _LifeHabitQuestionAnswerHistoryListModel(
          {required final List<QuestionAnswerHistoryModel> list}) =
      _$_LifeHabitQuestionAnswerHistoryListModel;

  @override
  List<QuestionAnswerHistoryModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_LifeHabitQuestionAnswerHistoryListModelCopyWith<
          _$_LifeHabitQuestionAnswerHistoryListModel>
      get copyWith => throw _privateConstructorUsedError;
}

QuestionAnswerHistoryModel _$QuestionAnswerHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionAnswerHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionAnswerHistoryModel {
  @JsonKey(name: 'id')
  int get answerHeaderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_date')
  String get answerDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionAnswerHistoryModelCopyWith<QuestionAnswerHistoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerHistoryModelCopyWith<$Res> {
  factory $QuestionAnswerHistoryModelCopyWith(QuestionAnswerHistoryModel value,
          $Res Function(QuestionAnswerHistoryModel) then) =
      _$QuestionAnswerHistoryModelCopyWithImpl<$Res,
          QuestionAnswerHistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int answerHeaderId,
      @JsonKey(name: 'answer_date') String answerDate});
}

/// @nodoc
class _$QuestionAnswerHistoryModelCopyWithImpl<$Res,
        $Val extends QuestionAnswerHistoryModel>
    implements $QuestionAnswerHistoryModelCopyWith<$Res> {
  _$QuestionAnswerHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerHeaderId = null,
    Object? answerDate = null,
  }) {
    return _then(_value.copyWith(
      answerHeaderId: null == answerHeaderId
          ? _value.answerHeaderId
          : answerHeaderId // ignore: cast_nullable_to_non_nullable
              as int,
      answerDate: null == answerDate
          ? _value.answerDate
          : answerDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionAnswerHistoryModelCopyWith<$Res>
    implements $QuestionAnswerHistoryModelCopyWith<$Res> {
  factory _$$_QuestionAnswerHistoryModelCopyWith(
          _$_QuestionAnswerHistoryModel value,
          $Res Function(_$_QuestionAnswerHistoryModel) then) =
      __$$_QuestionAnswerHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int answerHeaderId,
      @JsonKey(name: 'answer_date') String answerDate});
}

/// @nodoc
class __$$_QuestionAnswerHistoryModelCopyWithImpl<$Res>
    extends _$QuestionAnswerHistoryModelCopyWithImpl<$Res,
        _$_QuestionAnswerHistoryModel>
    implements _$$_QuestionAnswerHistoryModelCopyWith<$Res> {
  __$$_QuestionAnswerHistoryModelCopyWithImpl(
      _$_QuestionAnswerHistoryModel _value,
      $Res Function(_$_QuestionAnswerHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerHeaderId = null,
    Object? answerDate = null,
  }) {
    return _then(_$_QuestionAnswerHistoryModel(
      answerHeaderId: null == answerHeaderId
          ? _value.answerHeaderId
          : answerHeaderId // ignore: cast_nullable_to_non_nullable
              as int,
      answerDate: null == answerDate
          ? _value.answerDate
          : answerDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionAnswerHistoryModel implements _QuestionAnswerHistoryModel {
  const _$_QuestionAnswerHistoryModel(
      {@JsonKey(name: 'id') required this.answerHeaderId,
      @JsonKey(name: 'answer_date') required this.answerDate});

  factory _$_QuestionAnswerHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionAnswerHistoryModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int answerHeaderId;
  @override
  @JsonKey(name: 'answer_date')
  final String answerDate;

  @override
  String toString() {
    return 'QuestionAnswerHistoryModel(answerHeaderId: $answerHeaderId, answerDate: $answerDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionAnswerHistoryModel &&
            (identical(other.answerHeaderId, answerHeaderId) ||
                other.answerHeaderId == answerHeaderId) &&
            (identical(other.answerDate, answerDate) ||
                other.answerDate == answerDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, answerHeaderId, answerDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionAnswerHistoryModelCopyWith<_$_QuestionAnswerHistoryModel>
      get copyWith => __$$_QuestionAnswerHistoryModelCopyWithImpl<
          _$_QuestionAnswerHistoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionAnswerHistoryModelToJson(
      this,
    );
  }
}

abstract class _QuestionAnswerHistoryModel
    implements QuestionAnswerHistoryModel {
  const factory _QuestionAnswerHistoryModel(
          {@JsonKey(name: 'id') required final int answerHeaderId,
          @JsonKey(name: 'answer_date') required final String answerDate}) =
      _$_QuestionAnswerHistoryModel;

  factory _QuestionAnswerHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionAnswerHistoryModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get answerHeaderId;
  @override
  @JsonKey(name: 'answer_date')
  String get answerDate;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionAnswerHistoryModelCopyWith<_$_QuestionAnswerHistoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

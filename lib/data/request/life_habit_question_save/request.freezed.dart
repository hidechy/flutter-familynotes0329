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

LifeHabitQuestionSaveRequest _$LifeHabitQuestionSaveRequestFromJson(
    Map<String, dynamic> json) {
  return _LifeHabitQuestionSaveRequest.fromJson(json);
}

/// @nodoc
mixin _$LifeHabitQuestionSaveRequest {
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'answers')
  List<AnswerRequest> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LifeHabitQuestionSaveRequestCopyWith<LifeHabitQuestionSaveRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeHabitQuestionSaveRequestCopyWith<$Res> {
  factory $LifeHabitQuestionSaveRequestCopyWith(
          LifeHabitQuestionSaveRequest value,
          $Res Function(LifeHabitQuestionSaveRequest) then) =
      _$LifeHabitQuestionSaveRequestCopyWithImpl<$Res,
          LifeHabitQuestionSaveRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'answers') List<AnswerRequest> answers});
}

/// @nodoc
class _$LifeHabitQuestionSaveRequestCopyWithImpl<$Res,
        $Val extends LifeHabitQuestionSaveRequest>
    implements $LifeHabitQuestionSaveRequestCopyWith<$Res> {
  _$LifeHabitQuestionSaveRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LifeHabitQuestionSaveRequestCopyWith<$Res>
    implements $LifeHabitQuestionSaveRequestCopyWith<$Res> {
  factory _$$_LifeHabitQuestionSaveRequestCopyWith(
          _$_LifeHabitQuestionSaveRequest value,
          $Res Function(_$_LifeHabitQuestionSaveRequest) then) =
      __$$_LifeHabitQuestionSaveRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'answers') List<AnswerRequest> answers});
}

/// @nodoc
class __$$_LifeHabitQuestionSaveRequestCopyWithImpl<$Res>
    extends _$LifeHabitQuestionSaveRequestCopyWithImpl<$Res,
        _$_LifeHabitQuestionSaveRequest>
    implements _$$_LifeHabitQuestionSaveRequestCopyWith<$Res> {
  __$$_LifeHabitQuestionSaveRequestCopyWithImpl(
      _$_LifeHabitQuestionSaveRequest _value,
      $Res Function(_$_LifeHabitQuestionSaveRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? answers = null,
  }) {
    return _then(_$_LifeHabitQuestionSaveRequest(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerRequest>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LifeHabitQuestionSaveRequest implements _LifeHabitQuestionSaveRequest {
  const _$_LifeHabitQuestionSaveRequest(
      {@JsonKey(name: 'child_id') required this.childId,
      @JsonKey(name: 'answers') required final List<AnswerRequest> answers})
      : _answers = answers;

  factory _$_LifeHabitQuestionSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$$_LifeHabitQuestionSaveRequestFromJson(json);

  @override
  @JsonKey(name: 'child_id')
  final int childId;
  final List<AnswerRequest> _answers;
  @override
  @JsonKey(name: 'answers')
  List<AnswerRequest> get answers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'LifeHabitQuestionSaveRequest(childId: $childId, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LifeHabitQuestionSaveRequest &&
            (identical(other.childId, childId) || other.childId == childId) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, childId, const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LifeHabitQuestionSaveRequestCopyWith<_$_LifeHabitQuestionSaveRequest>
      get copyWith => __$$_LifeHabitQuestionSaveRequestCopyWithImpl<
          _$_LifeHabitQuestionSaveRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LifeHabitQuestionSaveRequestToJson(
      this,
    );
  }
}

abstract class _LifeHabitQuestionSaveRequest
    implements LifeHabitQuestionSaveRequest {
  const factory _LifeHabitQuestionSaveRequest(
          {@JsonKey(name: 'child_id')
              required final int childId,
          @JsonKey(name: 'answers')
              required final List<AnswerRequest> answers}) =
      _$_LifeHabitQuestionSaveRequest;

  factory _LifeHabitQuestionSaveRequest.fromJson(Map<String, dynamic> json) =
      _$_LifeHabitQuestionSaveRequest.fromJson;

  @override
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'answers')
  List<AnswerRequest> get answers;
  @override
  @JsonKey(ignore: true)
  _$$_LifeHabitQuestionSaveRequestCopyWith<_$_LifeHabitQuestionSaveRequest>
      get copyWith => throw _privateConstructorUsedError;
}

AnswerRequest _$AnswerRequestFromJson(Map<String, dynamic> json) {
  return _AnswerRequest.fromJson(json);
}

/// @nodoc
mixin _$AnswerRequest {
  @JsonKey(name: 'question_id')
  int get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'choice_id')
  int get choiceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerRequestCopyWith<AnswerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerRequestCopyWith<$Res> {
  factory $AnswerRequestCopyWith(
          AnswerRequest value, $Res Function(AnswerRequest) then) =
      _$AnswerRequestCopyWithImpl<$Res, AnswerRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'question_id') int questionId,
      @JsonKey(name: 'choice_id') int choiceId});
}

/// @nodoc
class _$AnswerRequestCopyWithImpl<$Res, $Val extends AnswerRequest>
    implements $AnswerRequestCopyWith<$Res> {
  _$AnswerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? choiceId = null,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      choiceId: null == choiceId
          ? _value.choiceId
          : choiceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerRequestCopyWith<$Res>
    implements $AnswerRequestCopyWith<$Res> {
  factory _$$_AnswerRequestCopyWith(
          _$_AnswerRequest value, $Res Function(_$_AnswerRequest) then) =
      __$$_AnswerRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'question_id') int questionId,
      @JsonKey(name: 'choice_id') int choiceId});
}

/// @nodoc
class __$$_AnswerRequestCopyWithImpl<$Res>
    extends _$AnswerRequestCopyWithImpl<$Res, _$_AnswerRequest>
    implements _$$_AnswerRequestCopyWith<$Res> {
  __$$_AnswerRequestCopyWithImpl(
      _$_AnswerRequest _value, $Res Function(_$_AnswerRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? choiceId = null,
  }) {
    return _then(_$_AnswerRequest(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      choiceId: null == choiceId
          ? _value.choiceId
          : choiceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerRequest implements _AnswerRequest {
  const _$_AnswerRequest(
      {@JsonKey(name: 'question_id') required this.questionId,
      @JsonKey(name: 'choice_id') required this.choiceId});

  factory _$_AnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerRequestFromJson(json);

  @override
  @JsonKey(name: 'question_id')
  final int questionId;
  @override
  @JsonKey(name: 'choice_id')
  final int choiceId;

  @override
  String toString() {
    return 'AnswerRequest(questionId: $questionId, choiceId: $choiceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerRequest &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.choiceId, choiceId) ||
                other.choiceId == choiceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questionId, choiceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerRequestCopyWith<_$_AnswerRequest> get copyWith =>
      __$$_AnswerRequestCopyWithImpl<_$_AnswerRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerRequestToJson(
      this,
    );
  }
}

abstract class _AnswerRequest implements AnswerRequest {
  const factory _AnswerRequest(
          {@JsonKey(name: 'question_id') required final int questionId,
          @JsonKey(name: 'choice_id') required final int choiceId}) =
      _$_AnswerRequest;

  factory _AnswerRequest.fromJson(Map<String, dynamic> json) =
      _$_AnswerRequest.fromJson;

  @override
  @JsonKey(name: 'question_id')
  int get questionId;
  @override
  @JsonKey(name: 'choice_id')
  int get choiceId;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerRequestCopyWith<_$_AnswerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

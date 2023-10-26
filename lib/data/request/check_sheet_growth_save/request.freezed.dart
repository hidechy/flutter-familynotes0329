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

CheckSheetGrowthSaveRequest _$CheckSheetGrowthSaveRequestFromJson(
    Map<String, dynamic> json) {
  return _CheckSheetGrowthSaveRequest.fromJson(json);
}

/// @nodoc
mixin _$CheckSheetGrowthSaveRequest {
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'answers')
  List<GrowthQustionAnswerRequest> get answerList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckSheetGrowthSaveRequestCopyWith<CheckSheetGrowthSaveRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSheetGrowthSaveRequestCopyWith<$Res> {
  factory $CheckSheetGrowthSaveRequestCopyWith(
          CheckSheetGrowthSaveRequest value,
          $Res Function(CheckSheetGrowthSaveRequest) then) =
      _$CheckSheetGrowthSaveRequestCopyWithImpl<$Res,
          CheckSheetGrowthSaveRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'answers') List<GrowthQustionAnswerRequest> answerList});
}

/// @nodoc
class _$CheckSheetGrowthSaveRequestCopyWithImpl<$Res,
        $Val extends CheckSheetGrowthSaveRequest>
    implements $CheckSheetGrowthSaveRequestCopyWith<$Res> {
  _$CheckSheetGrowthSaveRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? answerList = null,
  }) {
    return _then(_value.copyWith(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      answerList: null == answerList
          ? _value.answerList
          : answerList // ignore: cast_nullable_to_non_nullable
              as List<GrowthQustionAnswerRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckSheetGrowthSaveRequestCopyWith<$Res>
    implements $CheckSheetGrowthSaveRequestCopyWith<$Res> {
  factory _$$_CheckSheetGrowthSaveRequestCopyWith(
          _$_CheckSheetGrowthSaveRequest value,
          $Res Function(_$_CheckSheetGrowthSaveRequest) then) =
      __$$_CheckSheetGrowthSaveRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'answers') List<GrowthQustionAnswerRequest> answerList});
}

/// @nodoc
class __$$_CheckSheetGrowthSaveRequestCopyWithImpl<$Res>
    extends _$CheckSheetGrowthSaveRequestCopyWithImpl<$Res,
        _$_CheckSheetGrowthSaveRequest>
    implements _$$_CheckSheetGrowthSaveRequestCopyWith<$Res> {
  __$$_CheckSheetGrowthSaveRequestCopyWithImpl(
      _$_CheckSheetGrowthSaveRequest _value,
      $Res Function(_$_CheckSheetGrowthSaveRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? answerList = null,
  }) {
    return _then(_$_CheckSheetGrowthSaveRequest(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      answerList: null == answerList
          ? _value._answerList
          : answerList // ignore: cast_nullable_to_non_nullable
              as List<GrowthQustionAnswerRequest>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CheckSheetGrowthSaveRequest implements _CheckSheetGrowthSaveRequest {
  const _$_CheckSheetGrowthSaveRequest(
      {@JsonKey(name: 'child_id')
          required this.childId,
      @JsonKey(name: 'answers')
          required final List<GrowthQustionAnswerRequest> answerList})
      : _answerList = answerList;

  factory _$_CheckSheetGrowthSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CheckSheetGrowthSaveRequestFromJson(json);

  @override
  @JsonKey(name: 'child_id')
  final int childId;
  final List<GrowthQustionAnswerRequest> _answerList;
  @override
  @JsonKey(name: 'answers')
  List<GrowthQustionAnswerRequest> get answerList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerList);
  }

  @override
  String toString() {
    return 'CheckSheetGrowthSaveRequest(childId: $childId, answerList: $answerList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckSheetGrowthSaveRequest &&
            (identical(other.childId, childId) || other.childId == childId) &&
            const DeepCollectionEquality()
                .equals(other._answerList, _answerList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, childId, const DeepCollectionEquality().hash(_answerList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckSheetGrowthSaveRequestCopyWith<_$_CheckSheetGrowthSaveRequest>
      get copyWith => __$$_CheckSheetGrowthSaveRequestCopyWithImpl<
          _$_CheckSheetGrowthSaveRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckSheetGrowthSaveRequestToJson(
      this,
    );
  }
}

abstract class _CheckSheetGrowthSaveRequest
    implements CheckSheetGrowthSaveRequest {
  const factory _CheckSheetGrowthSaveRequest(
          {@JsonKey(name: 'child_id')
              required final int childId,
          @JsonKey(name: 'answers')
              required final List<GrowthQustionAnswerRequest> answerList}) =
      _$_CheckSheetGrowthSaveRequest;

  factory _CheckSheetGrowthSaveRequest.fromJson(Map<String, dynamic> json) =
      _$_CheckSheetGrowthSaveRequest.fromJson;

  @override
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'answers')
  List<GrowthQustionAnswerRequest> get answerList;
  @override
  @JsonKey(ignore: true)
  _$$_CheckSheetGrowthSaveRequestCopyWith<_$_CheckSheetGrowthSaveRequest>
      get copyWith => throw _privateConstructorUsedError;
}

GrowthQustionAnswerRequest _$GrowthQustionAnswerRequestFromJson(
    Map<String, dynamic> json) {
  return _GrowthQustionAnswerRequest.fromJson(json);
}

/// @nodoc
mixin _$GrowthQustionAnswerRequest {
  @JsonKey(name: 'growth_check_sheet_id')
  int? get growthCheckSheetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'growth_check_sheet_question_id')
  int get growthCheckSheetQuestionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_check')
  int get isCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrowthQustionAnswerRequestCopyWith<GrowthQustionAnswerRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthQustionAnswerRequestCopyWith<$Res> {
  factory $GrowthQustionAnswerRequestCopyWith(GrowthQustionAnswerRequest value,
          $Res Function(GrowthQustionAnswerRequest) then) =
      _$GrowthQustionAnswerRequestCopyWithImpl<$Res,
          GrowthQustionAnswerRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'growth_check_sheet_id')
          int? growthCheckSheetId,
      @JsonKey(name: 'growth_check_sheet_question_id')
          int growthCheckSheetQuestionId,
      @JsonKey(name: 'is_check')
          int isCheck,
      @JsonKey(name: 'note')
          String note});
}

/// @nodoc
class _$GrowthQustionAnswerRequestCopyWithImpl<$Res,
        $Val extends GrowthQustionAnswerRequest>
    implements $GrowthQustionAnswerRequestCopyWith<$Res> {
  _$GrowthQustionAnswerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? growthCheckSheetId = freezed,
    Object? growthCheckSheetQuestionId = null,
    Object? isCheck = null,
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      growthCheckSheetId: freezed == growthCheckSheetId
          ? _value.growthCheckSheetId
          : growthCheckSheetId // ignore: cast_nullable_to_non_nullable
              as int?,
      growthCheckSheetQuestionId: null == growthCheckSheetQuestionId
          ? _value.growthCheckSheetQuestionId
          : growthCheckSheetQuestionId // ignore: cast_nullable_to_non_nullable
              as int,
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as int,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GrowthQustionAnswerRequestCopyWith<$Res>
    implements $GrowthQustionAnswerRequestCopyWith<$Res> {
  factory _$$_GrowthQustionAnswerRequestCopyWith(
          _$_GrowthQustionAnswerRequest value,
          $Res Function(_$_GrowthQustionAnswerRequest) then) =
      __$$_GrowthQustionAnswerRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'growth_check_sheet_id')
          int? growthCheckSheetId,
      @JsonKey(name: 'growth_check_sheet_question_id')
          int growthCheckSheetQuestionId,
      @JsonKey(name: 'is_check')
          int isCheck,
      @JsonKey(name: 'note')
          String note});
}

/// @nodoc
class __$$_GrowthQustionAnswerRequestCopyWithImpl<$Res>
    extends _$GrowthQustionAnswerRequestCopyWithImpl<$Res,
        _$_GrowthQustionAnswerRequest>
    implements _$$_GrowthQustionAnswerRequestCopyWith<$Res> {
  __$$_GrowthQustionAnswerRequestCopyWithImpl(
      _$_GrowthQustionAnswerRequest _value,
      $Res Function(_$_GrowthQustionAnswerRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? growthCheckSheetId = freezed,
    Object? growthCheckSheetQuestionId = null,
    Object? isCheck = null,
    Object? note = null,
  }) {
    return _then(_$_GrowthQustionAnswerRequest(
      growthCheckSheetId: freezed == growthCheckSheetId
          ? _value.growthCheckSheetId
          : growthCheckSheetId // ignore: cast_nullable_to_non_nullable
              as int?,
      growthCheckSheetQuestionId: null == growthCheckSheetQuestionId
          ? _value.growthCheckSheetQuestionId
          : growthCheckSheetQuestionId // ignore: cast_nullable_to_non_nullable
              as int,
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as int,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GrowthQustionAnswerRequest implements _GrowthQustionAnswerRequest {
  const _$_GrowthQustionAnswerRequest(
      {@JsonKey(name: 'growth_check_sheet_id')
          required this.growthCheckSheetId,
      @JsonKey(name: 'growth_check_sheet_question_id')
          required this.growthCheckSheetQuestionId,
      @JsonKey(name: 'is_check')
          required this.isCheck,
      @JsonKey(name: 'note')
          required this.note});

  factory _$_GrowthQustionAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GrowthQustionAnswerRequestFromJson(json);

  @override
  @JsonKey(name: 'growth_check_sheet_id')
  final int? growthCheckSheetId;
  @override
  @JsonKey(name: 'growth_check_sheet_question_id')
  final int growthCheckSheetQuestionId;
  @override
  @JsonKey(name: 'is_check')
  final int isCheck;
  @override
  @JsonKey(name: 'note')
  final String note;

  @override
  String toString() {
    return 'GrowthQustionAnswerRequest(growthCheckSheetId: $growthCheckSheetId, growthCheckSheetQuestionId: $growthCheckSheetQuestionId, isCheck: $isCheck, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GrowthQustionAnswerRequest &&
            (identical(other.growthCheckSheetId, growthCheckSheetId) ||
                other.growthCheckSheetId == growthCheckSheetId) &&
            (identical(other.growthCheckSheetQuestionId,
                    growthCheckSheetQuestionId) ||
                other.growthCheckSheetQuestionId ==
                    growthCheckSheetQuestionId) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, growthCheckSheetId,
      growthCheckSheetQuestionId, isCheck, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GrowthQustionAnswerRequestCopyWith<_$_GrowthQustionAnswerRequest>
      get copyWith => __$$_GrowthQustionAnswerRequestCopyWithImpl<
          _$_GrowthQustionAnswerRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrowthQustionAnswerRequestToJson(
      this,
    );
  }
}

abstract class _GrowthQustionAnswerRequest
    implements GrowthQustionAnswerRequest {
  const factory _GrowthQustionAnswerRequest(
      {@JsonKey(name: 'growth_check_sheet_id')
          required final int? growthCheckSheetId,
      @JsonKey(name: 'growth_check_sheet_question_id')
          required final int growthCheckSheetQuestionId,
      @JsonKey(name: 'is_check')
          required final int isCheck,
      @JsonKey(name: 'note')
          required final String note}) = _$_GrowthQustionAnswerRequest;

  factory _GrowthQustionAnswerRequest.fromJson(Map<String, dynamic> json) =
      _$_GrowthQustionAnswerRequest.fromJson;

  @override
  @JsonKey(name: 'growth_check_sheet_id')
  int? get growthCheckSheetId;
  @override
  @JsonKey(name: 'growth_check_sheet_question_id')
  int get growthCheckSheetQuestionId;
  @override
  @JsonKey(name: 'is_check')
  int get isCheck;
  @override
  @JsonKey(name: 'note')
  String get note;
  @override
  @JsonKey(ignore: true)
  _$$_GrowthQustionAnswerRequestCopyWith<_$_GrowthQustionAnswerRequest>
      get copyWith => throw _privateConstructorUsedError;
}

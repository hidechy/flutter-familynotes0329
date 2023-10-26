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

CheckSheetSupportSaveRequest _$CheckSheetSupportSaveRequestFromJson(
    Map<String, dynamic> json) {
  return _CheckSheetSupportSaveRequest.fromJson(json);
}

/// @nodoc
mixin _$CheckSheetSupportSaveRequest {
  @JsonKey(name: 'child_id')
  int get childId => throw _privateConstructorUsedError;
  @JsonKey(name: 'answers')
  List<SupportQustionAnswerRequest> get answerList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckSheetSupportSaveRequestCopyWith<CheckSheetSupportSaveRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSheetSupportSaveRequestCopyWith<$Res> {
  factory $CheckSheetSupportSaveRequestCopyWith(
          CheckSheetSupportSaveRequest value,
          $Res Function(CheckSheetSupportSaveRequest) then) =
      _$CheckSheetSupportSaveRequestCopyWithImpl<$Res,
          CheckSheetSupportSaveRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'answers') List<SupportQustionAnswerRequest> answerList});
}

/// @nodoc
class _$CheckSheetSupportSaveRequestCopyWithImpl<$Res,
        $Val extends CheckSheetSupportSaveRequest>
    implements $CheckSheetSupportSaveRequestCopyWith<$Res> {
  _$CheckSheetSupportSaveRequestCopyWithImpl(this._value, this._then);

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
              as List<SupportQustionAnswerRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckSheetSupportSaveRequestCopyWith<$Res>
    implements $CheckSheetSupportSaveRequestCopyWith<$Res> {
  factory _$$_CheckSheetSupportSaveRequestCopyWith(
          _$_CheckSheetSupportSaveRequest value,
          $Res Function(_$_CheckSheetSupportSaveRequest) then) =
      __$$_CheckSheetSupportSaveRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'child_id') int childId,
      @JsonKey(name: 'answers') List<SupportQustionAnswerRequest> answerList});
}

/// @nodoc
class __$$_CheckSheetSupportSaveRequestCopyWithImpl<$Res>
    extends _$CheckSheetSupportSaveRequestCopyWithImpl<$Res,
        _$_CheckSheetSupportSaveRequest>
    implements _$$_CheckSheetSupportSaveRequestCopyWith<$Res> {
  __$$_CheckSheetSupportSaveRequestCopyWithImpl(
      _$_CheckSheetSupportSaveRequest _value,
      $Res Function(_$_CheckSheetSupportSaveRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
    Object? answerList = null,
  }) {
    return _then(_$_CheckSheetSupportSaveRequest(
      childId: null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
      answerList: null == answerList
          ? _value._answerList
          : answerList // ignore: cast_nullable_to_non_nullable
              as List<SupportQustionAnswerRequest>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CheckSheetSupportSaveRequest implements _CheckSheetSupportSaveRequest {
  const _$_CheckSheetSupportSaveRequest(
      {@JsonKey(name: 'child_id')
          required this.childId,
      @JsonKey(name: 'answers')
          required final List<SupportQustionAnswerRequest> answerList})
      : _answerList = answerList;

  factory _$_CheckSheetSupportSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CheckSheetSupportSaveRequestFromJson(json);

  @override
  @JsonKey(name: 'child_id')
  final int childId;
  final List<SupportQustionAnswerRequest> _answerList;
  @override
  @JsonKey(name: 'answers')
  List<SupportQustionAnswerRequest> get answerList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerList);
  }

  @override
  String toString() {
    return 'CheckSheetSupportSaveRequest(childId: $childId, answerList: $answerList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckSheetSupportSaveRequest &&
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
  _$$_CheckSheetSupportSaveRequestCopyWith<_$_CheckSheetSupportSaveRequest>
      get copyWith => __$$_CheckSheetSupportSaveRequestCopyWithImpl<
          _$_CheckSheetSupportSaveRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckSheetSupportSaveRequestToJson(
      this,
    );
  }
}

abstract class _CheckSheetSupportSaveRequest
    implements CheckSheetSupportSaveRequest {
  const factory _CheckSheetSupportSaveRequest(
          {@JsonKey(name: 'child_id')
              required final int childId,
          @JsonKey(name: 'answers')
              required final List<SupportQustionAnswerRequest> answerList}) =
      _$_CheckSheetSupportSaveRequest;

  factory _CheckSheetSupportSaveRequest.fromJson(Map<String, dynamic> json) =
      _$_CheckSheetSupportSaveRequest.fromJson;

  @override
  @JsonKey(name: 'child_id')
  int get childId;
  @override
  @JsonKey(name: 'answers')
  List<SupportQustionAnswerRequest> get answerList;
  @override
  @JsonKey(ignore: true)
  _$$_CheckSheetSupportSaveRequestCopyWith<_$_CheckSheetSupportSaveRequest>
      get copyWith => throw _privateConstructorUsedError;
}

SupportQustionAnswerRequest _$SupportQustionAnswerRequestFromJson(
    Map<String, dynamic> json) {
  return _SupportQustionAnswerRequest.fromJson(json);
}

/// @nodoc
mixin _$SupportQustionAnswerRequest {
  @JsonKey(name: 'support_check_sheet_id')
  int? get supportCheckSheetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'support_check_sheet_question_id')
  int get supportCheckSheetQuestionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_check')
  int get isCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportQustionAnswerRequestCopyWith<SupportQustionAnswerRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportQustionAnswerRequestCopyWith<$Res> {
  factory $SupportQustionAnswerRequestCopyWith(
          SupportQustionAnswerRequest value,
          $Res Function(SupportQustionAnswerRequest) then) =
      _$SupportQustionAnswerRequestCopyWithImpl<$Res,
          SupportQustionAnswerRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'support_check_sheet_id')
          int? supportCheckSheetId,
      @JsonKey(name: 'support_check_sheet_question_id')
          int supportCheckSheetQuestionId,
      @JsonKey(name: 'is_check')
          int isCheck,
      @JsonKey(name: 'note')
          String note});
}

/// @nodoc
class _$SupportQustionAnswerRequestCopyWithImpl<$Res,
        $Val extends SupportQustionAnswerRequest>
    implements $SupportQustionAnswerRequestCopyWith<$Res> {
  _$SupportQustionAnswerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supportCheckSheetId = freezed,
    Object? supportCheckSheetQuestionId = null,
    Object? isCheck = null,
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      supportCheckSheetId: freezed == supportCheckSheetId
          ? _value.supportCheckSheetId
          : supportCheckSheetId // ignore: cast_nullable_to_non_nullable
              as int?,
      supportCheckSheetQuestionId: null == supportCheckSheetQuestionId
          ? _value.supportCheckSheetQuestionId
          : supportCheckSheetQuestionId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SupportQustionAnswerRequestCopyWith<$Res>
    implements $SupportQustionAnswerRequestCopyWith<$Res> {
  factory _$$_SupportQustionAnswerRequestCopyWith(
          _$_SupportQustionAnswerRequest value,
          $Res Function(_$_SupportQustionAnswerRequest) then) =
      __$$_SupportQustionAnswerRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'support_check_sheet_id')
          int? supportCheckSheetId,
      @JsonKey(name: 'support_check_sheet_question_id')
          int supportCheckSheetQuestionId,
      @JsonKey(name: 'is_check')
          int isCheck,
      @JsonKey(name: 'note')
          String note});
}

/// @nodoc
class __$$_SupportQustionAnswerRequestCopyWithImpl<$Res>
    extends _$SupportQustionAnswerRequestCopyWithImpl<$Res,
        _$_SupportQustionAnswerRequest>
    implements _$$_SupportQustionAnswerRequestCopyWith<$Res> {
  __$$_SupportQustionAnswerRequestCopyWithImpl(
      _$_SupportQustionAnswerRequest _value,
      $Res Function(_$_SupportQustionAnswerRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supportCheckSheetId = freezed,
    Object? supportCheckSheetQuestionId = null,
    Object? isCheck = null,
    Object? note = null,
  }) {
    return _then(_$_SupportQustionAnswerRequest(
      supportCheckSheetId: freezed == supportCheckSheetId
          ? _value.supportCheckSheetId
          : supportCheckSheetId // ignore: cast_nullable_to_non_nullable
              as int?,
      supportCheckSheetQuestionId: null == supportCheckSheetQuestionId
          ? _value.supportCheckSheetQuestionId
          : supportCheckSheetQuestionId // ignore: cast_nullable_to_non_nullable
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
class _$_SupportQustionAnswerRequest implements _SupportQustionAnswerRequest {
  const _$_SupportQustionAnswerRequest(
      {@JsonKey(name: 'support_check_sheet_id')
          required this.supportCheckSheetId,
      @JsonKey(name: 'support_check_sheet_question_id')
          required this.supportCheckSheetQuestionId,
      @JsonKey(name: 'is_check')
          required this.isCheck,
      @JsonKey(name: 'note')
          required this.note});

  factory _$_SupportQustionAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SupportQustionAnswerRequestFromJson(json);

  @override
  @JsonKey(name: 'support_check_sheet_id')
  final int? supportCheckSheetId;
  @override
  @JsonKey(name: 'support_check_sheet_question_id')
  final int supportCheckSheetQuestionId;
  @override
  @JsonKey(name: 'is_check')
  final int isCheck;
  @override
  @JsonKey(name: 'note')
  final String note;

  @override
  String toString() {
    return 'SupportQustionAnswerRequest(supportCheckSheetId: $supportCheckSheetId, supportCheckSheetQuestionId: $supportCheckSheetQuestionId, isCheck: $isCheck, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportQustionAnswerRequest &&
            (identical(other.supportCheckSheetId, supportCheckSheetId) ||
                other.supportCheckSheetId == supportCheckSheetId) &&
            (identical(other.supportCheckSheetQuestionId,
                    supportCheckSheetQuestionId) ||
                other.supportCheckSheetQuestionId ==
                    supportCheckSheetQuestionId) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, supportCheckSheetId,
      supportCheckSheetQuestionId, isCheck, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupportQustionAnswerRequestCopyWith<_$_SupportQustionAnswerRequest>
      get copyWith => __$$_SupportQustionAnswerRequestCopyWithImpl<
          _$_SupportQustionAnswerRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportQustionAnswerRequestToJson(
      this,
    );
  }
}

abstract class _SupportQustionAnswerRequest
    implements SupportQustionAnswerRequest {
  const factory _SupportQustionAnswerRequest(
      {@JsonKey(name: 'support_check_sheet_id')
          required final int? supportCheckSheetId,
      @JsonKey(name: 'support_check_sheet_question_id')
          required final int supportCheckSheetQuestionId,
      @JsonKey(name: 'is_check')
          required final int isCheck,
      @JsonKey(name: 'note')
          required final String note}) = _$_SupportQustionAnswerRequest;

  factory _SupportQustionAnswerRequest.fromJson(Map<String, dynamic> json) =
      _$_SupportQustionAnswerRequest.fromJson;

  @override
  @JsonKey(name: 'support_check_sheet_id')
  int? get supportCheckSheetId;
  @override
  @JsonKey(name: 'support_check_sheet_question_id')
  int get supportCheckSheetQuestionId;
  @override
  @JsonKey(name: 'is_check')
  int get isCheck;
  @override
  @JsonKey(name: 'note')
  String get note;
  @override
  @JsonKey(ignore: true)
  _$$_SupportQustionAnswerRequestCopyWith<_$_SupportQustionAnswerRequest>
      get copyWith => throw _privateConstructorUsedError;
}

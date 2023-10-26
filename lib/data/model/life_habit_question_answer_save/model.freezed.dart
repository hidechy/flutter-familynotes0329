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

LifeHabitQuestionAnswerSaveModel _$LifeHabitQuestionAnswerSaveModelFromJson(
    Map<String, dynamic> json) {
  return _LifeHabitQuestionAnswerSaveModel.fromJson(json);
}

/// @nodoc
mixin _$LifeHabitQuestionAnswerSaveModel {
  @JsonKey(name: 'lifehabit_answer_header_id')
  int get answerHeaderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LifeHabitQuestionAnswerSaveModelCopyWith<LifeHabitQuestionAnswerSaveModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeHabitQuestionAnswerSaveModelCopyWith<$Res> {
  factory $LifeHabitQuestionAnswerSaveModelCopyWith(
          LifeHabitQuestionAnswerSaveModel value,
          $Res Function(LifeHabitQuestionAnswerSaveModel) then) =
      _$LifeHabitQuestionAnswerSaveModelCopyWithImpl<$Res,
          LifeHabitQuestionAnswerSaveModel>;
  @useResult
  $Res call({@JsonKey(name: 'lifehabit_answer_header_id') int answerHeaderId});
}

/// @nodoc
class _$LifeHabitQuestionAnswerSaveModelCopyWithImpl<$Res,
        $Val extends LifeHabitQuestionAnswerSaveModel>
    implements $LifeHabitQuestionAnswerSaveModelCopyWith<$Res> {
  _$LifeHabitQuestionAnswerSaveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerHeaderId = null,
  }) {
    return _then(_value.copyWith(
      answerHeaderId: null == answerHeaderId
          ? _value.answerHeaderId
          : answerHeaderId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LifeHabitQuestionAnswerSaveModelCopyWith<$Res>
    implements $LifeHabitQuestionAnswerSaveModelCopyWith<$Res> {
  factory _$$_LifeHabitQuestionAnswerSaveModelCopyWith(
          _$_LifeHabitQuestionAnswerSaveModel value,
          $Res Function(_$_LifeHabitQuestionAnswerSaveModel) then) =
      __$$_LifeHabitQuestionAnswerSaveModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'lifehabit_answer_header_id') int answerHeaderId});
}

/// @nodoc
class __$$_LifeHabitQuestionAnswerSaveModelCopyWithImpl<$Res>
    extends _$LifeHabitQuestionAnswerSaveModelCopyWithImpl<$Res,
        _$_LifeHabitQuestionAnswerSaveModel>
    implements _$$_LifeHabitQuestionAnswerSaveModelCopyWith<$Res> {
  __$$_LifeHabitQuestionAnswerSaveModelCopyWithImpl(
      _$_LifeHabitQuestionAnswerSaveModel _value,
      $Res Function(_$_LifeHabitQuestionAnswerSaveModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerHeaderId = null,
  }) {
    return _then(_$_LifeHabitQuestionAnswerSaveModel(
      answerHeaderId: null == answerHeaderId
          ? _value.answerHeaderId
          : answerHeaderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LifeHabitQuestionAnswerSaveModel
    implements _LifeHabitQuestionAnswerSaveModel {
  const _$_LifeHabitQuestionAnswerSaveModel(
      {@JsonKey(name: 'lifehabit_answer_header_id')
          required this.answerHeaderId});

  factory _$_LifeHabitQuestionAnswerSaveModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_LifeHabitQuestionAnswerSaveModelFromJson(json);

  @override
  @JsonKey(name: 'lifehabit_answer_header_id')
  final int answerHeaderId;

  @override
  String toString() {
    return 'LifeHabitQuestionAnswerSaveModel(answerHeaderId: $answerHeaderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LifeHabitQuestionAnswerSaveModel &&
            (identical(other.answerHeaderId, answerHeaderId) ||
                other.answerHeaderId == answerHeaderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, answerHeaderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LifeHabitQuestionAnswerSaveModelCopyWith<
          _$_LifeHabitQuestionAnswerSaveModel>
      get copyWith => __$$_LifeHabitQuestionAnswerSaveModelCopyWithImpl<
          _$_LifeHabitQuestionAnswerSaveModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LifeHabitQuestionAnswerSaveModelToJson(
      this,
    );
  }
}

abstract class _LifeHabitQuestionAnswerSaveModel
    implements LifeHabitQuestionAnswerSaveModel {
  const factory _LifeHabitQuestionAnswerSaveModel(
          {@JsonKey(name: 'lifehabit_answer_header_id')
              required final int answerHeaderId}) =
      _$_LifeHabitQuestionAnswerSaveModel;

  factory _LifeHabitQuestionAnswerSaveModel.fromJson(
      Map<String, dynamic> json) = _$_LifeHabitQuestionAnswerSaveModel.fromJson;

  @override
  @JsonKey(name: 'lifehabit_answer_header_id')
  int get answerHeaderId;
  @override
  @JsonKey(ignore: true)
  _$$_LifeHabitQuestionAnswerSaveModelCopyWith<
          _$_LifeHabitQuestionAnswerSaveModel>
      get copyWith => throw _privateConstructorUsedError;
}

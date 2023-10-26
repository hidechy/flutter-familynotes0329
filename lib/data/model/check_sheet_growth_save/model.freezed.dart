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

CheckSheetGrowthSaveModel _$CheckSheetGrowthSaveModelFromJson(
    Map<String, dynamic> json) {
  return _CheckSheetGrowthSaveModel.fromJson(json);
}

/// @nodoc
mixin _$CheckSheetGrowthSaveModel {
  @JsonKey(name: 'result')
  int get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckSheetGrowthSaveModelCopyWith<CheckSheetGrowthSaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSheetGrowthSaveModelCopyWith<$Res> {
  factory $CheckSheetGrowthSaveModelCopyWith(CheckSheetGrowthSaveModel value,
          $Res Function(CheckSheetGrowthSaveModel) then) =
      _$CheckSheetGrowthSaveModelCopyWithImpl<$Res, CheckSheetGrowthSaveModel>;
  @useResult
  $Res call({@JsonKey(name: 'result') int result});
}

/// @nodoc
class _$CheckSheetGrowthSaveModelCopyWithImpl<$Res,
        $Val extends CheckSheetGrowthSaveModel>
    implements $CheckSheetGrowthSaveModelCopyWith<$Res> {
  _$CheckSheetGrowthSaveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckSheetGrowthSaveModelCopyWith<$Res>
    implements $CheckSheetGrowthSaveModelCopyWith<$Res> {
  factory _$$_CheckSheetGrowthSaveModelCopyWith(
          _$_CheckSheetGrowthSaveModel value,
          $Res Function(_$_CheckSheetGrowthSaveModel) then) =
      __$$_CheckSheetGrowthSaveModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'result') int result});
}

/// @nodoc
class __$$_CheckSheetGrowthSaveModelCopyWithImpl<$Res>
    extends _$CheckSheetGrowthSaveModelCopyWithImpl<$Res,
        _$_CheckSheetGrowthSaveModel>
    implements _$$_CheckSheetGrowthSaveModelCopyWith<$Res> {
  __$$_CheckSheetGrowthSaveModelCopyWithImpl(
      _$_CheckSheetGrowthSaveModel _value,
      $Res Function(_$_CheckSheetGrowthSaveModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_CheckSheetGrowthSaveModel(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckSheetGrowthSaveModel implements _CheckSheetGrowthSaveModel {
  const _$_CheckSheetGrowthSaveModel(
      {@JsonKey(name: 'result') required this.result});

  factory _$_CheckSheetGrowthSaveModel.fromJson(Map<String, dynamic> json) =>
      _$$_CheckSheetGrowthSaveModelFromJson(json);

  @override
  @JsonKey(name: 'result')
  final int result;

  @override
  String toString() {
    return 'CheckSheetGrowthSaveModel(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckSheetGrowthSaveModel &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckSheetGrowthSaveModelCopyWith<_$_CheckSheetGrowthSaveModel>
      get copyWith => __$$_CheckSheetGrowthSaveModelCopyWithImpl<
          _$_CheckSheetGrowthSaveModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckSheetGrowthSaveModelToJson(
      this,
    );
  }
}

abstract class _CheckSheetGrowthSaveModel implements CheckSheetGrowthSaveModel {
  const factory _CheckSheetGrowthSaveModel(
          {@JsonKey(name: 'result') required final int result}) =
      _$_CheckSheetGrowthSaveModel;

  factory _CheckSheetGrowthSaveModel.fromJson(Map<String, dynamic> json) =
      _$_CheckSheetGrowthSaveModel.fromJson;

  @override
  @JsonKey(name: 'result')
  int get result;
  @override
  @JsonKey(ignore: true)
  _$$_CheckSheetGrowthSaveModelCopyWith<_$_CheckSheetGrowthSaveModel>
      get copyWith => throw _privateConstructorUsedError;
}

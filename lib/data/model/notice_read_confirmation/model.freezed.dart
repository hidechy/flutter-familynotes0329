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

NoticeReadConfirmationModel _$NoticeReadConfirmationModelFromJson(
    Map<String, dynamic> json) {
  return _NoticeReadConfirmationModel.fromJson(json);
}

/// @nodoc
mixin _$NoticeReadConfirmationModel {
  @JsonKey(name: 'is_arrival')
  int get isArrival => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeReadConfirmationModelCopyWith<NoticeReadConfirmationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeReadConfirmationModelCopyWith<$Res> {
  factory $NoticeReadConfirmationModelCopyWith(
          NoticeReadConfirmationModel value,
          $Res Function(NoticeReadConfirmationModel) then) =
      _$NoticeReadConfirmationModelCopyWithImpl<$Res,
          NoticeReadConfirmationModel>;
  @useResult
  $Res call({@JsonKey(name: 'is_arrival') int isArrival});
}

/// @nodoc
class _$NoticeReadConfirmationModelCopyWithImpl<$Res,
        $Val extends NoticeReadConfirmationModel>
    implements $NoticeReadConfirmationModelCopyWith<$Res> {
  _$NoticeReadConfirmationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isArrival = null,
  }) {
    return _then(_value.copyWith(
      isArrival: null == isArrival
          ? _value.isArrival
          : isArrival // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoticeReadConfirmationModelCopyWith<$Res>
    implements $NoticeReadConfirmationModelCopyWith<$Res> {
  factory _$$_NoticeReadConfirmationModelCopyWith(
          _$_NoticeReadConfirmationModel value,
          $Res Function(_$_NoticeReadConfirmationModel) then) =
      __$$_NoticeReadConfirmationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'is_arrival') int isArrival});
}

/// @nodoc
class __$$_NoticeReadConfirmationModelCopyWithImpl<$Res>
    extends _$NoticeReadConfirmationModelCopyWithImpl<$Res,
        _$_NoticeReadConfirmationModel>
    implements _$$_NoticeReadConfirmationModelCopyWith<$Res> {
  __$$_NoticeReadConfirmationModelCopyWithImpl(
      _$_NoticeReadConfirmationModel _value,
      $Res Function(_$_NoticeReadConfirmationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isArrival = null,
  }) {
    return _then(_$_NoticeReadConfirmationModel(
      isArrival: null == isArrival
          ? _value.isArrival
          : isArrival // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeReadConfirmationModel implements _NoticeReadConfirmationModel {
  const _$_NoticeReadConfirmationModel(
      {@JsonKey(name: 'is_arrival') this.isArrival = 0});

  factory _$_NoticeReadConfirmationModel.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeReadConfirmationModelFromJson(json);

  @override
  @JsonKey(name: 'is_arrival')
  final int isArrival;

  @override
  String toString() {
    return 'NoticeReadConfirmationModel(isArrival: $isArrival)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeReadConfirmationModel &&
            (identical(other.isArrival, isArrival) ||
                other.isArrival == isArrival));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isArrival);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoticeReadConfirmationModelCopyWith<_$_NoticeReadConfirmationModel>
      get copyWith => __$$_NoticeReadConfirmationModelCopyWithImpl<
          _$_NoticeReadConfirmationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeReadConfirmationModelToJson(
      this,
    );
  }
}

abstract class _NoticeReadConfirmationModel
    implements NoticeReadConfirmationModel {
  const factory _NoticeReadConfirmationModel(
          {@JsonKey(name: 'is_arrival') final int isArrival}) =
      _$_NoticeReadConfirmationModel;

  factory _NoticeReadConfirmationModel.fromJson(Map<String, dynamic> json) =
      _$_NoticeReadConfirmationModel.fromJson;

  @override
  @JsonKey(name: 'is_arrival')
  int get isArrival;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeReadConfirmationModelCopyWith<_$_NoticeReadConfirmationModel>
      get copyWith => throw _privateConstructorUsedError;
}

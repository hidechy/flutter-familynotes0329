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

ConsentContentsConsentRequest _$ConsentContentsConsentRequestFromJson(
    Map<String, dynamic> json) {
  return _ConsentContentsConsentRequest.fromJson(json);
}

/// @nodoc
mixin _$ConsentContentsConsentRequest {
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'consent_id')
  int get consentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsentContentsConsentRequestCopyWith<ConsentContentsConsentRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsentContentsConsentRequestCopyWith<$Res> {
  factory $ConsentContentsConsentRequestCopyWith(
          ConsentContentsConsentRequest value,
          $Res Function(ConsentContentsConsentRequest) then) =
      _$ConsentContentsConsentRequestCopyWithImpl<$Res,
          ConsentContentsConsentRequest>;
  @useResult
  $Res call({int type, @JsonKey(name: 'consent_id') int consentId});
}

/// @nodoc
class _$ConsentContentsConsentRequestCopyWithImpl<$Res,
        $Val extends ConsentContentsConsentRequest>
    implements $ConsentContentsConsentRequestCopyWith<$Res> {
  _$ConsentContentsConsentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? consentId = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      consentId: null == consentId
          ? _value.consentId
          : consentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConsentContentsConsentRequestCopyWith<$Res>
    implements $ConsentContentsConsentRequestCopyWith<$Res> {
  factory _$$_ConsentContentsConsentRequestCopyWith(
          _$_ConsentContentsConsentRequest value,
          $Res Function(_$_ConsentContentsConsentRequest) then) =
      __$$_ConsentContentsConsentRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int type, @JsonKey(name: 'consent_id') int consentId});
}

/// @nodoc
class __$$_ConsentContentsConsentRequestCopyWithImpl<$Res>
    extends _$ConsentContentsConsentRequestCopyWithImpl<$Res,
        _$_ConsentContentsConsentRequest>
    implements _$$_ConsentContentsConsentRequestCopyWith<$Res> {
  __$$_ConsentContentsConsentRequestCopyWithImpl(
      _$_ConsentContentsConsentRequest _value,
      $Res Function(_$_ConsentContentsConsentRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? consentId = null,
  }) {
    return _then(_$_ConsentContentsConsentRequest(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      consentId: null == consentId
          ? _value.consentId
          : consentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConsentContentsConsentRequest
    implements _ConsentContentsConsentRequest {
  const _$_ConsentContentsConsentRequest(
      {required this.type,
      @JsonKey(name: 'consent_id') required this.consentId});

  factory _$_ConsentContentsConsentRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_ConsentContentsConsentRequestFromJson(json);

  @override
  final int type;
  @override
  @JsonKey(name: 'consent_id')
  final int consentId;

  @override
  String toString() {
    return 'ConsentContentsConsentRequest(type: $type, consentId: $consentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConsentContentsConsentRequest &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.consentId, consentId) ||
                other.consentId == consentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, consentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConsentContentsConsentRequestCopyWith<_$_ConsentContentsConsentRequest>
      get copyWith => __$$_ConsentContentsConsentRequestCopyWithImpl<
          _$_ConsentContentsConsentRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConsentContentsConsentRequestToJson(
      this,
    );
  }
}

abstract class _ConsentContentsConsentRequest
    implements ConsentContentsConsentRequest {
  const factory _ConsentContentsConsentRequest(
          {required final int type,
          @JsonKey(name: 'consent_id') required final int consentId}) =
      _$_ConsentContentsConsentRequest;

  factory _ConsentContentsConsentRequest.fromJson(Map<String, dynamic> json) =
      _$_ConsentContentsConsentRequest.fromJson;

  @override
  int get type;
  @override
  @JsonKey(name: 'consent_id')
  int get consentId;
  @override
  @JsonKey(ignore: true)
  _$$_ConsentContentsConsentRequestCopyWith<_$_ConsentContentsConsentRequest>
      get copyWith => throw _privateConstructorUsedError;
}

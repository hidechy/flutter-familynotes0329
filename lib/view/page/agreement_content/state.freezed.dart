// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AgreementContentState {
// 取得したプラポリ
  PoricyConsentModel? get poricyConsent =>
      throw _privateConstructorUsedError; // 取得した利用規約
  TermsConsentModel? get termsConsent =>
      throw _privateConstructorUsedError; // pdfのダウンロードの状況
  bool get isDownloading => throw _privateConstructorUsedError; // 既読の管理
  bool get isRead => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgreementContentStateCopyWith<AgreementContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementContentStateCopyWith<$Res> {
  factory $AgreementContentStateCopyWith(AgreementContentState value,
          $Res Function(AgreementContentState) then) =
      _$AgreementContentStateCopyWithImpl<$Res, AgreementContentState>;
  @useResult
  $Res call(
      {PoricyConsentModel? poricyConsent,
      TermsConsentModel? termsConsent,
      bool isDownloading,
      bool isRead});
}

/// @nodoc
class _$AgreementContentStateCopyWithImpl<$Res,
        $Val extends AgreementContentState>
    implements $AgreementContentStateCopyWith<$Res> {
  _$AgreementContentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poricyConsent = null,
    Object? termsConsent = null,
    Object? isDownloading = null,
    Object? isRead = null,
  }) {
    return _then(_value.copyWith(
      poricyConsent: null == poricyConsent
          ? _value.poricyConsent
          : poricyConsent // ignore: cast_nullable_to_non_nullable
              as PoricyConsentModel?,
      termsConsent: null == termsConsent
          ? _value.termsConsent
          : termsConsent // ignore: cast_nullable_to_non_nullable
              as TermsConsentModel?,
      isDownloading: null == isDownloading
          ? _value.isDownloading
          : isDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AgreementContentStateCopyWith<$Res>
    implements $AgreementContentStateCopyWith<$Res> {
  factory _$$_AgreementContentStateCopyWith(_$_AgreementContentState value,
          $Res Function(_$_AgreementContentState) then) =
      __$$_AgreementContentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PoricyConsentModel? poricyConsent,
      TermsConsentModel? termsConsent,
      bool isDownloading,
      bool isRead});
}

/// @nodoc
class __$$_AgreementContentStateCopyWithImpl<$Res>
    extends _$AgreementContentStateCopyWithImpl<$Res, _$_AgreementContentState>
    implements _$$_AgreementContentStateCopyWith<$Res> {
  __$$_AgreementContentStateCopyWithImpl(_$_AgreementContentState _value,
      $Res Function(_$_AgreementContentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poricyConsent = null,
    Object? termsConsent = null,
    Object? isDownloading = null,
    Object? isRead = null,
  }) {
    return _then(_$_AgreementContentState(
      poricyConsent: null == poricyConsent
          ? _value.poricyConsent
          : poricyConsent // ignore: cast_nullable_to_non_nullable
              as PoricyConsentModel?,
      termsConsent: null == termsConsent
          ? _value.termsConsent
          : termsConsent // ignore: cast_nullable_to_non_nullable
              as TermsConsentModel?,
      isDownloading: null == isDownloading
          ? _value.isDownloading
          : isDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AgreementContentState implements _AgreementContentState {
  const _$_AgreementContentState(
      {this.poricyConsent,
      this.termsConsent,
      this.isDownloading = true,
      this.isRead = false});

// 取得したプラポリ
  @override
  final PoricyConsentModel? poricyConsent;
// 取得した利用規約
  @override
  final TermsConsentModel? termsConsent;
// pdfのダウンロードの状況
  @override
  @JsonKey()
  final bool isDownloading;
// 既読の管理
  @override
  @JsonKey()
  final bool isRead;

  @override
  String toString() {
    return 'AgreementContentState(poricyConsent: $poricyConsent, termsConsent: $termsConsent, isDownloading: $isDownloading, isRead: $isRead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgreementContentState &&
            const DeepCollectionEquality()
                .equals(other.poricyConsent, poricyConsent) &&
            const DeepCollectionEquality()
                .equals(other.termsConsent, termsConsent) &&
            (identical(other.isDownloading, isDownloading) ||
                other.isDownloading == isDownloading) &&
            (identical(other.isRead, isRead) || other.isRead == isRead));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(poricyConsent),
      const DeepCollectionEquality().hash(termsConsent),
      isDownloading,
      isRead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AgreementContentStateCopyWith<_$_AgreementContentState> get copyWith =>
      __$$_AgreementContentStateCopyWithImpl<_$_AgreementContentState>(
          this, _$identity);
}

abstract class _AgreementContentState implements AgreementContentState {
  const factory _AgreementContentState(
      {final PoricyConsentModel? poricyConsent,
      final TermsConsentModel? termsConsent,
      final bool isDownloading,
      final bool isRead}) = _$_AgreementContentState;

  @override // 取得したプラポリ
  PoricyConsentModel? get poricyConsent;
  @override // 取得した利用規約
  TermsConsentModel? get termsConsent;
  @override // pdfのダウンロードの状況
  bool get isDownloading;
  @override // 既読の管理
  bool get isRead;
  @override
  @JsonKey(ignore: true)
  _$$_AgreementContentStateCopyWith<_$_AgreementContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

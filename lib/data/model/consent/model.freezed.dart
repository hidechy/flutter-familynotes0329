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
mixin _$ConsentListModel {
  List<ConsentModel> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConsentListModelCopyWith<ConsentListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsentListModelCopyWith<$Res> {
  factory $ConsentListModelCopyWith(
          ConsentListModel value, $Res Function(ConsentListModel) then) =
      _$ConsentListModelCopyWithImpl<$Res, ConsentListModel>;
  @useResult
  $Res call({List<ConsentModel> list});
}

/// @nodoc
class _$ConsentListModelCopyWithImpl<$Res, $Val extends ConsentListModel>
    implements $ConsentListModelCopyWith<$Res> {
  _$ConsentListModelCopyWithImpl(this._value, this._then);

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
              as List<ConsentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConsentListModelCopyWith<$Res>
    implements $ConsentListModelCopyWith<$Res> {
  factory _$$_ConsentListModelCopyWith(
          _$_ConsentListModel value, $Res Function(_$_ConsentListModel) then) =
      __$$_ConsentListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ConsentModel> list});
}

/// @nodoc
class __$$_ConsentListModelCopyWithImpl<$Res>
    extends _$ConsentListModelCopyWithImpl<$Res, _$_ConsentListModel>
    implements _$$_ConsentListModelCopyWith<$Res> {
  __$$_ConsentListModelCopyWithImpl(
      _$_ConsentListModel _value, $Res Function(_$_ConsentListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_ConsentListModel(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ConsentModel>,
    ));
  }
}

/// @nodoc

class _$_ConsentListModel implements _ConsentListModel {
  const _$_ConsentListModel({final List<ConsentModel> list = const []})
      : _list = list;

  final List<ConsentModel> _list;
  @override
  @JsonKey()
  List<ConsentModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ConsentListModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConsentListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConsentListModelCopyWith<_$_ConsentListModel> get copyWith =>
      __$$_ConsentListModelCopyWithImpl<_$_ConsentListModel>(this, _$identity);
}

abstract class _ConsentListModel implements ConsentListModel {
  const factory _ConsentListModel({final List<ConsentModel> list}) =
      _$_ConsentListModel;

  @override
  List<ConsentModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ConsentListModelCopyWith<_$_ConsentListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ConsentModel _$ConsentModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'poricy':
      return PoricyConsentModel.fromJson(json);
    case 'terms':
      return TermsConsentModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ConsentModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ConsentModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String content, int type)
        poricy,
    required TResult Function(int id, String title, String content, int type)
        terms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String title, String content, int type)? poricy,
    TResult? Function(int id, String title, String content, int type)? terms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String title, String content, int type)? poricy,
    TResult Function(int id, String title, String content, int type)? terms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PoricyConsentModel value) poricy,
    required TResult Function(TermsConsentModel value) terms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PoricyConsentModel value)? poricy,
    TResult? Function(TermsConsentModel value)? terms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PoricyConsentModel value)? poricy,
    TResult Function(TermsConsentModel value)? terms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsentModelCopyWith<ConsentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsentModelCopyWith<$Res> {
  factory $ConsentModelCopyWith(
          ConsentModel value, $Res Function(ConsentModel) then) =
      _$ConsentModelCopyWithImpl<$Res, ConsentModel>;
  @useResult
  $Res call({int id, String title, String content, int type});
}

/// @nodoc
class _$ConsentModelCopyWithImpl<$Res, $Val extends ConsentModel>
    implements $ConsentModelCopyWith<$Res> {
  _$ConsentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? type = null,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PoricyConsentModelCopyWith<$Res>
    implements $ConsentModelCopyWith<$Res> {
  factory _$$PoricyConsentModelCopyWith(_$PoricyConsentModel value,
          $Res Function(_$PoricyConsentModel) then) =
      __$$PoricyConsentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String content, int type});
}

/// @nodoc
class __$$PoricyConsentModelCopyWithImpl<$Res>
    extends _$ConsentModelCopyWithImpl<$Res, _$PoricyConsentModel>
    implements _$$PoricyConsentModelCopyWith<$Res> {
  __$$PoricyConsentModelCopyWithImpl(
      _$PoricyConsentModel _value, $Res Function(_$PoricyConsentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_$PoricyConsentModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PoricyConsentModel implements PoricyConsentModel {
  const _$PoricyConsentModel(
      {required this.id,
      required this.title,
      required this.content,
      required this.type,
      final String? $type})
      : $type = $type ?? 'poricy';

  factory _$PoricyConsentModel.fromJson(Map<String, dynamic> json) =>
      _$$PoricyConsentModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final int type;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ConsentModel.poricy(id: $id, title: $title, content: $content, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoricyConsentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PoricyConsentModelCopyWith<_$PoricyConsentModel> get copyWith =>
      __$$PoricyConsentModelCopyWithImpl<_$PoricyConsentModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String content, int type)
        poricy,
    required TResult Function(int id, String title, String content, int type)
        terms,
  }) {
    return poricy(id, title, content, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String title, String content, int type)? poricy,
    TResult? Function(int id, String title, String content, int type)? terms,
  }) {
    return poricy?.call(id, title, content, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String title, String content, int type)? poricy,
    TResult Function(int id, String title, String content, int type)? terms,
    required TResult orElse(),
  }) {
    if (poricy != null) {
      return poricy(id, title, content, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PoricyConsentModel value) poricy,
    required TResult Function(TermsConsentModel value) terms,
  }) {
    return poricy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PoricyConsentModel value)? poricy,
    TResult? Function(TermsConsentModel value)? terms,
  }) {
    return poricy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PoricyConsentModel value)? poricy,
    TResult Function(TermsConsentModel value)? terms,
    required TResult orElse(),
  }) {
    if (poricy != null) {
      return poricy(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PoricyConsentModelToJson(
      this,
    );
  }
}

abstract class PoricyConsentModel implements ConsentModel {
  const factory PoricyConsentModel(
      {required final int id,
      required final String title,
      required final String content,
      required final int type}) = _$PoricyConsentModel;

  factory PoricyConsentModel.fromJson(Map<String, dynamic> json) =
      _$PoricyConsentModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  int get type;
  @override
  @JsonKey(ignore: true)
  _$$PoricyConsentModelCopyWith<_$PoricyConsentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TermsConsentModelCopyWith<$Res>
    implements $ConsentModelCopyWith<$Res> {
  factory _$$TermsConsentModelCopyWith(
          _$TermsConsentModel value, $Res Function(_$TermsConsentModel) then) =
      __$$TermsConsentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String content, int type});
}

/// @nodoc
class __$$TermsConsentModelCopyWithImpl<$Res>
    extends _$ConsentModelCopyWithImpl<$Res, _$TermsConsentModel>
    implements _$$TermsConsentModelCopyWith<$Res> {
  __$$TermsConsentModelCopyWithImpl(
      _$TermsConsentModel _value, $Res Function(_$TermsConsentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_$TermsConsentModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TermsConsentModel implements TermsConsentModel {
  const _$TermsConsentModel(
      {required this.id,
      required this.title,
      required this.content,
      required this.type,
      final String? $type})
      : $type = $type ?? 'terms';

  factory _$TermsConsentModel.fromJson(Map<String, dynamic> json) =>
      _$$TermsConsentModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final int type;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ConsentModel.terms(id: $id, title: $title, content: $content, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsConsentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TermsConsentModelCopyWith<_$TermsConsentModel> get copyWith =>
      __$$TermsConsentModelCopyWithImpl<_$TermsConsentModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String title, String content, int type)
        poricy,
    required TResult Function(int id, String title, String content, int type)
        terms,
  }) {
    return terms(id, title, content, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String title, String content, int type)? poricy,
    TResult? Function(int id, String title, String content, int type)? terms,
  }) {
    return terms?.call(id, title, content, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String title, String content, int type)? poricy,
    TResult Function(int id, String title, String content, int type)? terms,
    required TResult orElse(),
  }) {
    if (terms != null) {
      return terms(id, title, content, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PoricyConsentModel value) poricy,
    required TResult Function(TermsConsentModel value) terms,
  }) {
    return terms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PoricyConsentModel value)? poricy,
    TResult? Function(TermsConsentModel value)? terms,
  }) {
    return terms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PoricyConsentModel value)? poricy,
    TResult Function(TermsConsentModel value)? terms,
    required TResult orElse(),
  }) {
    if (terms != null) {
      return terms(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TermsConsentModelToJson(
      this,
    );
  }
}

abstract class TermsConsentModel implements ConsentModel {
  const factory TermsConsentModel(
      {required final int id,
      required final String title,
      required final String content,
      required final int type}) = _$TermsConsentModel;

  factory TermsConsentModel.fromJson(Map<String, dynamic> json) =
      _$TermsConsentModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  int get type;
  @override
  @JsonKey(ignore: true)
  _$$TermsConsentModelCopyWith<_$TermsConsentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

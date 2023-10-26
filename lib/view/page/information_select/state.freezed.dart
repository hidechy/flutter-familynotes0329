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
mixin _$InfomationSelectState {
  List<CategoryItemModel> get categories => throw _privateConstructorUsedError;
  List<NoticeListItemModel> get notices => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int? get selectedCategoryId => throw _privateConstructorUsedError;
  bool get hasOldNotices => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InfomationSelectStateCopyWith<InfomationSelectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfomationSelectStateCopyWith<$Res> {
  factory $InfomationSelectStateCopyWith(InfomationSelectState value,
          $Res Function(InfomationSelectState) then) =
      _$InfomationSelectStateCopyWithImpl<$Res, InfomationSelectState>;
  @useResult
  $Res call(
      {List<CategoryItemModel> categories,
      List<NoticeListItemModel> notices,
      int page,
      int? selectedCategoryId,
      bool hasOldNotices});
}

/// @nodoc
class _$InfomationSelectStateCopyWithImpl<$Res,
        $Val extends InfomationSelectState>
    implements $InfomationSelectStateCopyWith<$Res> {
  _$InfomationSelectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? notices = null,
    Object? page = null,
    Object? selectedCategoryId = freezed,
    Object? hasOldNotices = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>,
      notices: null == notices
          ? _value.notices
          : notices // ignore: cast_nullable_to_non_nullable
              as List<NoticeListItemModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      selectedCategoryId: freezed == selectedCategoryId
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      hasOldNotices: null == hasOldNotices
          ? _value.hasOldNotices
          : hasOldNotices // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfomationSelectStateCopyWith<$Res>
    implements $InfomationSelectStateCopyWith<$Res> {
  factory _$$_InfomationSelectStateCopyWith(_$_InfomationSelectState value,
          $Res Function(_$_InfomationSelectState) then) =
      __$$_InfomationSelectStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryItemModel> categories,
      List<NoticeListItemModel> notices,
      int page,
      int? selectedCategoryId,
      bool hasOldNotices});
}

/// @nodoc
class __$$_InfomationSelectStateCopyWithImpl<$Res>
    extends _$InfomationSelectStateCopyWithImpl<$Res, _$_InfomationSelectState>
    implements _$$_InfomationSelectStateCopyWith<$Res> {
  __$$_InfomationSelectStateCopyWithImpl(_$_InfomationSelectState _value,
      $Res Function(_$_InfomationSelectState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? notices = null,
    Object? page = null,
    Object? selectedCategoryId = freezed,
    Object? hasOldNotices = null,
  }) {
    return _then(_$_InfomationSelectState(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>,
      notices: null == notices
          ? _value._notices
          : notices // ignore: cast_nullable_to_non_nullable
              as List<NoticeListItemModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      selectedCategoryId: freezed == selectedCategoryId
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      hasOldNotices: null == hasOldNotices
          ? _value.hasOldNotices
          : hasOldNotices // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_InfomationSelectState implements _InfomationSelectState {
  const _$_InfomationSelectState(
      {final List<CategoryItemModel> categories = const [],
      final List<NoticeListItemModel> notices = const [],
      this.page = 1,
      this.selectedCategoryId,
      this.hasOldNotices = true})
      : _categories = categories,
        _notices = notices;

  final List<CategoryItemModel> _categories;
  @override
  @JsonKey()
  List<CategoryItemModel> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<NoticeListItemModel> _notices;
  @override
  @JsonKey()
  List<NoticeListItemModel> get notices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notices);
  }

  @override
  @JsonKey()
  final int page;
  @override
  final int? selectedCategoryId;
  @override
  @JsonKey()
  final bool hasOldNotices;

  @override
  String toString() {
    return 'InfomationSelectState(categories: $categories, notices: $notices, page: $page, selectedCategoryId: $selectedCategoryId, hasOldNotices: $hasOldNotices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfomationSelectState &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._notices, _notices) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.selectedCategoryId, selectedCategoryId) ||
                other.selectedCategoryId == selectedCategoryId) &&
            (identical(other.hasOldNotices, hasOldNotices) ||
                other.hasOldNotices == hasOldNotices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_notices),
      page,
      selectedCategoryId,
      hasOldNotices);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfomationSelectStateCopyWith<_$_InfomationSelectState> get copyWith =>
      __$$_InfomationSelectStateCopyWithImpl<_$_InfomationSelectState>(
          this, _$identity);
}

abstract class _InfomationSelectState implements InfomationSelectState {
  const factory _InfomationSelectState(
      {final List<CategoryItemModel> categories,
      final List<NoticeListItemModel> notices,
      final int page,
      final int? selectedCategoryId,
      final bool hasOldNotices}) = _$_InfomationSelectState;

  @override
  List<CategoryItemModel> get categories;
  @override
  List<NoticeListItemModel> get notices;
  @override
  int get page;
  @override
  int? get selectedCategoryId;
  @override
  bool get hasOldNotices;
  @override
  @JsonKey(ignore: true)
  _$$_InfomationSelectStateCopyWith<_$_InfomationSelectState> get copyWith =>
      throw _privateConstructorUsedError;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// お知らせのカテゴリー一覧取得のAPIから返却されるデータモデル
@freezed
class CategoryListModel with _$CategoryListModel {
  const factory CategoryListModel({
    @Default([]) List<CategoryItemModel> list,
  }) = _CategoryListModel;

  factory CategoryListModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryListModelFromJson(json);
}

@freezed
class CategoryItemModel with _$CategoryItemModel {
  const factory CategoryItemModel({
    @JsonKey(name: 'notice_category_id') required int categoryId,
    required String name,
  }) = _CategoryItemModel;

  factory CategoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemModelFromJson(json);
}

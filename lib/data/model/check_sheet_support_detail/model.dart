import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// サポートチェックシート取得から返却されるデータモデル
@freezed
class CheckSheetSupportModel with _$CheckSheetSupportModel {
  const factory CheckSheetSupportModel({
    @JsonKey(name: 'list')
        required List<CheckSheetSupportLargeCategoryModel> largeCategoryList,
  }) = _CheckSheetSupportModel;

  factory CheckSheetSupportModel.fromJson(Map<String, dynamic> json) =>
      _$CheckSheetSupportModelFromJson(json);
}

@freezed
class CheckSheetSupportLargeCategoryModel
    with _$CheckSheetSupportLargeCategoryModel {
  const factory CheckSheetSupportLargeCategoryModel({
    @JsonKey(name: 'large_category_id') required int id,
    @JsonKey(name: 'large_category') required String name,
    @JsonKey(name: 'small_categories')
        required List<CheckSheetSupportSmallCategoryModel> smallCategoryList,
  }) = _CheckSheetSupportLargeCategoryModel;

  factory CheckSheetSupportLargeCategoryModel.fromJson(
          Map<String, dynamic> json) =>
      _$CheckSheetSupportLargeCategoryModelFromJson(json);
}

@freezed
class CheckSheetSupportSmallCategoryModel
    with _$CheckSheetSupportSmallCategoryModel {
  const factory CheckSheetSupportSmallCategoryModel({
    @JsonKey(name: 'small_category_id') required int id,
    @JsonKey(name: 'small_category') required String name,
    @JsonKey(name: 'details') required List<SupportQuestionModel> detailList,
  }) = _CheckSheetSupportSmallCategoryModel;

  factory CheckSheetSupportSmallCategoryModel.fromJson(
          Map<String, dynamic> json) =>
      _$CheckSheetSupportSmallCategoryModelFromJson(json);
}

@freezed
class SupportQuestionModel with _$SupportQuestionModel {
  const factory SupportQuestionModel({
    @JsonKey(name: 'support_check_sheet_id') required int? id,
    @JsonKey(name: 'support_check_sheet_question_id') required int questionId,
    @JsonKey(name: 'question') required String question,
    @JsonKey(name: 'example') required String example,
    @JsonKey(name: 'is_check') required String isCheck,
    @JsonKey(name: 'note') @Default('') String note,
  }) = _SupportQuestionModel;

  factory SupportQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$SupportQuestionModelFromJson(json);
}

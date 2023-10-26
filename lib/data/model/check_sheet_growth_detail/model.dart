import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 発達チェックシート取得から返却されるデータモデル
@freezed
class CheckSheetGrowthModel with _$CheckSheetGrowthModel {
  const factory CheckSheetGrowthModel({
    @JsonKey(name: 'list') required List<GrowthDetailCategoryModel> list,
  }) = _CheckSheetGrowthModel;

  factory CheckSheetGrowthModel.fromJson(Map<String, dynamic> json) =>
      _$CheckSheetGrowthModelFromJson(json);
}

@freezed
class GrowthDetailCategoryModel with _$GrowthDetailCategoryModel {
  const factory GrowthDetailCategoryModel({
    @JsonKey(name: 'category_id') required int id,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'details') required List<GrowthQuestionModel> details,
  }) = _GrowthDetailCategoryModel;

  factory GrowthDetailCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$GrowthDetailCategoryModelFromJson(json);
}

@freezed
class GrowthQuestionModel with _$GrowthQuestionModel {
  const factory GrowthQuestionModel({
    @JsonKey(name: 'growth_check_sheet_id') required int? id,
    @JsonKey(name: 'growth_check_sheet_question_id') required int questionId,
    @JsonKey(name: 'question') required String question,
    @JsonKey(name: 'is_check') required String isCheck,
    @JsonKey(name: 'note') required String? note,
  }) = _GrowthQuestionModel;

  factory GrowthQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$GrowthQuestionModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 発達チェックシート保存から返却されるデータモデル
@freezed
class CheckSheetGrowthSaveModel with _$CheckSheetGrowthSaveModel {
  const factory CheckSheetGrowthSaveModel({
    @JsonKey(name: 'result') required int result,
  }) = _CheckSheetGrowthSaveModel;

  factory CheckSheetGrowthSaveModel.fromJson(Map<String, dynamic> json) =>
      _$CheckSheetGrowthSaveModelFromJson(json);
}

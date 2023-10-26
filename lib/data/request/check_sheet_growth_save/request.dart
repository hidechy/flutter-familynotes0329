import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// 発達チェックシート保存のリクエスト
@freezed
class CheckSheetGrowthSaveRequest with _$CheckSheetGrowthSaveRequest {
  @JsonSerializable(explicitToJson: true)
  const factory CheckSheetGrowthSaveRequest({
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'answers')
        required List<GrowthQustionAnswerRequest> answerList,
  }) = _CheckSheetGrowthSaveRequest;

  factory CheckSheetGrowthSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckSheetGrowthSaveRequestFromJson(json);
}

@freezed
class GrowthQustionAnswerRequest with _$GrowthQustionAnswerRequest {
  const factory GrowthQustionAnswerRequest({
    @JsonKey(name: 'growth_check_sheet_id') required int? growthCheckSheetId,
    @JsonKey(name: 'growth_check_sheet_question_id')
        required int growthCheckSheetQuestionId,
    @JsonKey(name: 'is_check') required int isCheck,
    @JsonKey(name: 'note') required String note,
  }) = _GrowthQustionAnswerRequest;

  factory GrowthQustionAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$GrowthQustionAnswerRequestFromJson(json);
}

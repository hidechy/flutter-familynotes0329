import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// 発達チェックシート保存のリクエスト
@freezed
class CheckSheetSupportSaveRequest with _$CheckSheetSupportSaveRequest {
  @JsonSerializable(explicitToJson: true)
  const factory CheckSheetSupportSaveRequest({
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'answers')
        required List<SupportQustionAnswerRequest> answerList,
  }) = _CheckSheetSupportSaveRequest;

  factory CheckSheetSupportSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckSheetSupportSaveRequestFromJson(json);
}

@freezed
class SupportQustionAnswerRequest with _$SupportQustionAnswerRequest {
  const factory SupportQustionAnswerRequest({
    @JsonKey(name: 'support_check_sheet_id') required int? supportCheckSheetId,
    @JsonKey(name: 'support_check_sheet_question_id')
        required int supportCheckSheetQuestionId,
    @JsonKey(name: 'is_check') required int isCheck,
    @JsonKey(name: 'note') required String note,
  }) = _SupportQustionAnswerRequest;

  factory SupportQustionAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$SupportQustionAnswerRequestFromJson(json);
}

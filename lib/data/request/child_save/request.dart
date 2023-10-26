import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// お子さま作成（更新）のリクエスト
@freezed
class ChildSaveRequest with _$ChildSaveRequest {
  /// default constructor
  const factory ChildSaveRequest({
    @JsonKey(name: 'child_id') required int? childId, // 追記の場合null
    @JsonKey(name: 'child_nickname') required String nickname,
    required int gender,
    required String birthday,
  }) = _ChildChildSaveRequest;

  factory ChildSaveRequest.fromJson(Map<String, dynamic> json) =>
      _$ChildSaveRequestFromJson(json);
}

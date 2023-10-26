import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';

part 'request.g.dart';

/// お子さま削除のリクエスト
@freezed
class ChildDeleteRequest with _$ChildDeleteRequest {
  /// default constructor
  const factory ChildDeleteRequest({
    @JsonKey(name: 'child_id') required int childId,
  }) = _ChildChildDeleteRequest;

  factory ChildDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$ChildDeleteRequestFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';

part 'request.g.dart';

/// 胎児削除のリクエスト
@freezed
class BabyDeleteRequest with _$BabyDeleteRequest {
  /// default constructor
  const factory BabyDeleteRequest({
    @JsonKey(name: 'child_id') required int childId,
  }) = _BabyDeleteRequest;

  factory BabyDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$BabyDeleteRequestFromJson(json);
}

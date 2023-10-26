import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// 胎児作成（更新）のリクエスト
@freezed
class BabySaveRequest with _$BabySaveRequest {
  /// default constructor
  const factory BabySaveRequest({
    @JsonKey(name: 'child_id') required int? childId, // 追記の場合null
    @JsonKey(name: 'baby_nickname') required String nickname,
    @JsonKey(name: 'birth_schedule_date') required String birthScheduleDate,
  }) = _BabyBabySaveRequest;

  factory BabySaveRequest.fromJson(Map<String, dynamic> json) =>
      _$BabySaveRequestFromJson(json);
}

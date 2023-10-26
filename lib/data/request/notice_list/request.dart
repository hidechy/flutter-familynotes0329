import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// お知らせ一覧取得APIのリクエスト
@freezed
class NoticeListRequest with _$NoticeListRequest {
  const factory NoticeListRequest({
    @JsonKey(name: 'notice_category_id')
        int? categoryId, // nullの場合、カテゴリーを絞らずに取得する
    required int page,
  }) = _NoticeListRequest;

  factory NoticeListRequest.fromJson(Map<String, dynamic> json) =>
      _$NoticeListRequestFromJson(json);
}

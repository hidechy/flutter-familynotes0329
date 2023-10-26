import 'package:family_notes/data/model/converter/datetime.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'model.freezed.dart';
part 'model.g.dart';

/// お知らせ取得一覧APIから返却されるデータモデル
@freezed
class NoticeListModel with _$NoticeListModel {
  const factory NoticeListModel({
    @Default([]) List<NoticeListItemModel> list,
  }) = _NoticeListModel;

  factory NoticeListModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeListModelFromJson(json);
}

@freezed
class NoticeListItemModel with _$NoticeListItemModel {
  const factory NoticeListItemModel({
    @JsonKey(name: 'notice_read_id') required int noticeReadId,
    @Default('') String title,
    @DateTimeConverter()
    @JsonKey(name: 'delivery_at')
        required DateTime deliveryAt,
    @DateTimeConverter() @JsonKey(name: 'read_at') DateTime? readAt,
  }) = _NoticeListItemModel;

  factory NoticeListItemModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeListItemModelFromJson(json);
}

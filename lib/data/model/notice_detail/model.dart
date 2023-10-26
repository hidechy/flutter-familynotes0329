import 'package:freezed_annotation/freezed_annotation.dart';

import '../converter/datetime.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// お知らせ詳細取得APIから返却されるデータモデル
@freezed
class NoticeDetailModel with _$NoticeDetailModel {
  const factory NoticeDetailModel({
    @Default('') String title,
    @Default('') String content,
    @DateTimeConverter()
    @JsonKey(name: 'delivery_at')
        required DateTime deliveryAt,
  }) = _NoticeDetailModel;

  factory NoticeDetailModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeDetailModelFromJson(json);
}

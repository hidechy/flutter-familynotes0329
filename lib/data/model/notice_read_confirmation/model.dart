import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

part 'model.g.dart';

/// お知らせ新着確認APIから返却されるデータモデル
@freezed
class NoticeReadConfirmationModel with _$NoticeReadConfirmationModel {
  const factory NoticeReadConfirmationModel({
    @JsonKey(name: 'is_arrival') @Default(0) int isArrival,
  }) = _NoticeReadConfirmationModel;

  factory NoticeReadConfirmationModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeReadConfirmationModelFromJson(json);
}

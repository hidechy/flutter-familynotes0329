import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';

part 'request.g.dart';

/// 誕生時子供化のリクエスト
@freezed
class ChildBirthRequest with _$ChildBirthRequest {
  @JsonSerializable(explicitToJson: true)
  const factory ChildBirthRequest({
    // nullなら新規登録
    @JsonKey(name: 'child_id') int? childId,

    // 乳幼児情報（人数分のリスト）
    @JsonKey(name: 'child_birthData')
    @Default([])
        List<ChildBirthDataItem> childBirthData,

    // 妊娠期間（週）
    @JsonKey(name: 'gestational_week') String? gestationalWeek,

    // 妊娠期間（日）
    @JsonKey(name: 'gestational_week_day') String? gestationalDay,

    // 出産場所
    @JsonKey(name: 'birth_place') String? birthPlace,

    // 医師または助産師
    @JsonKey(name: 'birth_doctor') String? birthDoctor,

    // 母親父親の気持ち
    @JsonKey(name: 'mother_father_feeling') String? motherFatherFeeling,

    // 赤ちゃんへのメッセージ
    String? message,

    // フリーコメント
    String? comment,
  }) = _ChildBirthRequest;

  factory ChildBirthRequest.fromJson(Map<String, dynamic> json) =>
      _$ChildBirthRequestFromJson(json);
}

@freezed
class ChildBirthDataItem with _$ChildBirthDataItem {
  @JsonSerializable(explicitToJson: true)
  const factory ChildBirthDataItem({
    // 出産日
    required String birthday,

    /// 名前(ニックネーム)
    String? nickname,

    /// 性別
    int? gender,

    /// 身長
    double? height,

    /// 体重（g）
    int? weight,

    /// 頭囲
    @JsonKey(name: 'head_measurement') double? head,

    /// 胸囲
    @JsonKey(name: 'chest_measurement') double? chest,
  }) = _ChildBirthDataItem;

  factory ChildBirthDataItem.fromJson(Map<String, dynamic> json) =>
      _$ChildBirthDataItemFromJson(json);
}

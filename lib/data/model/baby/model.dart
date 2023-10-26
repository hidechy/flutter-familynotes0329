import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 胎児取得APIから返却されるデータモデル
@freezed
class BabyModel with _$BabyModel {
  const factory BabyModel({
    @Default('') String nickname,
    @JsonKey(name: 'birth_schedule_date') required String birthScheduleDate,
  }) = _BabyModel;

  factory BabyModel.fromJson(Map<String, dynamic> json) =>
      _$BabyModelFromJson(json);
}

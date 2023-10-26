import 'package:freezed_annotation/freezed_annotation.dart';

part 'type.freezed.dart';

@freezed
class BabyInfoData with _$BabyInfoData {
  /// 胎児情報に表示するデータ
  const factory BabyInfoData({
    /// 名前(ニックネーム)
    required String name,

    /// 出産予定日
    required DateTime scheduledBirthday,
  }) = _BabyInfoData;
}

 

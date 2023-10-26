import 'package:freezed_annotation/freezed_annotation.dart';

part 'type.freezed.dart';

@freezed
class BabyCountSelectData with _$BabyCountSelectData {
  /// ひとり
  const factory BabyCountSelectData.one() = BabyCountSelectDataOne;

  /// 双子
  const factory BabyCountSelectData.twins() = BabyCountSelectDataTwins;

  /// 三つ子以上
  const factory BabyCountSelectData.more({
    required String number,
  }) = BabyCountSelectDataMore;
}

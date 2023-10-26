import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../type/gender.dart';

part 'type.freezed.dart';

@freezed
class ChildrenItemData with _$ChildrenItemData {
  /// 胎児
  const factory ChildrenItemData.baby({
    /// 名前(ニックネーム)
    required String name,

    /// 出産予定日
    required DateTime scheduledBirthday,
  }) = ChildrenItemDataBaby;

  /// 子ども
  const factory ChildrenItemData.child({
    /// 名前(ニックネーム)
    required String name,

    /// 性別
    required Gender? gender,

    /// 誕生日
    required DateTime birthday,
  }) = ChildrenItemDataChild;
}

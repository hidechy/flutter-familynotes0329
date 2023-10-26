import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../type/gender.dart';

part 'type.freezed.dart';

@freezed
class ChildInfoData with _$ChildInfoData {
  /// お子さま情報に表示するデータ
  const factory ChildInfoData({
    /// 名前(ニックネーム)
    required String name,

    /// 性別
    required Gender? gender,

    /// 誕生日
    required DateTime birthday,

    /// 身長
    required String height,

    /// 体重
    required String weight,

    /// 頭囲
    required String head,

    /// 胸囲
    required String chest,

    /// 生まれた場所
    required String address,

    /// 医師または助産師
    required String doctor,

    /// パパ、ママの気持ち
    required String parentFeeling,

    /// 赤ちゃんへのメッセージ
    required String message,
  }) = _ChildInfoData;
}

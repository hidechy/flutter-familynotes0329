import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/child_list/model.dart';
import '../../../extension/int.dart';
import '../../../extension/string.dart';
import '../../../type/gender.dart';

part 'state.freezed.dart';

@freezed
class ChildListStatus with _$ChildListStatus {
  const factory ChildListStatus.init() = ChildListStatusInit;

  const factory ChildListStatus.loaded({
    // 一覧表示用の子どもデータリスト
    required List<ChildListItemData> itemList,
  }) = ChildListStatusLoaded;
}

@freezed
class ChildListItemData with _$ChildListItemData {
  /// 胎児
  const factory ChildListItemData.baby({
    @Default('baby') String type,
    required int childId,

    /// 名前(ニックネーム)
    required String name,

    /// 出産予定日
    DateTime? scheduledBirthday,
  }) = ChildListItemDataBaby;

  /// 子ども
  const factory ChildListItemData.child({
    @Default('child') String type,
    required int childId,

    /// 名前(ニックネーム)
    required String name,

    /// 性別
    required Gender gender,

    /// 誕生日
    required DateTime? birthday,

    /// 月齢
    required int? monthFromBirth,
  }) = ChildListItemDataChild;

  factory ChildListItemData.fromChildModel({
    required ChildListItemModel childModel,
  }) {
    return childModel.map(
      baby: (model) {
        return ChildListItemData.baby(
          childId: model.childId,
          name: model.babyNickname ?? '',
          scheduledBirthday: model.birthScheduleDate?.toDateTime(
            DateFormatType.yyyymmddhhmmss,
          ),
        );
      },
      child: (model) {
        return ChildListItemData.child(
          childId: model.childId,
          name: model.childNickname ?? '',
          gender: model.gender!.toGender,
          birthday: model.birthday?.toDateTime(
            DateFormatType.yyyymmddhhmmss,
          ),
          monthFromBirth: model.monthFromBirth,
        );
      },
    );
  }
}

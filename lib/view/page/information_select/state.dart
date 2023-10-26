import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/notice_category/model.dart';
import '../../../data/model/notice_list/model.dart';

part 'state.freezed.dart';

@freezed
class InfomationSelectState with _$InfomationSelectState {
  @JsonSerializable(explicitToJson: true)
  const factory InfomationSelectState({
    @Default([]) List<CategoryItemModel> categories,
    @Default([]) List<NoticeListItemModel> notices,
    @Default(1) int page,
    int? selectedCategoryId,

    // 追加のお知らせ取得を制御する
    @Default(true) bool hasOldNotices,
  }) = _InfomationSelectState;
}

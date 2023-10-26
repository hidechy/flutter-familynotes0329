import 'package:freezed_annotation/freezed_annotation.dart';

import '/data/model/baby/model.dart';
import '/data/model/child/model.dart';
import '../../extension/string.dart';

part 'state.freezed.dart';

/// 取得した子ども
@freezed
class SelectedChildState with _$SelectedChildState {
  const factory SelectedChildState.init() = SelectedChildStateInit;

  /// ロード中
  const factory SelectedChildState.loading() = SelectedChildStateLoading;

  /// 取得済み
  const factory SelectedChildState.loaded({
    required int childId,
    required IHSChild child,
  }) = SelectedChildStateLoaded;
}

@freezed
class IHSChild with _$IHSChild {
  /// 胎児
  const factory IHSChild.baby({
    required BabyModel data,
  }) = BabyIHSChild;

  /// 子ども
  const factory IHSChild.child({
    required ChildModel data,
  }) = ChildIHSChild;
}

extension IHSChildExtension on IHSChild {
  // 出産予定日間近？（出産予定日の一か月前からtrue）
  bool get isNearBirth {
    return map(
      baby: (baby) {
        final scheduleDate = baby.data.birthScheduleDate.toDateTime(DateFormatType.yyyymmddhhmmss);
        final now = DateTime.now();
        return now.difference(scheduleDate).inDays >= -13;
      },
      child: (_) => false,
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class NoticeReadConfirmationState with _$NoticeReadConfirmationState {
  const factory NoticeReadConfirmationState({
    // 通信中
    @Default(true) bool fetching,

    // 新着確認 ※該当データが1件以上なら1、0件なら0
    required int isArrival,
  }) = _NoticeReadConfirmationState;
}

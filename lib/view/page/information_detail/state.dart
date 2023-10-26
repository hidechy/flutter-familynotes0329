import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/model/notice_detail/model.dart';

part 'state.freezed.dart';

@freezed
class InfomationDetailState with _$InfomationDetailState {
  const factory InfomationDetailState.loading() = InfomationDetailStateLoading;

  const factory InfomationDetailState.loaded({
    NoticeDetailModel? notice,
  }) = InfomationDetailStateLoaded;
}

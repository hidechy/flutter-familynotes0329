import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class HomeBodyPageState with _$HomeBodyPageState {
  const factory HomeBodyPageState.init() = HomeBodyPageStateInit;

  const factory HomeBodyPageState.loaded({
    required HomeLayout currentLayout,
  }) = HomeBodyPageStateLoaded;
}

/// ホーム画面のレイアウトの種別
enum HomeLayout {
  /// 胎児
  baby,

  /// 子ども
  child,
}

import 'package:family_notes/view/page/pregnant_health_check_input/state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_status.freezed.dart';

@freezed
class PregnantHealthCheckInputPageStatus with _$PregnantHealthCheckInputPageStatus {
  const factory PregnantHealthCheckInputPageStatus.init() =
      PregnantHealthCheckInputPageStatusInit;
  const factory PregnantHealthCheckInputPageStatus.loading() =
      PregnantHealthCheckInputPageStatusLoading;
  const factory PregnantHealthCheckInputPageStatus.loaded({
    @Default(PregnantHealthCheckInputState()) PregnantHealthCheckInputState data,
  }) = PregnantHealthCheckInputPageStatusLoaded;
}

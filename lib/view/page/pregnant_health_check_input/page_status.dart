import 'package:freezed_annotation/freezed_annotation.dart';

import 'state.dart';

part 'page_status.freezed.dart';

@freezed
class PregnantHealthCheckInputPageStatus with _$PregnantHealthCheckInputPageStatus {
  const factory PregnantHealthCheckInputPageStatus.init() = PregnantHealthCheckInputPageStatusInit;

  const factory PregnantHealthCheckInputPageStatus.loading() = PregnantHealthCheckInputPageStatusLoading;

  const factory PregnantHealthCheckInputPageStatus.loaded({
    @Default(PregnantHealthCheckInputState()) PregnantHealthCheckInputState data,
  }) = PregnantHealthCheckInputPageStatusLoaded;
}

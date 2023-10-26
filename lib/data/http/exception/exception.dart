import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';

@freezed
class HttpStatusException with _$HttpStatusException implements Exception {
  /// タイムアウト
  const factory HttpStatusException.timeout({
    @Default('Request Timeout') String msg,
  }) = TimeoutHttpStatusException;

  /// メンテナンスモード
  const factory HttpStatusException.maintenanceMode({
    @Default('Maintenance On') String msg,
  }) = MaintenanceModeHttpStatusException;

  /// その他
  const factory HttpStatusException.other({
    @Default('Status Code Error') String msg,
  }) = OtherHttpStatusException;

  const HttpStatusException._();
}

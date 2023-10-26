import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// ユーザー同意内容更新のリクエスト
@freezed
class ConsentContentsConsentRequest with _$ConsentContentsConsentRequest {
  const factory ConsentContentsConsentRequest({
    required int type,
    @JsonKey(name: 'consent_id') required int consentId,
  }) = _ConsentContentsConsentRequest;

  factory ConsentContentsConsentRequest.fromJson(Map<String, dynamic> json) =>
      _$ConsentContentsConsentRequestFromJson(json);
}

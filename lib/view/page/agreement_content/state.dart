import 'package:freezed_annotation/freezed_annotation.dart';

import '/data/model/consent/model.dart';

part 'state.freezed.dart';

@freezed
class AgreementContentState with _$AgreementContentState {
  const factory AgreementContentState({
    // 取得したプラポリ
    PoricyConsentModel? poricyConsent,
    // 取得した利用規約
    TermsConsentModel? termsConsent,
    // 既読の管理
    @Default(false) bool isRead,
  }) = _AgreementContentState;
}

enum AgreementContentType {
  // プライバシーポリシー
  privacyPolicy,
  // 利用規約
  terms,
}

List<AgreementContentType> get contentTypes => [
      AgreementContentType.privacyPolicy,
      AgreementContentType.terms,
    ];

extension SettingItemTypeEx on AgreementContentType {
  String get title {
    switch (this) {
      case AgreementContentType.privacyPolicy:
        return 'プライバシーポリシー';
      case AgreementContentType.terms:
        return '利用規約';
    }
  }

  int get value {
    switch (this) {
      case AgreementContentType.privacyPolicy:
        return 1;
      case AgreementContentType.terms:
        return 2;
    }
  }
}

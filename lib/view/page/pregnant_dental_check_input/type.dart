enum PregnantDentalCheckInputListItemType {
  /// 問題なし
  noProblem(label: '問題なし'),

  /// ブラッシング指導などが必要
  neededGuidance(label: 'ブラッシング指導などが必要'),

  /// 処置が必要
  neededTreatment(label: '処置が必要');

  const PregnantDentalCheckInputListItemType({required this.label});
  final String label;
}

/// 妊婦歯科健診結果、異常有無ステータス
enum ProbremStatus {
  no(label: '問題なし', apiValue: '0'),
  yes(label: '問題あり', apiValue: '1');

  const ProbremStatus({required this.label, required this.apiValue});

  final String label;
  final String apiValue;
}

/// 妊婦歯科健診結果、ブラッシング指導必要有無ステータス
enum NeededGuidanceStatus {
  no(label: 'ブラッシング指導など必要無し', apiValue: '0'),
  yes(label: 'ブラッシング指導など必要有り', apiValue: '1');

  const NeededGuidanceStatus({required this.label, required this.apiValue});

  final String label;
  final String apiValue;
}

/// 妊婦歯科健診結果、処理必要有無ステータス
enum TreatmentStatus {
  no(label: '処置必要なし', apiValue: '0'),
  yes(label: '処置必要有り', apiValue: '1');

  const TreatmentStatus({required this.label, required this.apiValue});

  final String label;
  final String apiValue;
}

/// 出産ステータス
enum BirthStatus {
  before(label: '出産前', apiValue: '0'),
  after(label: '出産後', apiValue: '1');

  const BirthStatus({required this.label, required this.apiValue});

  final String label;
  final String apiValue;
}

/// 発達チェックシート回答結果種類
enum GrowthQuestionAnswerResultType {
  maternalAndChildProtectionDivision(
    label: '母子保護課の案内とサポートチェックシートへの誘導',
    value: 1,
  ),
  communitySupportCenter(
    label: '地域支援センターの案内とサポートチェックシートへの誘導',
    value: 2,
  ),
  none(
    label: 'サポートチェックシートへの誘導無し',
    value: 3,
  );

  const GrowthQuestionAnswerResultType({
    required this.label,
    required this.value,
  });

  final String label;
  final int value;
}

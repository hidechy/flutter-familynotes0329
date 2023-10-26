/// 発達チェックシート質問該当チェック状態
enum GrowthQuestionCheckStatus {
  no(label: 'チェックなし', value: 0),

  ok(label: 'チェックあり', value: 1);

  const GrowthQuestionCheckStatus({
    required this.label,
    required this.value,
  });

  final String label;
  final int value;
}

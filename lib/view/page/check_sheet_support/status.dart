///  サポートチェックシート質問該当チェック状態
enum SupportQuestionCheckStatus {
  no(label: 'チェックなし', value: 0),

  ok(label: 'チェックあり', value: 1);

  const SupportQuestionCheckStatus({
    required this.label,
    required this.value,
  });

  final String label;
  final int value;
}

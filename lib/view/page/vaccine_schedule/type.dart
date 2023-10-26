enum VaccineScheduleType {
  regular, // 定期
  optional, // 任意
}

enum DataListType {
  schedule, // 予定
  history, // 実績
}

enum StatusType {
  done(status: 'Y'), // 実積
  reserved(status: 'R'); // 予定

  const StatusType({required this.status});
  final String status;
}

// 画面のタブの種類
enum TabType {
  // 接種予定
  doseScheduled(label: '予定'),

  // 接種済
  doseDone(label: '実績');

  const TabType({required this.label});
  final String label;
}

List<TabType> get tabItems => [TabType.doseScheduled, TabType.doseDone];

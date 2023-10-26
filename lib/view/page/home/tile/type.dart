/// ホーム画面で選択可能なアイテムの種別
enum HomeTileType {
  /// 妊婦健診
  prenatalCare,

  /// 歯科健診
  prenatalCareDental,

  /// 体重グラフ
  weightGraph,

  //TODO(miura): 2023/04リリースのため一旦隠し
  /// 成長の記録
  // growthRecord,

  /// 乳幼児健診
  healthCheckup,

  /// 予防接種
  vaccination,

  /// 身体発育曲線
  physicalGrowthCurve,

  /// 生活習慣病予防
  prevention,

  /// チェックシート
  checkSheet,
}

extension HomeTileTypeEx on HomeTileType {
  String get label {
    switch (this) {
      case HomeTileType.prenatalCare:
        return '妊婦健診';
      case HomeTileType.prenatalCareDental:
        return '歯科健診';
      case HomeTileType.weightGraph:
        return '体重グラフ';
      //TODO(miura): 2023/04リリースのため一旦隠し
      // case HomeTileType.growthRecord:
      //   return '成長の記録';
      case HomeTileType.healthCheckup:
        return '乳幼児健診';
      case HomeTileType.vaccination:
        return '予防接種';
      case HomeTileType.physicalGrowthCurve:
        return '身体発育曲線';
      case HomeTileType.prevention:
        return '生活習慣病予防';
      case HomeTileType.checkSheet:
        return '成長チェック';
    }
  }
}

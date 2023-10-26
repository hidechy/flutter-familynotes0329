enum BabyBirthBodyInputType {
  /// 身長
  height,

  /// 体重
  weight,

  /// 頭囲
  head,

  /// 胸囲
  chest,
}

extension BabyBirthBodyInputTypeEx on BabyBirthBodyInputType {
  String get label {
    switch (this) {
      case BabyBirthBodyInputType.height:
        return '身長';
      case BabyBirthBodyInputType.weight:
        return '体重';
      case BabyBirthBodyInputType.head:
        return '頭囲';
      case BabyBirthBodyInputType.chest:
        return '胸囲';
    }
  }

  String get unit {
    switch (this) {
      case BabyBirthBodyInputType.height:
        return 'cm';
      case BabyBirthBodyInputType.weight:
        return 'g';
      case BabyBirthBodyInputType.head:
        return 'cm';
      case BabyBirthBodyInputType.chest:
        return 'cm';
    }
  }
}

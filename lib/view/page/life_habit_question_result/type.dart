import '../../../gen/assets.gen.dart';

/// 設問回答結果画面の種類
enum QuestionAnswerResultType {
  /// 過去(入力履歴)
  past,

  /// 最新(設問回答後)
  latest,
}

enum OtherCommentType {
  stress(id: 1, label: 'ストレスをためない'),
  alcohol(id: 2, label: 'お酒を飲まない');

  const OtherCommentType({required this.id, required this.label});

  final int id;
  final String label;

  static String getAssetName(int id) => OtherCommentType.values.firstWhere((element) => element.id == id).assetName;
}

extension OtherCommentTypeEx on OtherCommentType {
  String get assetName {
    switch (this) {
      case OtherCommentType.stress:
        return Assets.images.iconChild;
      case OtherCommentType.alcohol:
        return Assets.images.lhIconAlcohol;
    }
  }
}

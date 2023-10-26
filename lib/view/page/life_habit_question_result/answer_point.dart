import '../../../gen/assets.gen.dart';

/// 回答ポイント
enum AnswerPoint { zero, one, two, three, four }

extension AnswerPointEx on AnswerPoint {
  int get value {
    switch (this) {
      case AnswerPoint.zero:
        return 0;
      case AnswerPoint.one:
        return 1;
      case AnswerPoint.two:
        return 2;
      case AnswerPoint.three:
        return 3;
      case AnswerPoint.four:
        return 4;
    }
  }

  String get assetName {
    switch (this) {
      case AnswerPoint.zero:
        return '';
      case AnswerPoint.one:
        return Assets.images.lhFight;
      case AnswerPoint.two:
        return Assets.images.lhRegrettable;
      case AnswerPoint.three:
        return Assets.images.lhKeep;
      case AnswerPoint.four:
        return Assets.images.lhVerygood;
    }
  }
}

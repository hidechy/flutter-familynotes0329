import '../../../gen/assets.gen.dart';

enum QuestionType {
  fish(id: 1, label: '魚'),
  vegetable(id: 2, label: '野菜'),
  fluit(id: 3, label: '果物'),
  mushroom(id: 4, label: '食物繊維1'),
  bread(id: 5, label: '食物繊維2'),
  soyBean(id: 6, label: '大豆'),
  soySause(id: 7, label: 'かけ醤油、かけソース'),
  noodleSoup(id: 8, label: '麺類の汁を飲む量'),
  meat(id: 9, label: '脂身の多い肉や肉加工品'),
  fastFood(id: 10, label: 'ファストフード、揚げ物'),
  juice(id: 11, label: '甘い飲料'),
  sweets(id: 12, label: 'お菓子を食べる回数'),
  toothpaste(id: 13, label: '1日の歯磨きの回数'),
  cigarettes(id: 14, label: 'タバコの煙を吸わない'),
  sleepTime(id: 15, label: '睡眠時間'),
  exerciseTims(id: 16, label: '1週間の運動日数と時間から算出');

  const QuestionType({required this.id, required this.label});

  final int id;
  final String label;
}

extension QuestionTypeEx on QuestionType {
  String get assetName {
    switch (this) {
      case QuestionType.fish:
        return Assets.images.lhIconFish;
      case QuestionType.vegetable:
        return Assets.images.lhIconVegetable;
      case QuestionType.fluit:
        return Assets.images.lhIconFruit;
      case QuestionType.mushroom:
        return Assets.images.lhIconMushroom;
      case QuestionType.bread:
        return Assets.images.lhIconBread;
      case QuestionType.soyBean:
        return Assets.images.lhIconSoy;
      case QuestionType.soySause:
        return Assets.images.lhIconSalt;
      case QuestionType.noodleSoup:
        return Assets.images.lhIconNoodle;
      case QuestionType.meat:
        return Assets.images.lhIconFattymeat;
      case QuestionType.fastFood:
        return Assets.images.lhIconHighcalorie;
      case QuestionType.juice:
        return Assets.images.lhIconJuice;
      case QuestionType.sweets:
        return Assets.images.lhIconSweet;
      case QuestionType.toothpaste:
        return Assets.images.lhIconDentifrice;
      case QuestionType.cigarettes:
        return Assets.images.lhIconCigarettes;
      case QuestionType.sleepTime:
        return Assets.images.lhIconSleep;
      case QuestionType.exerciseTims:
        return Assets.images.lhIconExercise;
    }
  }
}

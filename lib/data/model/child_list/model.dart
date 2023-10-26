import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

part 'model.g.dart';

/// 手帳選択から返却されるデータモデル
@freezed
class ChildListModel with _$ChildListModel {
  const factory ChildListModel({
    @Default([]) List<ChildListItemModel> list,
  }) = _ChildListModel;

  factory ChildListModel.fromJson(Map<String, dynamic> json) {
    final list = <ChildListItemModel>[];

    (json['list'] as List<dynamic>).forEach(
      (value) {
        final childMap = value as Map<String, dynamic>;
        final typeString = childMap['type'] as String;

        if (typeString == 'baby') {
          list.add(BabyChildListItemModel.fromJson(childMap));
        } else {
          list.add(ChildChildListItemModel.fromJson(childMap));
        }
      },
    );

    return ChildListModel(list: list);
  }
}

@freezed
class ChildListItemModel with _$ChildListItemModel {
  // 胎児
  const factory ChildListItemModel.baby({
    required String type,
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'baby_nickname') required String? babyNickname,
    @JsonKey(name: 'birth_schedule_date') String? birthScheduleDate,
  }) = BabyChildListItemModel;

  // お子さま
  const factory ChildListItemModel.child({
    required String type,
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'child_nickname') required String? childNickname,
    int? gender,
    String? birthday,
    @JsonKey(name: 'month_from_birth') int? monthFromBirth,
  }) = ChildChildListItemModel;

  factory ChildListItemModel.fromJson(Map<String, dynamic> json) =>
      _$ChildListItemModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 妊婦健診一覧取得から返されるデータモデル
@freezed
class CheckupListModel with _$CheckupListModel {
  const factory CheckupListModel({
    required List<CheckupModel> list,
  }) = _ChildCheckupListModel;

  factory CheckupListModel.fromJson(Map<String, dynamic> json) =>
      _$CheckupListModelFromJson(json);
}

@freezed
class CheckupModel with _$CheckupModel {
  const factory CheckupModel({
    @JsonKey(name: 'mother_checkup_record_id')
        required int? checkupId, // nullなら新規登録
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'checkup_day') required String checkupDay,
  }) = _ChildCheckupModel;

  factory CheckupModel.fromJson(Map<String, dynamic> json) =>
      _$CheckupModelFromJson(json);
}

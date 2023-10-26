import 'package:family_notes/data/model/converter/datetime.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 乳幼児健診一覧取得から返されるデータモデル
@freezed
class ChildCheckupListModel with _$ChildCheckupListModel {
  /// default constructor
  const factory ChildCheckupListModel({
    @Default([]) List<ChildCheckupModel> list,
  }) = _ChildCheckupListModel;

  factory ChildCheckupListModel.fromJson(Map<String, dynamic> json) =>
      _$ChildCheckupListModelFromJson(json);
}

@freezed
class ChildCheckupModel with _$ChildCheckupModel {
  /// default constructor
  const factory ChildCheckupModel({
    @JsonKey(name: 'child_checkup_record_id')
        required int childCheckupId, // nullなら新規登録
    @JsonKey(name: 'child_id') required int childId,
    @JsonKey(name: 'child_checkup_type_id') required int childCheckUpType,
    @DateTimeConverter()
    @JsonKey(name: 'checkup_day')
        required DateTime checkupDay,
    @JsonKey(name: 'checkup_short_name') required String checkUpShortName,
  }) = _ChildCheckupModel;

  factory ChildCheckupModel.fromJson(Map<String, dynamic> json) =>
      _$ChildCheckupModelFromJson(json);
}

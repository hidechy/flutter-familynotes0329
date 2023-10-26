import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// 同意内容取得APIから返却されるデータモデル
@freezed
class ConsentListModel with _$ConsentListModel {
  const factory ConsentListModel({
    @Default([]) List<ConsentModel> list,
  }) = _ConsentListModel;

  factory ConsentListModel.fromJson(Map<String, dynamic> json) {
    final list = <ConsentModel>[];

    for (final Map<String, dynamic> item in json['list'] ?? []) {
      final id = item['id'] as int;
      final title = item['title'] as String;
      final content = item['content'] as String;
      final type = item['type'] as int;

      //type:1 プライバシーポリシー
      //type:2　利用規約
      switch (type) {
        case 1:
          list.add(ConsentModel.poricy(
            id: id,
            title: title,
            content: content,
            type: type,
          ));
          break;

        case 2:
          list.add(ConsentModel.terms(
            id: id,
            title: title,
            content: content,
            type: type,
          ));
      }
    }

    // プライバシーポリシー → 利用規約の順で表示させるため、typeの降順
    list.sort((a, b) {
      final aType = a.map(poricy: (e) => e.type, terms: (e) => e.type);
      final bType = b.map(poricy: (e) => e.type, terms: (e) => e.type);
      return bType.compareTo(aType);
    });

    return ConsentListModel(list: list);
  }
}

@freezed
class ConsentModel with _$ConsentModel {
  /// プライバシーポリシー
  const factory ConsentModel.poricy({
    required int id,
    required String title,
    required String content,
    required int type,
  }) = PoricyConsentModel;

  /// 規約
  const factory ConsentModel.terms({
    required int id,
    required String title,
    required String content,
    required int type,
  }) = TermsConsentModel;

  factory ConsentModel.fromJson(Map<String, dynamic> json) =>
      _$ConsentModelFromJson(json);
}

extension ConsentModelEx on ConsentModel {
  String get label {
    return map(
      poricy: (_) => 'プライバシーポリシー',
      terms: (_) => '利用規約',
    );
  }
}

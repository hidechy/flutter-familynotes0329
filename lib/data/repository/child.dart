import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/http/client.dart';
import '/data/http/path.dart';
import '/data/model/child/model.dart';
import '/data/model/response/model.dart';
import '../model/child_birth/model.dart';
import '../model/child_list/model.dart';
import '../request/child_birth/request.dart';
import '../request/child_delete/request.dart';
import '../request/child_save/request.dart';

/// 子ども関連のRepository
abstract class ChildRepository {
  Future<IHSResponse<ChildListModel>> childList();

  /// 子ども取得
  Future<IHSResponse<ChildModel>> fetchChild({
    required int childId,
  });

  /// お子さまの追加（更新）
  Future<IHSResponse<Empty>> saveChild({
    required ChildSaveRequest request,
  });

  /// 誕生時子供化（出産時情報更新）
  Future<IHSResponse<ChildBirthListModel>> birthChild({
    required ChildBirthRequest request,
    bool isEdit = false,
  });

  /// お子さま削除
  Future<IHSResponse<Empty>> deleteChild({
    required ChildDeleteRequest request,
  });
}

class ChildRepositoryImpl implements ChildRepository {
  ChildRepositoryImpl({
    required this.client,
  });

  final IHSHttpClient client;

  @override
  Future<IHSResponse<ChildListModel>> childList() async {
    final response = await client.post(
      IHSAPIPath.childList,
    );
    return IHSResponse<ChildListModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return ChildListModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<ChildModel>> fetchChild({
    required int childId,
  }) async {
    final response = await client.post(
      IHSAPIPath.childDetail,
      body: {'child_id': childId},
    );

    return IHSResponse<ChildModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return ChildModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> saveChild({
    required ChildSaveRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.childSave,
      body: request.toJson(),
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<ChildBirthListModel>> birthChild({
    required ChildBirthRequest request,
    bool isEdit = false,
  }) async {
    final response = await client.post(
      isEdit? IHSAPIPath.childEdit : IHSAPIPath.childBirth,
      body: request.toJson(),
    );
    return IHSResponse<ChildBirthListModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return ChildBirthListModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> deleteChild({
    required ChildDeleteRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.childDelete,
      body: request.toJson(),
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }
}

final Provider<ChildRepository> childRepositoryProvider =
    Provider<ChildRepository>(
  (ProviderRef<ChildRepository> ref) {
    final client = ref.read(httpClientProvider);
    return ChildRepositoryImpl(
      client: client,
    );
  },
);

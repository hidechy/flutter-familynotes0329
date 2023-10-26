import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/http/client.dart';
import '/data/http/path.dart';
import '/data/model/child_growth_record_graph/model.dart';
import '/data/model/child_growth_record_list/model.dart';
import '/data/model/response/model.dart';
import '/data/request/child_growth_record_save/request.dart';

/// 乳児成長記録関連のRepository
abstract class ChildGrowthRecordRepository {
  /// 乳幼児身体発育曲線データ取得
  Future<IHSResponse<ChildGrowthRecordGraphModel>> fetchGraphData({
    required int childId,
    required int ageCategory,
  });

  /// 乳幼児身体記録一覧取得
  Future<IHSResponse<ChildGrowthRecordListModel>> fetchList({
    required int childId,
  });

  /// 乳幼児身体記録更新
  Future<IHSResponse<Empty>> save({
    required ChildGrowthRecordSaveRequest request,
  });

  /// 乳幼児身体記録削除
  Future<IHSResponse<Empty>> delete({
    required int childId,
    required int recordId,
  });
}

class ChildGrowthRecordRepositoryImpl implements ChildGrowthRecordRepository {
  ChildGrowthRecordRepositoryImpl({
    required this.client,
  });

  final IHSHttpClient client;

  @override
  Future<IHSResponse<ChildGrowthRecordGraphModel>> fetchGraphData({
    required int childId,
    required int ageCategory,
  }) async {
    final response = await client.post(
      IHSAPIPath.childBodyRecordGraph,
      body: {
        'child_id': childId,
        'age_category': ageCategory,
      },
    );

    return IHSResponse<ChildGrowthRecordGraphModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return ChildGrowthRecordGraphModel.fromJson(
            json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<ChildGrowthRecordListModel>> fetchList({
    required int childId,
  }) async {
    final response = await client.post(
      IHSAPIPath.childBodyRecordList,
      body: {'child_id': childId},
    );
    return IHSResponse<ChildGrowthRecordListModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return const ChildGrowthRecordListModel(list: []);
        }
        return ChildGrowthRecordListModel.fromJson(
            json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> save({
    required ChildGrowthRecordSaveRequest request,
  }) async {
    final response = await client.post(IHSAPIPath.childBodyRecordSave,
        body: request.toJson());
    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<Empty>> delete({
    required int childId,
    required int recordId,
  }) async {
    final response = await client.post(
      IHSAPIPath.childBodyRecordDelete,
      body: {
        'child_id': childId,
        'child_body_record_id': recordId,
      },
    );
    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }
}

final Provider<ChildGrowthRecordRepository>
    childGrowthRecordRepositoryProvider = Provider<ChildGrowthRecordRepository>(
  (ProviderRef<ChildGrowthRecordRepository> ref) {
    final client = ref.read(httpClientProvider);
    return ChildGrowthRecordRepositoryImpl(
      client: client,
    );
  },
);

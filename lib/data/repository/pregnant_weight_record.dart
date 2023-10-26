import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/http/client.dart';
import '/data/http/path.dart';
import '/data/model/pregnant_weight_record_graph/model.dart';
import '/data/model/pregnant_weight_record_list/model.dart';
import '/data/model/response/model.dart';
import '../request/pregnant_weight_record_save/request.dart';

/// 妊婦体重記録関連のRepository
abstract class PregnantWeightRecordRepository {
  /// 妊婦体重記録一覧取得
  Future<IHSResponse<PregnantWeightRecordListModel>> fetchList({
    required int childId,
  });

  /// 妊婦体重記録更新
  Future<IHSResponse<Empty>> save({
    required PregnantWeightRecordSaveRequest request,
  });

  /// 妊婦体重記録削除
  Future<IHSResponse<Empty>> delete({
    required int childId,
    required int recordId,
  });

  /// 妊婦体重フラグ曲線データ取得
  Future<IHSResponse<PregnantWeightRecordGraphModel>> fetchGraphData({
    required int childId,
  });
}

class PregnantWeightRecordRepositoryImpl
    implements PregnantWeightRecordRepository {
  PregnantWeightRecordRepositoryImpl({
    required this.client,
  });

  final IHSHttpClient client;

  @override
  Future<IHSResponse<PregnantWeightRecordListModel>> fetchList({
    required int childId,
  }) async {
    final response = await client.post(
      IHSAPIPath.pregnantWeightRecordList,
      body: {'child_id': childId},
    );
    return IHSResponse<PregnantWeightRecordListModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return const PregnantWeightRecordListModel(list: []);
        }

        return PregnantWeightRecordListModel.fromJson(
            json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> save({
    required PregnantWeightRecordSaveRequest request,
  }) async {
    final response = await client.post(IHSAPIPath.pregnantWeightRecordSave,
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
      IHSAPIPath.pregnantWeightRecordDelete,
      body: {
        'child_id': childId,
        'mother_weight_record_id': recordId,
      },
    );
    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<PregnantWeightRecordGraphModel>> fetchGraphData({
    required int childId,
  }) async {
    final response = await client.post(
      IHSAPIPath.pregnantWeightRecordGraph,
      body: {
        'child_id': childId,
      },
    );

    return IHSResponse<PregnantWeightRecordGraphModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }

        return PregnantWeightRecordGraphModel.fromJson(
          json! as Map<String, dynamic>,
        );
      },
    );
  }
}

final Provider<PregnantWeightRecordRepository>
    pregnantWeightRecordRepositoryProvider =
    Provider<PregnantWeightRecordRepository>(
  (ProviderRef<PregnantWeightRecordRepository> ref) {
    final client = ref.read(httpClientProvider);
    return PregnantWeightRecordRepositoryImpl(
      client: client,
    );
  },
);

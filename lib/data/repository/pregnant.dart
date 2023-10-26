import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/http/client.dart';
import '/data/http/path.dart';
import '/data/model/response/model.dart';
import '../model/checkup_detail/model.dart';
import '../model/checkup_list/model.dart';
import '../request/checkup_record_save/request.dart';

/// 妊婦関連のRepository
abstract class PregnantRepository {
  /// 妊婦健診記録一覧取得
  Future<IHSResponse<CheckupListModel>> fetchcheckupRecords({
    required int childId,
  });

  /// 妊婦健診記録詳細取得
  Future<IHSResponse<CheckupDetailModel>> fetchCheckupRecordDetail({
    required int motherCheckupRecordId,
  });

  /// 妊婦健診記録更新
  Future<IHSResponse<CheckupDetailModel>> saveCheckupRecord({
    required CheckupRecordSaveRequest request,
  });

  /// 妊婦健診記録削除
  Future<IHSResponse<CheckupDetailModel>> deleteCheckupRecord({
    required int motherCheckupRecordId,
  });
}

class PregnantRepositoryImpl implements PregnantRepository {
  PregnantRepositoryImpl({
    required this.client,
  });

  final IHSHttpClient client;

  @override
  Future<IHSResponse<CheckupListModel>> fetchcheckupRecords({
    required int childId,
  }) async {
    final response = await client.post(
      IHSAPIPath.checkupRecord,
      body: {'child_id': childId},
    );
    return IHSResponse<CheckupListModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return const CheckupListModel(list: []);
        }

        return CheckupListModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<CheckupDetailModel>> fetchCheckupRecordDetail({
    required int motherCheckupRecordId,
  }) async {
    final response = await client.post(
      IHSAPIPath.checkupRecordDetail,
      body: {'mother_checkup_record_id': motherCheckupRecordId},
    );
    return IHSResponse<CheckupDetailModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return CheckupDetailModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<CheckupDetailModel>> saveCheckupRecord({
    required CheckupRecordSaveRequest request,
  }) async {
    final response =
        await client.post(IHSAPIPath.checkupRecordSave, body: request.toJson());
    return IHSResponse<CheckupDetailModel>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<CheckupDetailModel>> deleteCheckupRecord({
    required int motherCheckupRecordId,
  }) async {
    final response = await client.post(
      IHSAPIPath.checkupRecordDelete,
      body: {'mother_checkup_record_id': motherCheckupRecordId},
    );
    return IHSResponse<CheckupDetailModel>.fromJson(
      response,
      (Object? json) => null,
    );
  }
}

final Provider<PregnantRepository> pregnantRepositoryProvider =
    Provider<PregnantRepository>(
  (ProviderRef<PregnantRepository> ref) {
    final client = ref.read(httpClientProvider);
    return PregnantRepositoryImpl(
      client: client,
    );
  },
);

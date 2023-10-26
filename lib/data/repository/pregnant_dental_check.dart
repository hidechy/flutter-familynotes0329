import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../http/client.dart';
import '../http/path.dart';
import '../model/pregnant_dental_check_record_detail/model.dart';
import '../model/pregnant_dental_check_record_list/model.dart';
import '../model/response/model.dart';
import '../request/pregnant_dental_check_add/request.dart';

final pregnantDentalCheckRepositoryProvider =
    Provider<PregnantDentalCheckRepositoryImpl>((ref) {
  final client = ref.read(httpClientProvider);
  return PregnantDentalCheckRepositoryImpl(client);
});

/// 妊婦産後歯科健診Repository
abstract class PregnantDentalCheckRepository {
  /// 妊婦産後歯科健診記録保存
  Future<IHSResponse<Empty>> save({
    required PregnantDentalCheckSaveRequest request,
  });

  /// 妊婦産後歯科健診記録一覧取得
  Future<IHSResponse<PregnantDentalCheckRecordListModel>> fetchList({
    required int childId,
  });

  /// 妊婦産後歯科健診記録詳細取得
  Future<IHSResponse<PregnantDentalCheckRecordDetailModel>> fetchDetail({
    required int motherDentalCheckupRecordId,
  });

  /// 妊婦産後歯科健診記録削除
  Future<IHSResponse<Empty>> delete({
    required int motherDentalCheckupRecordId,
  });
}

class PregnantDentalCheckRepositoryImpl
    implements PregnantDentalCheckRepository {
  PregnantDentalCheckRepositoryImpl(this.client);

  final IHSHttpClient client;

  @override
  Future<IHSResponse<Empty>> save({
    required PregnantDentalCheckSaveRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.checkupRecordMotherDentalSave,
      body: request.toJson(),
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (_) => null,
    );
  }

  @override
  Future<IHSResponse<PregnantDentalCheckRecordListModel>> fetchList({
    required int childId,
  }) async {
    final response = await client.post(
      IHSAPIPath.checkupRecordMotherDentalList,
      body: {'child_id': childId},
    );

    return IHSResponse<PregnantDentalCheckRecordListModel>.fromJson(
      response,
      (json) {
        if (response['data'] == null) {
          return null;
        }

        return PregnantDentalCheckRecordListModel.fromJsoon(
          json! as Map<String, dynamic>,
        );
      },
    );
  }

  @override
  Future<IHSResponse<PregnantDentalCheckRecordDetailModel>> fetchDetail({
    required int motherDentalCheckupRecordId,
  }) async {
    final response = await client.post(
      IHSAPIPath.checkupRecordMotherDentalDetail,
      body: {'mother_dental_checkup_record_id': motherDentalCheckupRecordId},
    );

    return IHSResponse<PregnantDentalCheckRecordDetailModel>.fromJson(
      response,
      (json) {
        if (response['data'] == null) {
          return null;
        }

        return PregnantDentalCheckRecordDetailModel.fromJson(
          json! as Map<String, dynamic>,
        );
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> delete({
    required int motherDentalCheckupRecordId,
  }) async {
    final response = await client.post(
      IHSAPIPath.checkupRecordMotherDentalDelete,
      body: {'mother_dental_checkup_record_id': motherDentalCheckupRecordId},
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (_) => null,
    );
  }
}

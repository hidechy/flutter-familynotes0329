import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../http/client.dart';
import '../http/path.dart';
import '../model/response/model.dart';
import '../model/vaccine/model.dart';
import '../request/vaccine_delete/request.dart';
import '../request/vaccine_save/request.dart';

/// 予防接種関連のRepository
abstract class VaccineRepository {
  /// 一覧取得
  Future<IHSResponse<VaccineListModel>> getVaccineList({
    required int childId, // 乳幼児ID
  });

  /// 更新
  Future<IHSResponse<Empty>> updateVaccineDate({
    required VaccineSaveRequest request,
  });

  /// 更新（複数）
  Future<IHSResponse<Empty>> updateVaccineDateMulti({
    required VaccineSaveListRequest request,
  });

  /// 削除
  Future<IHSResponse<Empty>> deleteVaccineDate({
    required VaccineDeleteRequest request,
  });

  /// ワクチンサブタイプ一覧取得
  Future<IHSResponse<VaccineSubTypeModel>> getVaccineSubTypeList({
    required int vaccineTypeId, // ワクチンタイプID
  });
}

class VaccineRepositoryImpl implements VaccineRepository {
  VaccineRepositoryImpl({
    required this.client,
  });

  final IHSHttpClient client;

  @override
  Future<IHSResponse<VaccineListModel>> getVaccineList({
    required int childId, // 乳幼児ID
  }) async {
    final response = await client.post(
      IHSAPIPath.vaccinationList,
      body: {
        'child_id': childId,
      },
    );

    return IHSResponse<VaccineListModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return VaccineListModel.fromJson({'list': json});
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> updateVaccineDate({
    required VaccineSaveRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.vaccinationStatusSave,
      body: request.toJson(),
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<Empty>> updateVaccineDateMulti({
    required VaccineSaveListRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.vaccinationStatusMultiSave,
      body: request.toJson(),
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<Empty>> deleteVaccineDate({
    required VaccineDeleteRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.vaccinationStatusDelete,
      body: request.toJson(),
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<VaccineSubTypeModel>> getVaccineSubTypeList({
    required int vaccineTypeId, // ワクチンタイプID
  }) async {
    final response = await client.post(
      IHSAPIPath.vaccinationSubtypeList,
      body: {
        'vaccine_type_id': vaccineTypeId,
      },
    );

    return IHSResponse<VaccineSubTypeModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return VaccineSubTypeModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }
}

final Provider<VaccineRepository> vaccineRepositoryProvider =
    Provider<VaccineRepository>(
  (ProviderRef<VaccineRepository> ref) {
    final client = ref.read(httpClientProvider);
    return VaccineRepositoryImpl(
      client: client,
    );
  },
);

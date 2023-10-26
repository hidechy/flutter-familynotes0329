import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../http/client.dart';
import '../http/path.dart';
import '../model/check_sheet_growth_detail/model.dart';
import '../model/check_sheet_growth_save/model.dart';
import '../model/response/model.dart';
import '../request/check_sheet_growth_save/request.dart';

final checkSheetGrowthRepositoryProvider =
    Provider<CheckSheetGrowthRepositoryImpl>((ref) {
  final client = ref.read(httpClientProvider);
  return CheckSheetGrowthRepositoryImpl(client);
});

/// 発達チェックシート関連Repository
abstract class CheckSheetGrowthRepository {
  /// 発達チェックシート取得
  Future<IHSResponse<CheckSheetGrowthModel>> fetchDetails({
    required int childId,
  });

  /// 発達チェックシート保存
  Future<IHSResponse<CheckSheetGrowthSaveModel>> save({
    required CheckSheetGrowthSaveRequest request,
  });
}

class CheckSheetGrowthRepositoryImpl implements CheckSheetGrowthRepository {
  CheckSheetGrowthRepositoryImpl(this.client);

  final IHSHttpClient client;

  @override
  Future<IHSResponse<CheckSheetGrowthModel>> fetchDetails({
    required int childId,
  }) async {
    final response = await client.post(
      IHSAPIPath.checkSheetGrowthDetail,
      body: {'child_id': childId},
    );

    return IHSResponse<CheckSheetGrowthModel>.fromJson(
      response,
      (json) {
        if (response['data'] == null) {
          return null;
        }

        return CheckSheetGrowthModel.fromJson(
          json! as Map<String, dynamic>,
        );
      },
    );
  }

  @override
  Future<IHSResponse<CheckSheetGrowthSaveModel>> save({
    required CheckSheetGrowthSaveRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.checkSheetGrowthSave,
      body: request.toJson(),
    );

    return IHSResponse<CheckSheetGrowthSaveModel>.fromJson(
      response,
      (json) {
        if (response['data'] == null) {
          return null;
        }

        return CheckSheetGrowthSaveModel.fromJson(
          json! as Map<String, dynamic>,
        );
      },
    );
  }
}

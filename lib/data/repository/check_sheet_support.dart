import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../http/client.dart';
import '../http/path.dart';
import '../model/check_sheet_support_detail/model.dart';
import '../model/response/model.dart';
import '../request/check_sheet_support_save/request.dart';

final checkSheetSupportRepositoryProvider =
    Provider<CheckSheetSupportRepositoryImpl>((ref) {
  final client = ref.read(httpClientProvider);
  return CheckSheetSupportRepositoryImpl(client);
});

abstract class CheckSheetSupportRepository {
  /// サポートチェックシート取得
  Future<IHSResponse<CheckSheetSupportModel>> fetchDetailList({
    required int childId,
  });

  /// サポートチェックシート保存
  Future<IHSResponse<Empty>> save({
    required CheckSheetSupportSaveRequest request,
  });
}

class CheckSheetSupportRepositoryImpl implements CheckSheetSupportRepository {
  CheckSheetSupportRepositoryImpl(this.client);

  final IHSHttpClient client;

  @override
  Future<IHSResponse<CheckSheetSupportModel>> fetchDetailList({
    required int childId,
  }) async {
    final response = await client.post(
      IHSAPIPath.checkSheetSupportDetail,
      body: {'child_id': childId},
    );

    return IHSResponse<CheckSheetSupportModel>.fromJson(
      response,
      (json) {
        if (response['data'] == null) {
          return null;
        }

        return CheckSheetSupportModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> save({
    required CheckSheetSupportSaveRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.checkSheetSupportSave,
      body: request.toJson(),
    );

    return IHSResponse<CheckSheetSupportModel>.fromJson(
      response,
      (_) => null,
    );
  }
}

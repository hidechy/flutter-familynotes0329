import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/http/client.dart';
import '/data/http/path.dart';
import '/data/model/baby/model.dart';
import '/data/model/response/model.dart';
import '../request/baby_delete/request.dart';
import '../request/baby_save/request.dart';

/// 胎児関連のRepository
abstract class BabyRepository {
  /// 胎児取得
  Future<IHSResponse<BabyModel>> fetchBaby({
    required int childId,
  });

  /// 胎児の追加（更新）
  Future<IHSResponse<Empty>> saveBaby({
    required BabySaveRequest request,
  });

  /// 胎児削除
  Future<IHSResponse<Empty>> deleteBaby({
    required BabyDeleteRequest request,
  });
}

class BabyRepositoryImpl implements BabyRepository {
  BabyRepositoryImpl({
    required this.client,
  });

  final IHSHttpClient client;

  @override
  Future<IHSResponse<BabyModel>> fetchBaby({
    required int childId,
  }) async {
    final response = await client.post(
      IHSAPIPath.babyDetail,
      body: {'child_id': childId},
    );

    return IHSResponse<BabyModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return BabyModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> saveBaby({
    required BabySaveRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.babySave,
      body: request.toJson(),
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<Empty>> deleteBaby({
    required BabyDeleteRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.babyDelete,
      body: request.toJson(),
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }
}

final Provider<BabyRepository> babyRepositoryProvider =
    Provider<BabyRepository>(
  (ProviderRef<BabyRepository> ref) {
    final client = ref.read(httpClientProvider);
    return BabyRepositoryImpl(
      client: client,
    );
  },
);

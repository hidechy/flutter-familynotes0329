import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/data/http/client.dart';
import '/data/http/path.dart';
import '/data/model/response/model.dart';
import '../model/child_checkup_detail/model.dart';
import '../model/child_checkup_list/model.dart';
import '../model/child_checkup_types/model.dart';
import '../request/child_checkup_record_detail/request.dart';
import '../request/child_checkup_record_save/request.dart';

/// 乳幼児健診関連のRepository
abstract class ChildCheckUpRepository {
  /// 乳幼児健診記録一覧取得
  Future<IHSResponse<ChildCheckupListModel>> fetchChildCheckupRecords({
    required int childId,
  });

  /// 乳幼児健診マスタ取得
  Future<IHSResponse<ChildCheckupTypesModel>> fetchChildCheckupTypes();

  /// 乳幼児健診記録登録・更新
  Future<IHSResponse<Empty>> saveChildCheckup({
    required ChildCheckupRecordSaveRequest request,
  });

  /// 乳幼児健診記録詳細取得
  Future<IHSResponse<ChildCheckupDetailModel>> fetchDetail({
    required ChildCheckupRecordDetailRequest request,
  });

  /// 乳幼児健診記録削除
  Future<IHSResponse<Empty>> deleteChildCheckup({
    required int childCheckupRecordId,
  });
}

class ChildCheckUpRepositoryImpl implements ChildCheckUpRepository {
  ChildCheckUpRepositoryImpl({
    required this.client,
  });

  final IHSHttpClient client;

  @override
  Future<IHSResponse<ChildCheckupListModel>> fetchChildCheckupRecords({
    required int childId,
  }) async {
    final response = await client.post(
      IHSAPIPath.childCheckupRecord,
      body: {'child_id': childId},
    );
    return IHSResponse<ChildCheckupListModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return const ChildCheckupListModel(list: []);
        }
        return ChildCheckupListModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<ChildCheckupTypesModel>> fetchChildCheckupTypes() async {
    final response = await client.post(
      IHSAPIPath.childCheckupTypes,
    );
    return IHSResponse<ChildCheckupTypesModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return const ChildCheckupTypesModel(list: []);
        }
        return ChildCheckupTypesModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> saveChildCheckup({
    required ChildCheckupRecordSaveRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.childCheckupRecordSave,
      body: request.toJson(),
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }

  @override
  Future<IHSResponse<ChildCheckupDetailModel>> fetchDetail(
      {required ChildCheckupRecordDetailRequest request}) async {
    final response = await client.post(
      IHSAPIPath.childCheckupRecordDetail,
      body: request.toJson(),
    );

    return IHSResponse<ChildCheckupDetailModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return ChildCheckupDetailModel(
            childId: 0,
            childCheckupTypeId: 0,
            checkupDay: DateTime.now(),
            isNormal: '',
            isObservation: '',
            isDetailedExamination: '',
            isTreatment: '',
            isBadTooth: '',
          );
        }
        return ChildCheckupDetailModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<Empty>> deleteChildCheckup(
      {required int childCheckupRecordId}) async {
    final response = await client.post(
      IHSAPIPath.childCheckupRecordDelete,
      body: {'child_checkup_record_id': childCheckupRecordId},
    );

    return IHSResponse<Empty>.fromJson(
      response,
      (Object? json) => null,
    );
  }
}

final Provider<ChildCheckUpRepository> childCheckUpRepositoryProvider =
    Provider<ChildCheckUpRepository>(
  (ProviderRef<ChildCheckUpRepository> ref) {
    final client = ref.read(httpClientProvider);
    return ChildCheckUpRepositoryImpl(
      client: client,
    );
  },
);

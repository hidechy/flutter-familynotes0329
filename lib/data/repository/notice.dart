import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../http/client.dart';
import '../http/path.dart';
import '../model/notice_category/model.dart';
import '../model/notice_detail/model.dart';
import '../model/notice_list/model.dart';
import '../model/notice_read_confirmation/model.dart';
import '../model/response/model.dart';
import '../request/notice_list/request.dart';

/// お知らせ関連のRepository
abstract class NoticeRepository {
  /// お知らせの一覧の取得
  Future<IHSResponse<NoticeListModel>> noticeList({
    required NoticeListRequest request,
  });

  /// お知らせのタグ一覧の取得
  Future<IHSResponse<CategoryListModel>> noticeCategories();

  /// お知らせ詳細の取得
  Future<IHSResponse<NoticeDetailModel>> noticeDetail({
    required int noticeId,
  });

  /// お知らせ新着確認取得
  Future<IHSResponse<NoticeReadConfirmationModel>> noticeReadConfirmation();
}

class NoticeRepositoryImpl implements NoticeRepository {
  NoticeRepositoryImpl(
    this.client,
  );

  final IHSHttpClient client;

  @override
  Future<IHSResponse<NoticeListModel>> noticeList({
    required NoticeListRequest request,
  }) async {
    final response = await client.post(
      IHSAPIPath.noticeList,
      body: request.toJson(),
    );
    return IHSResponse<NoticeListModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return NoticeListModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<CategoryListModel>> noticeCategories() async {
    final response = await client.post(
      IHSAPIPath.noticeCategoryList,
    );
    return IHSResponse<CategoryListModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return CategoryListModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<NoticeDetailModel>> noticeDetail({
    required int noticeId,
  }) async {
    final response = await client.post(
      IHSAPIPath.noticeDetail,
      body: {'notice_read_id': noticeId},
    );
    return IHSResponse<NoticeDetailModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }
        return NoticeDetailModel.fromJson(json! as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<IHSResponse<NoticeReadConfirmationModel>>
      noticeReadConfirmation() async {
    final response = await client.post(IHSAPIPath.readConfirmation);

    return IHSResponse<NoticeReadConfirmationModel>.fromJson(
      response,
      (Object? json) {
        if (response['data'] == null) {
          return null;
        }

        return NoticeReadConfirmationModel.fromJson(
            json! as Map<String, dynamic>);
      },
    );
  }
}

final noticeRepositoryProvider = Provider<NoticeRepositoryImpl>((ref) {
  final client = ref.read(httpClientProvider);
  return NoticeRepositoryImpl(client);
});

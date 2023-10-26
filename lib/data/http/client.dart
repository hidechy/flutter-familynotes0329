import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:family_notes/provider/event/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

import '/data/http/path.dart';
import '/data/local/local_client.dart';
import '/environment.dart';
import '../../provider/app/notifier.dart';
import '../../provider/loading/notifier.dart';
import '../../util/page_navigator.dart';
import '../../util/util.dart';
import '../../view/page/error/widget.dart';
import '../../view/page/splash/widget.dart';
import '../../view/service/navigation.dart';
import 'exception/exception.dart';

final Provider<IHSHttpClient> httpClientProvider = Provider<IHSHttpClient>(
  (ProviderRef<IHSHttpClient> ref) => IHSHttpClient(
    client: Client(),
    localClient: ref.watch(localClientProvider),
    ref: ref,
  ),
);

class IHSHttpClient {
  IHSHttpClient({
    required this.client,
    required this.localClient,
    required this.ref,
  });

  final Client client;
  final LocalClient localClient;
  final ProviderRef ref;

  static const _defaultTimeoutSeconds = 30;

  Future<Map<String, dynamic>> post(
    IHSAPIPath path, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    try {
      const apiEndPoint = Environment.apiEndPoint;
      final unencodedPath = '${Environment.apiBasePath}/${path.value}';
      final isDev = syncPrefBool[LocalKeyType.isDebugBuild];
      // https接続の場合、queryのvalueもStringでないとエラーになってしまうため
      final query = isDev!
          ? queryParameters
          : queryParameters?.map(
              (key, value) => MapEntry(key, value.toString()),
            );
      final uri = isDev
          ? Uri.http(apiEndPoint, unencodedPath, query)
          : Uri.https(apiEndPoint, unencodedPath, query);
      final response =
          await ref.read(loadingProvider.notifier).whileLoading(() async {
        final bodyWithCommon = await _generateParameters(path, body);
        final response = await client
            .post(
              uri,
              headers: _headers,
              body: json.encode(bodyWithCommon),
            )
            .timeout(
              const Duration(seconds: _defaultTimeoutSeconds),
              onTimeout: () =>
                  Response(jsonEncode({'error': 'Request Timeout'}), 408),
            );
        return response;
      });

      debugPrint(response.request.toString());
      debugPrint('Status Code: ${response.statusCode.toString()}');
      debugPrint(response.body);

      if (!response.ok) {
        ref.read(appStateProvider.notifier).showIndicator();
        switch (response.statusCode) {
          case 408:
            throw const TimeoutHttpStatusException();
          case 500:
            throw const MaintenanceModeHttpStatusException();
          case 503:
            throw const MaintenanceModeHttpStatusException();
          case 400:
            IHSUtil.showSnackBar(msg: '予期せぬエラーが発生しました。');
            break;
          default:
            throw const OtherHttpStatusException();
        }
      }

      final bodyString = utf8.decode(response.bodyBytes);
      final resJson = jsonDecode(bodyString) as Map<String, dynamic>;
      final unauthorized = resJson.containsKey('code') &&
          ['invalid_user_id', 'unauthorized'].contains(resJson['code']);
      debugPrint('unauthorized:$unauthorized');
      if (unauthorized) {
        await LocalClient().allRemove();
        await PageNavigator.navigatePage(
          NavigationService.navigatorKey.currentContext!,
          const SplashPage(),
          type: PageNavigator.typeRemoveUntil,
        );
      }
      return resJson;
    } on SocketException catch (_) {
      _showNetworkError();
      throw const SocketException('Connection Error');
    } on HttpStatusException catch (e) {
      if (e is TimeoutHttpStatusException) {
        _showNetworkError();
        throw const HttpStatusException.timeout();
      }

      if (e is MaintenanceModeHttpStatusException) {
        Event.fire(Event.eventKeyNotifierMaintenance);
        throw const HttpStatusException.maintenanceMode();
      }

      _showNetworkError();
      throw const HttpStatusException.other();
    } on Exception catch (_) {
      _showNetworkError();
      throw Exception('json parse error');
    }
  }

  Future<Map<String, dynamic>> _generateParameters(
    IHSAPIPath path,
    Map<String, dynamic>? queryParameters,
  ) async {
    final params = queryParameters ?? {};

    if (path.needCredentialsInHeader) {
      final userId = await localClient.get<int>(LocalKeyType.userId);
      final accessToken =
          await localClient.get<String>(LocalKeyType.accessToken);

      if (userId == null || accessToken == null) {
        throw Exception('認証情報がローカルに保存されていません');
      }

      params['user_id'] = userId.toString();
      params['access_token'] = accessToken;
    }

    return params;
  }

  Map<String, String> get _headers {
    return {'content-type': 'application/json'};
  }

  void _showNetworkError() {
    ref.read(networkErrorStateProvider.notifier).update((state) => true);
  }
}

extension ResponseEx on Response {
  bool get ok => (statusCode ~/ 100) == 2;
}

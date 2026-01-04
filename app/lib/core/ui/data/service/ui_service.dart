import 'package:app/core/dio/dio_result.dart';
import 'package:app/core/result/result.dart';
import 'package:app/core/ui/data/dtos/ui_screen_response.dart';
import 'package:dio/dio.dart';

class UiService {
  final Dio _client;

  UiService(this._client);

  Future<Result<UiScreenResponse>> getScreen(String screenId) async {
    return await _client.safeGet<UiScreenResponse>(
      '/ui/screen/$screenId',
      mapper: UiScreenResponse.fromJson,
    );
  }
}

import 'package:app/core/ui/data/dtos/ui_screen_response.dart';
import 'package:dio/dio.dart';

class UiService {
  final Dio _client;

  UiService(this._client);

  Future<UiScreenResponse> getScreen(String screenId) async {
    final response = await _client.get('/ui/screen/$screenId');
    return UiScreenResponse.fromJson(response.data);
  }
}

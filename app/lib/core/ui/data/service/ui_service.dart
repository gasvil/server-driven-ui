import 'package:app/core/http/http_client.dart';
import 'package:app/core/ui/data/dtos/ui_screen_response.dart';

class UiService {
  final HttpClient _client;

  UiService(this._client);

  Future<UiScreenResponse> getScreen(String screenId) async {
    final response = await _client.get('/ui/screen/$screenId', {});
    return UiScreenResponse.fromJson(response);
  }
}

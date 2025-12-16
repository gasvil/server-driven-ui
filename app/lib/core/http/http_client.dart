import 'dart:convert';

import 'package:app/core/http/http_config.dart';
import 'package:app/core/http/http_exception.dart';
import 'package:http/http.dart';

class HttpClient {
  final Client _client;

  HttpClient({Client? client}) : _client = client ?? Client();

  Future<Map<String, dynamic>> get(
    String path,
    Map<String, String> query,
  ) async {
    final uri = Uri.parse(
      '${HttpConfig.baseUrl}$path',
    ).replace(queryParameters: query);

    final request = Request('GET', uri);
    final response = await _client.send(request);
    final body = await response.stream.bytesToString();

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(body) as Map<String, dynamic>;
    }

    throw HttpException.fromResponse(response.statusCode, body);
  }
}

import 'package:app/core/http/http_provider.dart';
import 'package:app/core/ui/data/service/ui_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final uiServiceProvider = Provider<UiService>((ref) {
  final httpClient = ref.read(httpClientProvider);
  return UiService(httpClient);
});

import 'package:app/core/dio/dio_provider.dart';
import 'package:app/core/ui/data/service/ui_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final uiServiceProvider = Provider<UiService>((ref) {
  final dioClient = ref.read(dioClientProvider);
  return UiService(dioClient);
});

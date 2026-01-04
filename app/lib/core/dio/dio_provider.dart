import 'package:app/core/dio/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioClientProvider = Provider<Dio>((ref) {
  return dioClient();
});

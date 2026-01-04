import 'package:app/core/dio/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

Dio dioClient() {
  final dio = Dio(
    BaseOptions(
      baseUrl: DioConfig.baseUrl,
      connectTimeout: DioConfig.connectTimeout,
      receiveTimeout: DioConfig.receiveTimeout,
      headers: {'Content-Type': 'application/json'},
    ),
  );

  if (kDebugMode) {
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: false,
        responseBody: true,
        error: true,
      ),
    );
  }

  return dio;
}

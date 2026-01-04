import 'package:app/core/result/result.dart';
import 'package:dio/dio.dart';

extension DioResult on Dio {
  Future<Result<T>> safeGet<T>(
    String path, {
    required T Function(Map<String, dynamic> json) mapper,
  }) async {
    try {
      final response = await get(path);
      return Success(mapper(response.data));
    } catch (e) {
      return Failure(e.toString());
    }
  }
}

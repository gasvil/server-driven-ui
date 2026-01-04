import 'package:app/core/utils/app_logger.dart';

sealed class Result<T> {
  const Result();

  R fold<R>({
    required R Function(T data) onSuccess,
    required R Function(String failure) onFailure,
  });

  Result<T> onSuccess(void Function(T data) action) {
    if (this is Success<T>) {
      action((this as Success<T>).data);
    }
    return this;
  }

  Result<T> onFailure(void Function(String failure) action) {
    if (this is Failure<T>) {
      action((this as Failure<T>).failure);
    }
    return this;
  }

  Result<R> map<R>(R Function(T data) transform) {
    try {
      return Success(transform((this as Success<T>).data));
    } catch (e) {
      logger.e(e);
      return Failure((this as Failure<T>).failure);
    }
  }
}

final class Success<T> extends Result<T> {
  final T data;

  const Success(this.data);

  @override
  R fold<R>({
    required R Function(T data) onSuccess,
    required R Function(String failure) onFailure,
  }) {
    return onSuccess(data);
  }
}

final class Failure<T> extends Result<T> {
  final String failure;

  const Failure(this.failure);

  @override
  R fold<R>({
    required R Function(T data) onSuccess,
    required R Function(String failure) onFailure,
  }) {
    return onFailure(failure);
  }
}

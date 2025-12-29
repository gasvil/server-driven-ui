class HttpException implements Exception {
  final int statusCode;
  final String message;

  HttpException(this.statusCode, this.message);

  factory HttpException.fromResponse(int statusCode, String body) {
    return HttpException(
      statusCode,
      body.isNotEmpty ? body : 'Unexpected error',
    );
  }

  @override
  String toString() => 'HttpException($statusCode): $message';
}

class ScreenException implements Exception {
  final String message;
  const ScreenException(this.message);

  @override
  String toString() => message;
}

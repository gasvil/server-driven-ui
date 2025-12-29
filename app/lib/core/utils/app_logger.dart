import 'dart:convert';

import 'package:logger/logger.dart';

final logger = Logger(printer: PrettyPrinter());

void logJson(dynamic json) {
  const encoder = JsonEncoder.withIndent('  ');
  logger.d(encoder.convert(json));
}

import 'dart:convert';

import 'package:logger/logger.dart';

final logger = Logger(printer: PrettyPrinter());

void logJson(dynamic json) {
  try {
    const encoder = JsonEncoder.withIndent('  ');
    logger.d(encoder.convert(json));
  } catch (e) {
    logger.e(e);
  }
}

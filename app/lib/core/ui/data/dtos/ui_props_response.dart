import 'package:app/core/ui/data/dtos/ui_padding_response.dart';

class UiPropsResponse {
  final String? label;
  final String? value;
  final UiPaddingResponse? padding;

  UiPropsResponse({this.label, this.value, this.padding});

  factory UiPropsResponse.fromJson(Map<String, dynamic> json) =>
      UiPropsResponse(
        label: json['label'],
        value: json['value'],
        padding: UiPaddingResponse.fromJson(json),
      );
}

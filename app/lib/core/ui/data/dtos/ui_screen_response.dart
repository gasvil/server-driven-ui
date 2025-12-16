// dart format off
import 'package:app/core/ui/data/dtos/ui_component_response.dart';

class UiScreenResponse {
  final String id;
  final String layout;
  final List<UiComponentResponse> components;

  UiScreenResponse({
    required this.id,
    required this.layout,
    required this.components,
  });

  factory UiScreenResponse.fromJson(Map<String, dynamic> json) =>
      UiScreenResponse(
        id: json['id'],
        layout: json['layout'],
        components: (json['components'] as List<dynamic>)
            .map((it) => UiComponentResponse.fromJson(it as Map<String, dynamic>))
            .toList(),
      );
}
// dart format on

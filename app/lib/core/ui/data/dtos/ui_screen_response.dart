// dart format off
import 'package:app/core/ui/data/dtos/ui_component_response.dart';

class UiScreenResponse {
  final String id;
  final String layout;
  final UiComponentResponse? container;
  final List<UiComponentResponse> components;

  UiScreenResponse({
    required this.id,
    required this.layout,
    this.container,
    required this.components,
  });

  factory UiScreenResponse.fromJson(Map<String, dynamic> json) =>
      UiScreenResponse(
        id: json['id'],
        layout: json['layout'],
        container: UiComponentResponse.fromJson({"type": "container", "props": json["container"]}),
        components: (json['components'] as List<dynamic>)
            .map((it) => UiComponentResponse.fromJson(it as Map<String, dynamic>))
            .toList(),
      );
}
// dart format on

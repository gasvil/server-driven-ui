import 'package:app/core/ui/data/dtos/ui_props_response.dart';

class UiComponentResponse {
  final String type;
  final UiPropsResponse props;

  UiComponentResponse({required this.type, required this.props});

  factory UiComponentResponse.fromJson(Map<String, dynamic> json) =>
      UiComponentResponse(
        type: json['type'],
        props: UiPropsResponse.fromJson(json['props']),
      );
}

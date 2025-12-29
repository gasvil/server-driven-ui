class UiPropsResponse {
  final String? label;

  UiPropsResponse({this.label});

  factory UiPropsResponse.fromJson(Map<String, dynamic> json) =>
      UiPropsResponse(label: json['label']);
}

class UiPaddingResponse {
  final double top;
  final double right;
  final double bottom;
  final double left;

  UiPaddingResponse({
    this.top = 0,
    this.right = 0,
    this.bottom = 0,
    this.left = 0,
  });

  factory UiPaddingResponse.fromJson(Map<String, dynamic> json) =>
      UiPaddingResponse(
        top: json['top'],
        right: json['right'],
        bottom: json['bottom'],
        left: json['left'],
      );
}

import 'package:app/core/ui/domain/models/ui_component.dart';
import 'package:flutter/material.dart';

class UiComponentRenderer extends StatelessWidget {
  final UiComponent component;

  const UiComponentRenderer({super.key, required this.component});

  @override
  Widget build(BuildContext context) {
    switch (component) {
      case TextComponent(:final value):
        return Text(value);

      default:
        return const SizedBox.shrink();
    }
  }
}

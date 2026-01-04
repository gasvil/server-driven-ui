import 'package:app/core/ui/domain/models/ui_component.dart';
import 'package:flutter/material.dart';

class UiText extends StatelessWidget {
  final TextComponent component;

  const UiText({super.key, required this.component});

  @override
  Widget build(BuildContext context) {
    return Text(component.label);
  }
}

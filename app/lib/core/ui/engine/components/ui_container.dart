import 'package:app/core/ui/domain/models/props/ui_padding.dart';
import 'package:app/core/ui/domain/models/ui_component.dart';
import 'package:flutter/material.dart';

class UiContainer extends StatelessWidget {
  final ContainerComponent component;

  const UiContainer({super.key, required this.component});

  @override
  Widget build(BuildContext context) {
    return Container(padding: _padding(component.padding));
  }

  EdgeInsets? _padding(UiPadding? padding) {
    if (padding == null) return null;

    return EdgeInsets.only(
      left: padding.left,
      top: padding.top,
      right: padding.right,
      bottom: padding.bottom,
    );
  }
}

import 'package:app/core/ui/domain/enums/layout.dart';
import 'package:app/core/ui/domain/models/ui_screen.dart';
import 'package:app/core/ui/engine/ui_component_render.dart';
import 'package:flutter/material.dart';

class UiScreenRender extends StatelessWidget {
  final UiScreen screen;

  const UiScreenRender({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    final children = screen.components
        .map((component) => UiComponentRender(component: component))
        .toList();

    switch (screen.layout) {
      case Layout.column:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children,
        );
      case Layout.row:
        return Row(children: children);
    }
  }
}

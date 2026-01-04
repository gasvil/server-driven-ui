import 'package:app/core/ui/domain/enums/layout.dart';
import 'package:app/core/ui/domain/models/ui_screen.dart';
import 'package:app/core/ui/engine/ui_component_renderer.dart';
import 'package:flutter/material.dart';

class UiScreenRenderer extends StatelessWidget {
  final UiScreen screen;

  const UiScreenRenderer({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    final children = screen.components
        .map((component) => UiComponentRenderer(component: component))
        .toList();

    return Container(child: renderLayout(children));
  }

  Widget renderLayout(List<UiComponentRenderer> children) {
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

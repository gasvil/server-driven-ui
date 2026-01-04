import 'package:app/core/ui/domain/models/ui_component.dart';
import 'package:app/core/ui/engine/components/ui_container.dart';
import 'package:app/core/ui/engine/components/ui_icon_button.dart';
import 'package:app/core/ui/engine/components/ui_text.dart';
import 'package:flutter/material.dart';

class UiComponentRenderer extends StatelessWidget {
  final UiComponent component;

  const UiComponentRenderer({super.key, required this.component});

  @override
  Widget build(BuildContext context) {
    switch (component) {
      case ContainerComponent container:
        return UiContainer(component: container);

      case TextComponent text:
        return UiText(component: text);

      case IconButtonComponent iconButton:
        return UiIconButton(component: iconButton);

      default:
        return const SizedBox.shrink();
    }
  }
}

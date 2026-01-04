import 'package:app/core/ui/domain/enums/layout.dart';
import 'package:app/core/ui/domain/models/ui_component.dart';

class UiScreen {
  final String id;
  final Layout layout;
  final UiComponent? container;
  final List<UiComponent> components;

  UiScreen({
    required this.id,
    required this.layout,
    this.container,
    required this.components,
  });
}

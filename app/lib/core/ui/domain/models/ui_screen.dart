import 'package:app/core/ui/domain/enums/layout.dart';
import 'package:app/core/ui/domain/models/ui_component.dart';

class UiScreen {
  final String id;
  final Layout layout;
  final List<UiComponent> components;

  UiScreen({required this.id, required this.layout, required this.components});
}

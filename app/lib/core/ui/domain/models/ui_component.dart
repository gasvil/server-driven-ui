import 'package:app/core/ui/domain/models/props/ui_padding.dart';

abstract class UiComponent {
  const UiComponent();
}

class ContainerComponent extends UiComponent {
  final UiPadding? padding;
  const ContainerComponent({this.padding});
}

class TextComponent extends UiComponent {
  final String label;
  const TextComponent(this.label);
}

class IconButtonComponent extends UiComponent {
  final String value;
  const IconButtonComponent(this.value);
}

class UnknownComponent extends UiComponent {
  final String type;

  const UnknownComponent({required this.type});
}

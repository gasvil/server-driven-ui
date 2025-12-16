abstract class UiComponent {
  const UiComponent();
}

class TextComponent extends UiComponent {
  final String value;
  const TextComponent(this.value);
}

class UnknownComponent extends UiComponent {
  final String type;

  const UnknownComponent({required this.type});
}

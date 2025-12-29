import 'package:app/core/ui/data/service/ui_service.dart';
import 'package:app/core/ui/domain/enums/layout.dart';
import 'package:app/core/ui/domain/models/ui_component.dart';
import 'package:app/core/ui/domain/models/ui_screen.dart';

class GetAuthScreenUseCase {
  final UiService _service;

  GetAuthScreenUseCase(this._service);

  Future<UiScreen> call(String screenId) async {
    final response = await _service.getScreen(screenId);
    return UiScreen(
      id: response.id,
      layout: Layout.fromString(response.layout),
      components: response.components.map((it) {
        switch (it.type) {
          case "text":
            return TextComponent(it.props.label ?? '');

          default:
            return UnknownComponent(type: it.type);
        }
      }).toList(),
    );
  }
}

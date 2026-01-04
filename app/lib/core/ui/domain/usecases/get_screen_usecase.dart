import 'package:app/core/result/result.dart';
import 'package:app/core/ui/data/dtos/ui_padding_response.dart';
import 'package:app/core/ui/data/service/ui_service.dart';
import 'package:app/core/ui/domain/enums/layout.dart';
import 'package:app/core/ui/domain/models/props/ui_padding.dart';
import 'package:app/core/ui/domain/models/ui_component.dart';
import 'package:app/core/ui/domain/models/ui_screen.dart';

class GetScreenUseCase {
  final UiService _service;

  GetScreenUseCase(this._service);

  Future<Result<UiScreen>> call(String screenId) async {
    final response = await _service.getScreen(screenId);
    return response.map((screen) {
      final padding = screen.container?.props.padding;

      return UiScreen(
        id: screen.id,
        layout: Layout.fromString(screen.layout),
        container: _container(padding),
        components: screen.components.map((it) {
          switch (it.type) {
            case "text":
              return TextComponent(it.props.label ?? '');

            case "iconButton":
              return IconButtonComponent(it.props.value ?? '');

            default:
              return UnknownComponent(type: it.type);
          }
        }).toList(),
      );
    });
  }

  ContainerComponent? _container(UiPaddingResponse? padding) {
    if (padding == null) return null;

    return ContainerComponent(
      padding: UiPadding(
        top: padding.top,
        right: padding.right,
        bottom: padding.bottom,
        left: padding.left,
      ),
    );
  }
}

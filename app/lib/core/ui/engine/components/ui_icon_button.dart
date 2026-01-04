import 'package:app/core/ui/domain/models/ui_component.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UiIconButton extends StatelessWidget {
  final IconButtonComponent component;

  const UiIconButton({super.key, required this.component});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: FaIcon(FontAwesomeIcons.backward),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/border_side_ext.dart';

extension ButtonStyleExt on BuildContext {
  ButtonStyle elevatedButtonStyle() {
    return ElevatedButton.styleFrom(shape: const StadiumBorder());
  }

  ButtonStyle outlineButtonStyle() {
    return OutlinedButton.styleFrom(
      side: borderSide(),
      shape: const StadiumBorder(),
    );
  }
}

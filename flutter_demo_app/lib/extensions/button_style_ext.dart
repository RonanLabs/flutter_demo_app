import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/border_side_ext.dart';

extension ButtonStyleExt on Widget {
  ButtonStyle elevatedButtonStyle() {
    return ElevatedButton.styleFrom(shape: const StadiumBorder());
  }

  ButtonStyle outlineButtonStyle(BuildContext context) {
    return OutlinedButton.styleFrom(
      side: borderSide(context),
      shape: const StadiumBorder(),
    );
  }
}

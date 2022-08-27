import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/border_side_ext.dart';

extension OutlineInputBorderExt on BuildContext {
  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: borderSide(),
      borderRadius: BorderRadius.circular(30),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/border_side_ext.dart';

extension OutlineInputBorderExt on Widget {
  OutlineInputBorder outlineInputBorder(BuildContext context) {
    return OutlineInputBorder(
      borderSide: borderSide(context),
      borderRadius: BorderRadius.circular(30),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/border_side_ext.dart';

extension OutlineInputBorderExt on Widget {
  OutlineInputBorder greyOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: greyBorderSide(),
      borderRadius: BorderRadius.circular(30),
    );
  }
}

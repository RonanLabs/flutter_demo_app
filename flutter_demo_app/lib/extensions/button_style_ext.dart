import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/border_side_ext.dart';
import 'package:flutter_demo_app/extensions/edge_insets_geometry_ext.dart';
import 'package:flutter_demo_app/helpers/color_helper.dart';

extension ButtonStyleExt on Widget {
  ButtonStyle blueButtonStyle() {
    return ElevatedButton.styleFrom(
        padding: edgeInsets(0, 20, 0, 20),
        primary: ColorHelper.blue,
        shape: const StadiumBorder());
  }

  ButtonStyle greyButtonStyle() {
    return ElevatedButton.styleFrom(
      padding: edgeInsets(0, 20, 0, 20),
      primary: ColorHelper.transparent,
      shape: const StadiumBorder(),
      elevation: 0,
      side: greyBorderSide(),
    );
  }
}

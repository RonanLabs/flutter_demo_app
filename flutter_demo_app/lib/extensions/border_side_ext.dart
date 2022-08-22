import 'package:flutter/material.dart';
import 'package:flutter_demo_app/helpers/color_helper.dart';

extension BorderSideExt on Widget {
  BorderSide greyBorderSide() {
    return BorderSide(
      color: ColorHelper.grey,
      width: 1,
    );
  }
}

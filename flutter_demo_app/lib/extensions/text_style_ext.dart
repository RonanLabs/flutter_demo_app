import 'package:flutter/material.dart';
import 'package:flutter_demo_app/helpers/color_helper.dart';
import 'package:flutter_demo_app/helpers/font_helper.dart';

extension TextStyleExt on Widget {
  TextStyle whiteTextStyle() {
    return TextStyle(color: ColorHelper.white, fontWeight: FontWeight.bold);
  }

  TextStyle blueTextStyle() {
    return TextStyle(color: ColorHelper.blue, fontWeight: FontWeight.bold);
  }

  TextStyle blue18TextStyle() {
    return TextStyle(
        color: ColorHelper.blue,
        fontWeight: FontWeight.bold,
        fontSize: FontHelper.size18);
  }
}

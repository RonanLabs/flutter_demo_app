import 'package:flutter/material.dart';
import 'package:flutter_demo_app/helpers/color_helper.dart';

extension IconExt on Widget {
  Widget cameraIcon() {
    return Icon(
      Icons.camera_alt,
      color: ColorHelper.white,
    );
  }

  Widget homeIcon() {
    return Icon(
      Icons.home,
      size: 100,
      color: ColorHelper.blue,
    );
  }

  Widget eyeIcon(bool obscureText) {
    return Icon(
      obscureText ? Icons.visibility_off : Icons.visibility,
      color: ColorHelper.black,
    );
  }
}

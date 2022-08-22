import 'package:flutter/material.dart';
import 'package:flutter_demo_app/helpers/color_helper.dart';

extension AppBarExt on Widget {
  appBar(String title) {
    return AppBar(
      title: Text(title),
    );
  }

  transparentAppBar() {
    return AppBar(
        backgroundColor: ColorHelper.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: ColorHelper.black));
  }
}

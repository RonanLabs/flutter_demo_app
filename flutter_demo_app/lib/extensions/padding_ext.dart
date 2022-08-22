import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/app_edge_insets_geometry_ext.dart';

extension AppPaddingExt on Widget {
  Widget padding(double start, double top, double end, double bottom) {
    return Padding(
      padding: edgeInsets(start, top, end, bottom),
      child: this,
    );
  }
}

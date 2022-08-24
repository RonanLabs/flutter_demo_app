import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/edge_insets_ext.dart';

extension PaddingExt on Widget {
  Padding padding(double horizontal) {
    return Padding(
      padding: edgeInsets(horizontal),
      child: this,
    );
  }
}

import 'package:flutter/material.dart';

extension EdgeInsetsGeometryExt on Widget {
  EdgeInsetsGeometry edgeInsets(
      double start, double top, double end, double bottom) {
    return EdgeInsetsDirectional.fromSTEB(start, top, end, bottom);
  }
}

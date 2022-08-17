import 'package:flutter/material.dart';

extension AppPadding on Widget {
  Widget padding(double start, double top, double end, double bottom) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(start, top, end, bottom),
      child: this,
    );
  }
}

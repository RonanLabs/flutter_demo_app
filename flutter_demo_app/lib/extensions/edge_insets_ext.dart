import 'package:flutter/material.dart';

extension EdgeInsetsExt on Widget {
  EdgeInsets edgeInsets(double horizontal) {
    return EdgeInsets.symmetric(horizontal: horizontal);
  }
}

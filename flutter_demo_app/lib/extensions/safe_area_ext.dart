import 'package:flutter/material.dart';

extension SafeAreaExt on Widget {
  SafeArea safeArea() {
    return SafeArea(
      child: this,
    );
  }
}

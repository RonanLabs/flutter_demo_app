import 'package:flutter/material.dart';

extension SafeAreaExt on Widget {
  safeArea() {
    return SafeArea(
      child: this,
    );
  }
}

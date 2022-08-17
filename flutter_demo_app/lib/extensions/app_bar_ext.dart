import 'package:flutter/material.dart';

extension AppBarExt on String {
  getAppBar() {
    return AppBar(
      title: Text(this),
    );
  }
}

import 'package:flutter/material.dart';

extension AppColumnExt on List<Widget> {
  Widget column() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: this,
    );
  }
}

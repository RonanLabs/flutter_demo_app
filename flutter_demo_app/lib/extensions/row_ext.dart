import 'package:flutter/material.dart';

extension AppRowExt on List<Widget> {
  Widget row() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: this,
    );
  }
}

import 'package:flutter/material.dart';

extension AppRow on List<Widget> {
  Widget row() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: this,
    );
  }
}

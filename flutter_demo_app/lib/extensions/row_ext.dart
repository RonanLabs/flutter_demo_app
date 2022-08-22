import 'package:flutter/material.dart';

extension RowExt on List<Widget> {
  Widget row() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: this,
    );
  }
}

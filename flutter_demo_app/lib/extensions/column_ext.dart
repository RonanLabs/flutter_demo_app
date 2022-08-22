import 'package:flutter/material.dart';

extension ColumnExt on List<Widget> {
  Widget column() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: this,
    );
  }
}

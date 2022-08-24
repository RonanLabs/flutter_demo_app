import 'package:flutter/material.dart';

extension ColumnExt on List<Widget> {
  Column column() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: this,
    );
  }
}

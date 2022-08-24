import 'package:flutter/material.dart';

extension RowExt on List<Widget> {
  Row row() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: this,
    );
  }
}

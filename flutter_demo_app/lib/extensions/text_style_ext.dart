import 'package:flutter/material.dart';

extension TextStyleExt on BuildContext {
  TextStyle titleTextStyle() {
    return TextStyle(
        color: Theme.of(this).colorScheme.primary,
        fontWeight: FontWeight.bold,
        fontSize: 18);
  }
}

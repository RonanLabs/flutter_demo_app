import 'package:flutter/material.dart';

extension BorderSideExt on BuildContext {
  BorderSide borderSide() {
    return BorderSide(color: Theme.of(this).colorScheme.primary);
  }
}

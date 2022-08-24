import 'package:flutter/material.dart';

extension BorderSideExt on Widget {
  BorderSide borderSide(BuildContext context) {
    return BorderSide(color: Theme.of(context).colorScheme.primary);
  }
}

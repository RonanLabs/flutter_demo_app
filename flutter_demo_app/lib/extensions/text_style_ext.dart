import 'package:flutter/material.dart';

extension TextStyleExt on Widget {
  TextStyle primaryTextStyle(BuildContext context) {
    return TextStyle(color: Theme.of(context).colorScheme.primary);
  }

  TextStyle primaryBoldTextStyle(BuildContext context, double fontSize) {
    return TextStyle(
        color: Theme.of(context).colorScheme.primary,
        fontWeight: FontWeight.bold,
        fontSize: fontSize);
  }
}

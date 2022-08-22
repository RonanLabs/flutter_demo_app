import 'package:flutter/material.dart';

extension AppGestureDetectorExt on Widget {
  Widget gestureDetector(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: this,
    );
  }
}

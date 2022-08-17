import 'package:flutter/material.dart';

extension AppGestureDetector on Widget {
  Widget gestureDetector(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: this,
    );
  }
}

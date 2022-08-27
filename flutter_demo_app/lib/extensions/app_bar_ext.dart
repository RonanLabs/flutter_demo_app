import 'package:flutter/material.dart';

extension AppBarExt on BuildContext {
  appBar(String title) {
    return AppBar(title: Text(title));
  }

  backButtonAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
          color: Theme.of(this).brightness == Brightness.light
              ? Colors.black
              : Colors.white),
    );
  }
}

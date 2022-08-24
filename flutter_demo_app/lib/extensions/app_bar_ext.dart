import 'package:flutter/material.dart';

extension AppBarExt on Widget {
  appBar(String title) {
    return AppBar(title: Text(title));
  }

  transparentAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme:
          IconThemeData(color: Theme.of(context).textTheme.subtitle1?.color),
    );
  }
}

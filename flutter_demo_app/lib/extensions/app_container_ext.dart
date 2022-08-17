import 'package:flutter/material.dart';

extension AppContainer on Widget {
  Widget rootContainer() {
    return Scaffold(
        body: SafeArea(
      child: this,
    ));
  }
}

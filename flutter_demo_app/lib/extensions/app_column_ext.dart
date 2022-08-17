import 'package:flutter/material.dart';

extension AppColumn on List<Widget> {
  Widget column() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: this,
    );
  }
}

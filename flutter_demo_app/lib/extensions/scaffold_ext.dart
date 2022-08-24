import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/app_bar_ext.dart';
import 'package:flutter_demo_app/extensions/safe_area_ext.dart';

extension ScaffoldExt on Widget {
  Scaffold scaffold() {
    return Scaffold(body: safeArea());
  }

  Scaffold appBarScaffold(AppBar appBar) {
    return Scaffold(appBar: appBar, body: safeArea());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/app_bar_ext.dart';

extension AppContainerExt on Widget {
  Widget container() {
    return Scaffold(
        body: SafeArea(
      child: this,
    ));
  }

  Widget transparentContainerWithAppBar() {
    return Scaffold(
        appBar: transparentAppBar(),
        body: SafeArea(
          child: this,
        ));
  }

  Widget circleContainer(String url) {
    return Container(
      width: 120,
      height: 120,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.network(
        url,fit: BoxFit.fill
      ),
    );
  }
}

import 'package:flutter/material.dart';

extension ContainerExt on Widget {
  Widget circleContainer(String url) {
    return Container(
      width: 120,
      height: 120,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.network(url, fit: BoxFit.fill),
    );
  }
}

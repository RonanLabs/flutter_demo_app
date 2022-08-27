import 'package:flutter/material.dart';

extension SizedBoxExt on Widget {
  SizedBox sizedBox(double height) {
    return SizedBox(
      height: height,
      child: this,
    );
  }

  SizedBox selfSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}

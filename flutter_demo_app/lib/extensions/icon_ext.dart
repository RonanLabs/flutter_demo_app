import 'package:flutter/material.dart';

extension IconExt on BuildContext {
  Icon cameraIcon() {
    return const Icon(
      Icons.camera_alt,
      color: Colors.white,
    );
  }

  Icon homeIcon() {
    return Icon(
      Icons.home,
      size: 100.0,
      color: Theme.of(this).colorScheme.primary,
    );
  }

  Icon eyeIcon(bool obscureText) {
    return Icon(
      obscureText ? Icons.visibility_off : Icons.visibility,
    );
  }
}

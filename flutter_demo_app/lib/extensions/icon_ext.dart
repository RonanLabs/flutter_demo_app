import 'package:flutter/material.dart';

extension IconExt on Widget {
  Icon cameraIcon(BuildContext context) {
    return const Icon(
      Icons.camera_alt,
      color: Colors.white,
    );
  }

  Icon homeIcon(BuildContext context, double size) {
    return Icon(
      Icons.home,
      size: size,
      color: Theme.of(context).colorScheme.primary,
    );
  }

  Icon eyeIcon(bool obscureText) {
    return Icon(
      obscureText ? Icons.visibility_off : Icons.visibility,
    );
  }
}

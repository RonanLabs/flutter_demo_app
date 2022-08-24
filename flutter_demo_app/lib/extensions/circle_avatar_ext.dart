import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/icon_button_ext.dart';
import 'package:flutter_demo_app/extensions/icon_ext.dart';

extension CircleAvatarExt on Widget {
  CircleAvatar cameraCircleAvatar(
      BuildContext context, double radius, Function onPressed) {
    return CircleAvatar(
        radius: radius,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: iconButton(onPressed, cameraIcon(context)));
  }

  CircleAvatar personalCircleAvatar(double radius, String url) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(url),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/icon_button_ext.dart';

extension CircleAvatarExt on BuildContext {
  CircleAvatar iconCircleAvatar(double radius, Icon icon, Function onPressed) {
    return CircleAvatar(
        radius: radius,
        backgroundColor: Theme.of(this).colorScheme.primary,
        child: widget.iconButton(onPressed, icon));
  }

  CircleAvatar imageCircleAvatar(double radius, String url) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(url),
    );
  }
}

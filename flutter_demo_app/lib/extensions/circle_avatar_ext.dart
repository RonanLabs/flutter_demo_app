import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/icon_ext.dart';
import 'package:flutter_demo_app/helpers/color_helper.dart';

extension CircleAvatarExt on Widget {
  Widget cameraCircleAvatar(Function onPressed) {
    return CircleAvatar(
        radius: 20,
        backgroundColor: ColorHelper.blue,
        child: IconButton(
          onPressed: onPressed(),
          icon: cameraIcon(),
        ));
  }
}

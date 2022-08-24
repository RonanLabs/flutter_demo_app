import 'package:flutter/material.dart';

extension IconButtonExt on Widget {
  IconButton iconButton(Function onPressed, Icon icon) {
    return IconButton(
      onPressed: () => onPressed,
      icon: icon,
    );
  }
}

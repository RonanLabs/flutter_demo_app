import 'package:flutter/material.dart';
import 'package:flutter_demo_app/models/list_tile_model.dart';
import 'package:flutter_demo_app/extensions/circle_avatar_ext.dart';

extension ListTileExt on Widget {
  ListTile listTile(BuildContext context, ListTileModel model) {
    return ListTile(
      title: Text(model.title!),
      subtitle: Text(model.subtitle!),
      leading: context.imageCircleAvatar(20.0, model.leading!),
    );
  }
}

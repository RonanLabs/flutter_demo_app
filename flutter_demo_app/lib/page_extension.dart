import 'package:flutter/material.dart';
import 'package:flutter_demo_app/blog_page.dart';
import 'package:flutter_demo_app/home_page.dart';
import 'package:flutter_demo_app/page_constants.dart';

extension PageExtension on RouteSettings {
  Widget createPage() {
    switch (name) {
      case PageConstants.blogPage:
        return BlogPage(arguments as Map<String, dynamic>);
      default:
        return const HomePage();
    }
  }

  MaterialPage createMaterialPage(Widget child) {
    return MaterialPage(
      child: child,
      key: ValueKey(name),
      name: name,
      arguments: arguments,
    );
  }
}

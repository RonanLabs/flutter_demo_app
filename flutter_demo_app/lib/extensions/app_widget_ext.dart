import 'package:flutter/material.dart';
import 'package:flutter_demo_app/views/home/home_page.dart';
import 'package:flutter_demo_app/views/app/app_page.dart';
import 'package:flutter_demo_app/views/blog/blog_page.dart';
import 'package:flutter_demo_app/views/register/register_page.dart';

extension AppWidgetExt on String {
  Widget getWidget(List<String> args) {
    switch (this) {
      case AppPage.blogPage:
        return BlogPage(args);
      case AppPage.registerPage:
        return const RegisterPage();
      default:
        return const HomePage();
    }
  }
}

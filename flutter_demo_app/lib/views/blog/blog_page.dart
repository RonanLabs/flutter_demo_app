import 'package:flutter/material.dart';
import 'package:flutter_demo_app/views/blog/blog_page_state.dart';

class BlogPage extends StatefulWidget {
  late final String id;

  BlogPage(List<String> args, {Key? key}) : super(key: key) {
    id = args[1];
  }

  @override
  BlogPageState createState() => BlogPageState();
}

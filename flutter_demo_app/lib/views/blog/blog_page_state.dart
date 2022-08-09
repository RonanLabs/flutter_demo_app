import 'package:flutter/material.dart';
import 'package:flutter_demo_app/views/blog/blog_page.dart';

class BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    debugPrint('blog id: ${widget.id}');
    return Scaffold(
      appBar: AppBar(title: const Text('Blog')),
      body: Column(
        children: [Text(widget.id)],
      ),
    );
  }
}

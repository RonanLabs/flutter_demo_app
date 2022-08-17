import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/app_bar_ext.dart';
import 'package:flutter_demo_app/views/blog/blog_page.dart';

class BlogPageState extends State<BlogPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint('test blog init');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('blog id: ${widget.id}');
    return Scaffold(
      appBar: 'Blog'.getAppBar(),
      body: Column(
        children: [Text(widget.id)],
      ),
    );
  }
}

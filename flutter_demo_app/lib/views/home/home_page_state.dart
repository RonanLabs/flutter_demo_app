import 'package:flutter/material.dart';
import 'package:flutter_demo_app/views/app/app_route_delegate.dart';
import 'package:flutter_demo_app/views/home/home_page.dart';

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                AppRouteDelegate.of(context).push('/blog/123');
              },
              child: const Text('blog'))
        ],
      ),
    );
  }
}

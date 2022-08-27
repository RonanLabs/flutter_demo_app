import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/app_bar_ext.dart';
import 'package:flutter_demo_app/views/conversations/conversations_page.dart';

class ConversationsPageState extends State<ConversationsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint('test blog init');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('conversation id: ${widget.id}');
    return Scaffold(
      appBar: context.appBar('Conversations'),
      body: Column(
        children: [Text(widget.id)],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_demo_app/views/conversations/conversations_page_state.dart';

class ConversationsPage extends StatefulWidget {
  late final String id;

  ConversationsPage(List<String> args, {Key? key}) : super(key: key) {
    id = args[1];
  }

  @override
  ConversationsPageState createState() => ConversationsPageState();
}
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  bool obscureText = true;

  void toggle() {
    obscureText = !obscureText;
    notifyListeners();
  }
}

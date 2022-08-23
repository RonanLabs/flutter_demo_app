import 'package:flutter/material.dart';

class RegisterViewModel extends ChangeNotifier {
  bool passwordObscureText = true;
  bool confirmPasswordObscureText = true;

  void passwordToggle() {
    passwordObscureText = !passwordObscureText;
    notifyListeners();
  }

  void confirmPasswordToggle() {
    confirmPasswordObscureText = !confirmPasswordObscureText;
    notifyListeners();
  }
}
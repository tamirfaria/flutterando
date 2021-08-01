import 'package:flutter/cupertino.dart';

class LoginController extends ChangeNotifier {
  static LoginController instance = LoginController();
  String email = '';
  String password = '';
  bool isVisible = false;
  void changeVisibility() {
    isVisible = !isVisible;
    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RedHeartController extends ChangeNotifier {
  static RedHeartController instance = RedHeartController();

  bool colored = false;
  Icon coloredIcon = const Icon(Icons.favorite, color: Colors.red, size: 81.0);
  Icon voidIcon =
      const Icon(Icons.favorite_border_outlined, color: Colors.red, size: 81.0);

  changeColor() {
    colored = !colored;
    notifyListeners();
  }
}

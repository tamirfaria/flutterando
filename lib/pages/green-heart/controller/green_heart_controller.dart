import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GreenHeartController extends ChangeNotifier {
  static GreenHeartController instance = GreenHeartController();

  bool colored = false;
  Icon coloredIcon =
      const Icon(Icons.favorite, color: Colors.green, size: 81.0);
  Icon voidIcon = const Icon(Icons.favorite_border_outlined,
      color: Colors.green, size: 81.0);

  changeColor() {
    colored = !colored;
    notifyListeners();
  }
}

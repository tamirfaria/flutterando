import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YellowHeartController extends ChangeNotifier {
  static YellowHeartController instance = YellowHeartController();

  bool colored = false;
  Icon coloredIcon =
      const Icon(Icons.favorite, color: Colors.amber, size: 81.0);
  Icon voidIcon = const Icon(Icons.favorite_border_outlined,
      color: Colors.amber, size: 81.0);

  changeColor() {
    colored = !colored;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:flutterando/widgets/custom_switch_wiget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
        actions: const [
          CustomSwitch(),
        ],
      ),
    );
  }
}

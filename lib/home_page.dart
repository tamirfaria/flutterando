import 'package:flutter/material.dart';
import 'package:flutterando/app_controller.dart';

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
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.topRight,
        child: Switch(
          value: AppController.instance.isDarkTheme,
          onChanged: (value) {
            setState(() {
              AppController.instance.changeTheme();
            });
          },
        ),
      ),
    );
  }
}

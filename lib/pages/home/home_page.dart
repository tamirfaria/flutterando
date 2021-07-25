import 'package:flutter/material.dart';
import 'package:flutterando/pages/home/controller/home_controller.dart';
import 'package:flutterando/widgets/custom-switch/custom_switch_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: const [CustomSwitch()],
      ),
      drawer: const Drawer(),
      body: Center(
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(36.0)),
          onTap: () => setState(() => controller.changeColor()),
          child: (controller.colored == true)
              ? controller.coloredIcon
              : controller.voidIcon,
        ),
      ),
    );
  }
}

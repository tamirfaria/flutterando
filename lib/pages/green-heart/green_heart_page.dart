import 'package:flutter/material.dart';
import 'package:flutterando/pages/green-heart/controller/green_heart_controller.dart';
import 'package:flutterando/widgets/custom-switch/custom_switch_widget.dart';

class GreenHeartPage extends StatefulWidget {
  const GreenHeartPage({Key? key}) : super(key: key);

  @override
  State<GreenHeartPage> createState() => GreenHeartPageState();
}

class GreenHeartPageState extends State<GreenHeartPage> {
  final controller = GreenHeartController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CustomSwitch()],
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.orange,
        ),
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
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

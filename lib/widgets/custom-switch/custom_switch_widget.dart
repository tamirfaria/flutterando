import 'package:flutter/material.dart';
import 'package:flutterando/widgets/app-widget/controller/app_controller.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        setState(() => AppController.instance.changeTheme());
      },
    );
  }
}

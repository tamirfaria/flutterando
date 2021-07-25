import 'package:flutter/material.dart';
import 'package:flutterando/widgets/custom_switch_wiget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool colored = false;
  void changeColor() {
    setState(() {
      colored = !colored;
    });
  }

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
      drawer: const Drawer(),
      body: Center(
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(36.0),
          ),
          onTap: () => changeColor(),
          child: (colored == true)
              ? const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 81.0,
                )
              : const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.red,
                  size: 81.0,
                ),
        ),
      ),
    );
  }
}

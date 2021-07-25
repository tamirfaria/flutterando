import 'package:flutter/material.dart';
import 'package:flutterando/widgets/custom-switch/custom_switch_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CustomSwitch()],
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(36.0)),
              child:
                  const Icon(Icons.favorite_border_outlined, color: Colors.red),
              onTap: () => Navigator.of(context).pushNamed('red'),
            ),
            const SizedBox(height: 30.0),
            InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(36.0)),
              child: const Icon(Icons.favorite_border_outlined,
                  color: Colors.green),
              onTap: () => Navigator.of(context).pushNamed('green'),
            ),
            const SizedBox(height: 30.0),
            InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(36.0)),
              child: const Icon(Icons.favorite_border_outlined,
                  color: Colors.amber),
              onTap: () => Navigator.of(context).pushNamed('yellow'),
            ),
          ],
        ),
      ),
    );
  }
}

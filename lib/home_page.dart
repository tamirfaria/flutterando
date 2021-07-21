import 'package:flutter/material.dart';
import 'package:flutterando/widgets/custom_switch_wiget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var counter = 0;
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
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            const SizedBox(
              height: 46.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.favorite_border_outlined, color: Colors.red),
                Icon(Icons.favorite_border_outlined, color: Colors.green),
                Icon(Icons.favorite_border_outlined, color: Colors.amber),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => counter++);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterando/widgets/custom_switch_wiget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final List<MaterialColor> colors = <MaterialColor>[
    Colors.red,
    Colors.orange,
    Colors.amber,
    Colors.green,
    Colors.blue,
    Colors.cyan,
    Colors.purple,
    Colors.deepPurple,
    Colors.pink,
    Colors.brown,
    Colors.blueGrey,
    Colors.grey,
  ];
  final List<int> colorsCode = <int>[
    300,
    400,
    600,
    700,
    800,
    900,
  ];
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
      body: ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: colors[index],
            child: const Center(
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 60.0,
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
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

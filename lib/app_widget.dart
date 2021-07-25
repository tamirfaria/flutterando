import 'package:flutter/material.dart';
import 'package:flutterando/app_controller.dart';
import 'package:flutterando/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          home: const HomePage(title: 'Fluterando | Aula 17'),
        );
      },
    );
  }
}

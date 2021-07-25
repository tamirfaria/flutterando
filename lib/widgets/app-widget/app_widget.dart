import 'package:flutter/material.dart';
import 'package:flutterando/pages/green-heart/green_heart_page.dart';
import 'package:flutterando/pages/home/home_page.dart';
import 'package:flutterando/pages/login/login_page.dart';
import 'package:flutterando/pages/red-heart/red_heart_page.dart';
import 'package:flutterando/pages/yellow-heart/yellow_heart_page.dart';
import 'package:flutterando/widgets/app-widget/controller/app_controller.dart';

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
          initialRoute: '/',
          routes: {
            '/': (context) => const LoginPage(),
            'home': (context) => const HomePage(),
            'red': (context) => const RedHeartPage(),
            'yellow': (context) => const YellowHeartPage(),
            'green': (context) => const GreenHeartPage(),
          },
        );
      },
    );
  }
}

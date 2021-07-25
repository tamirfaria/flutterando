import 'package:flutter/material.dart';
import 'package:flutterando/pages/login/controller/login_controller.dart';
import 'package:flutterando/widgets/custom-elevated-button/custom_elevated_button.dart';
import 'package:flutterando/widgets/custom-textfield-email/custom_textfield_email.dart';
import 'package:flutterando/widgets/custom-textfield-password/custom_textfield_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFieldEmail(controller: controller),
                const SizedBox(height: 16.0),
                CustomTextFieldPassword(controller: controller),
                const SizedBox(height: 16.0),
                CustomElevatedButton(controller: controller),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

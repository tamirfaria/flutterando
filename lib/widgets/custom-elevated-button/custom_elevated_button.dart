import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({Key? key, required this.controller})
      : super(key: key);

  final controller;

  @override
  createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
      ),
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          'ENTRAR',
          textAlign: TextAlign.center,
        ),
      ),
      onPressed: () {
        (widget.controller.email == 'lucastamir@gmail.com' &&
                widget.controller.password == '123456')
            ? Navigator.of(context).pushReplacementNamed('home')
            : print('Tente novamente');
      },
    );
  }
}

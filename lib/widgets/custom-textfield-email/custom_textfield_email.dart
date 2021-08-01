import 'package:flutter/material.dart';

class CustomTextFieldEmail extends StatefulWidget {
  const CustomTextFieldEmail({Key? key, required this.controller})
      : super(key: key);

  final controller;

  @override
  createState() => _CustomTextFieldEmailState();
}

class _CustomTextFieldEmailState extends State<CustomTextFieldEmail> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.mail_outline),
      ),
      onChanged: (value) => widget.controller.email = value,
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextFieldPassword extends StatefulWidget {
  const CustomTextFieldPassword({Key? key, required this.controller})
      : super(key: key);

  final controller;

  @override
  createState() => _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: (!widget.controller.isVisible) ? true : false,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: 'Password',
        border: const OutlineInputBorder(),
        suffixIcon: InkWell(
          onTap: () => setState(() => widget.controller.changeVisibility()),
          child: (widget.controller.isVisible)
              ? const Icon(Icons.visibility_off_outlined)
              : const Icon(Icons.visibility_outlined),
        ),
      ),
      onChanged: (value) => widget.controller.password = value,
    );
  }
}

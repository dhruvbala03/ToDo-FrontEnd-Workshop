import 'package:flutter/material.dart';

class MyTextInput extends StatefulWidget {
  final TextEditingController controller;
  final String text;

  const MyTextInput({Key? key, required this.controller, required this.text}) : super(key: key);

  @override
  State<MyTextInput> createState() => _MyTextInputState();
}

class _MyTextInputState extends State<MyTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      controller: widget.controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.text,
      ),
    );
  }
}

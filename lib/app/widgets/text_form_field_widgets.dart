import 'package:flutter/material.dart';

class TextFieldFormWidgets extends StatelessWidget {
  const TextFieldFormWidgets({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TheTextField extends StatelessWidget {
  final bool obscure_Text;
  final TextInputType InputType;
  final String hint_Text;

  const TheTextField(
      {super.key,
      required this.obscure_Text,
      required this.InputType,
      required this.hint_Text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: InputType,
      obscureText: obscure_Text,
      decoration: InputDecoration(
        hintText: hint_Text,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}

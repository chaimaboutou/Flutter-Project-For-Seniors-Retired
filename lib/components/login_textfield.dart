import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  const LoginField({super.key, required this.hintText, required this.icons});

  final String hintText;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.end,
      decoration: InputDecoration(
          hintText: hintText,
          fillColor: Colors.blue.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(icons),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(18))),
    );
  }
}

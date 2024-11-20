import 'package:flutter/material.dart';

class AddTextField extends StatelessWidget {
  const AddTextField(
      {super.key, required this.label, required this.hint, this.prefixIcon});

  final String label;
  final String hint;
  final IconData? prefixIcon;
  final TextDirection arabicDirection = TextDirection.rtl;

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: arabicDirection,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textDirection: arabicDirection, label),
        const SizedBox(height: 5),
        TextField(
          textDirection: arabicDirection,
          decoration: InputDecoration(
            hintTextDirection: arabicDirection,
            hintText: hint,
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            fillColor: Colors.orange.withOpacity(0.2),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}

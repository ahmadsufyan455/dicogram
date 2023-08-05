import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final String hint;
  final bool isObscure;
  final bool hasSuffix;
  final VoidCallback? onPressed;

  const TextInput({
    required this.controller,
    this.textInputType,
    this.textInputAction,
    required this.hint,
    this.isObscure = false,
    this.hasSuffix = false,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyles.body,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      obscureText: isObscure,
      decoration: InputDecoration(
        suffixIcon: hasSuffix
            ? IconButton(
                onPressed: onPressed,
                icon: Icon(
                  isObscure ? Icons.visibility : Icons.visibility_off,
                  color: Colors.deepPurple,
                ),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.0,
            color: Colors.deepPurple,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.0,
            color: Colors.deepPurple,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: hint,
        hintStyle: TextStyles.body,
      ),
    );
  }
}

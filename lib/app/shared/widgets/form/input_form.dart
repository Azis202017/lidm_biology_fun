import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool? isPassword;
  final Widget? suffixIcon;
  final String? hintText;
  const InputForm({
    super.key,
    this.validator,
    this.controller,
    this.isPassword = false,
    this.suffixIcon,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.always,
      autocorrect: false,
      validator: validator,
      controller: controller,
      obscureText: isPassword != false ? true : false,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../theme/font.dart';
import 'form/input_form.dart';

class AccountWidget extends StatelessWidget {
  final String? Function(String?)? usernameValidator;
  final TextEditingController? usernameController;
  final String? Function(String?)? passwordValidator;
  final TextEditingController? passwordController;
  final bool? isPassword;
  final Widget? suffixIcon;
  final String? hintTextUsername;
  final String? hintTextPassword;
  const AccountWidget({
    super.key,
    this.usernameValidator,
    this.usernameController,
    this.passwordValidator,
    this.passwordController,
    this.isPassword = false,
    this.suffixIcon,
    this.hintTextUsername,
    this.hintTextPassword,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      
        const SizedBox(
          height: 32,
        ),
        Text('Username', style: body2Regular),
        const SizedBox(
          height: 8,
        ),
        InputForm(
          validator: usernameValidator,
          controller: usernameController,
          hintText: hintTextUsername,
        ),
        const SizedBox(
          height: 24,
        ),
        Text('Password', style: body2Regular),
        const SizedBox(
          height: 8,
        ),
        InputForm(
          validator: passwordValidator,
          controller: passwordController,
          isPassword: isPassword,
          suffixIcon: suffixIcon,
          hintText: hintTextPassword,
        ),
      ],
    );
  }
}

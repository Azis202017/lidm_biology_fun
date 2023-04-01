import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();

  }
}

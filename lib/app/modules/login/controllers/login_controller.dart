import 'package:biology_fun/app/routes/app_pages.dart';
import 'package:biology_fun/app/services/login_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();
  void validateLogin() {
    if (formGlobalKey.currentState!.validate()) {
      formGlobalKey.currentState!.save();
      login();
      Get.toNamed(Routes.HOME);
      // use the email provided here
    }
  }

  void login() async {
    bool isLogin = await LoginServices().loginUser(
        username: usernameController.text, password: passwordController.text);
    if (isLogin) {
      Get.snackbar('Login Success', 'Login Berhasil');
      Get.toNamed(Routes.HOME);
    } else {
      Get.snackbar('Login Gagal', 'Username sama password salah');
    }
  }
  void toRegisterPage() {
    Get.toNamed(Routes.LOGIN);
  }

  String? userValidate(String? value) {
    if (value!.isNotEmpty ) {
      return null;
    } else {
      return 'Username harus diisi';
    }
  }
   String? passwordValidate(String? value) {
    if (value!.isNotEmpty) {
      return null;
    } else {
      return 'Password harus diisi';
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}

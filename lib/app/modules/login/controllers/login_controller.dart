import 'package:biology_fun/app/data/model/error/login_error_model.dart';
import 'package:biology_fun/app/routes/app_pages.dart';
import 'package:biology_fun/app/services/login/login_error_service.dart';
import 'package:biology_fun/app/services/login/login_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obsecure = true;
  bool loading = false;
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
    if (formGlobalKey.currentState!.validate()) {
      formGlobalKey.currentState!.save();
      loading = true;
      bool isLogin = await LoginServices().loginUser(
          username: usernameController.text, password: passwordController.text);
      loading = false;
      update();

      if (isLogin) {
        Get.snackbar('Login Success', 'Login Berhasil');
        Get.toNamed(Routes.BOTTOM_NAVIGATION);
      } else {
        LoginError loginError = await LoginErrorService().errorLog(
            username: usernameController.text,
            password: passwordController.text);
        Get.snackbar('Login Gagal', loginError.message!);
      }
    }
  }

  void toRegisterPage() {
    Get.toNamed(Routes.REGISTER);
  }

  String? userValidate(String? value) {
    if (value!.isNotEmpty) {
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

  void changeObsecure() {
    obsecure = !obsecure;
    update();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}

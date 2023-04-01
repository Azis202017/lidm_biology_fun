import 'package:biology_fun/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  bool obsecure = true;
  final formGlobalKey = GlobalKey<FormState>();

  String? userValidate(String? value) {
    if (value!.isNotEmpty) {
      return null;
    } else {
      return 'Username harus diisi';
    }
  }

  void onStepContinue() {
    if (_currentIndex <= 0) {
      _currentIndex += 1;

      update();
    }
  }

  void onStepCancel() {
    if (_currentIndex > 0) {
      _currentIndex--;
    }

    update();
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

  void toLoginPage() {
    Get.offAndToNamed(Routes.LOGIN);
  }
}

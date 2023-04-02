import 'package:biology_fun/app/routes/app_pages.dart';
import 'package:biology_fun/app/services/register_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/model/list_class_model.dart';

class RegisterController extends GetxController {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  bool obsecure = true;
  bool obsecureConfirmation = true;
  bool _isRegisterSuccess = false;
  String classId = "";
  String classroomName = "";
  final formGlobalKey = GlobalKey<FormState>();

  String? fullNameValidate(String? value) {
    if (value!.isNotEmpty) {
      return null;
    } else {
      return 'Nama lengkap harus diisi';
    }
  }

  String? usernameValidate(String? value) {
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

  String? passwordConfirmValidate(String? value) {
    if (value!.isNotEmpty && value == passwordController.text) {
      return null;
    } else {
      return 'Konfirmasi password tidak sama dengan password';
    }
  }

  String? validatorClassroom(Classroom? classroom) {
    if (classroom != null) {
      return null;
    }
    return 'Data kelas harus diisi';
  }

  void changeObsecure() {
    obsecure = !obsecure;
    update();
  }

  void changeObsecurePasswordConfirmation() {
    obsecureConfirmation = !obsecureConfirmation;
    update();
  }

  void toLoginPage() {
    Get.offAndToNamed(Routes.LOGIN);
  }

  void onChanged(Classroom? classroom) {
    classId = classroom!.id!;
    classroomName = classroom.name!;
  }

  void saveDataRegister() async {
    _isRegisterSuccess = await RegisterServices().register(
      fullName: fullNameController.text,
      classId: classId,
      username: usernameController.text,
      password: passwordController.text,
      passwordConfirmation: passwordConfirmController.text,
      classroomName: classroomName
    );
    if (_isRegisterSuccess) {
      Get.snackbar("Register Berhasil", "Register Berhasil");
    } else {
      Get.snackbar("Register Tidak Berhasil", "Register tidak berhasil");
    }
  }
}

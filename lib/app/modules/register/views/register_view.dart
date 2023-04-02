import 'package:biology_fun/app/data/model/list_class_model.dart';
import 'package:biology_fun/app/services/classroom/classroom_service.dart';
import 'package:biology_fun/app/shared/widgets/form/input_form.dart';
import 'package:biology_fun/app/shared/widgets/header/header_auth.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/theme/font.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(builder: (_) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: controller.formGlobalKey,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderAuth(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Register',
                          style: h1Bold,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Text('Nama Lengkap', style: body2Regular),
                        const SizedBox(
                          height: 8,
                        ),
                        InputForm(
                          controller: controller.fullNameController,
                          hintText: 'Masukkan nama lengkap ...',
                          validator: controller.fullNameValidate,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text('Username', style: body2Regular),
                        const SizedBox(
                          height: 8,
                        ),
                        InputForm(
                          controller: controller.usernameController,
                          hintText: 'Masukkan username ...',
                          validator: controller.usernameValidate,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text('Pilih kelas', style: body2Regular),
                        const SizedBox(height: 8),
                        DropdownSearch<Classroom>(
                          autoValidateMode: AutovalidateMode.always,
                          validator: controller.validatorClassroom,
                          itemAsString: (item) => item.name!,
                          popupProps: const PopupProps.dialog(
                            showSearchBox: true,
                          ),
                          dropdownDecoratorProps: const DropDownDecoratorProps(
                            dropdownSearchDecoration:
                                InputDecoration(hintText: "Pilih kelas"),
                          ),
                          asyncItems: (_) async {
                            List<Classroom> data = [];
                            List<Classroom> responseData =
                                await ClassroomService().getAllListClassroom();
                            if (responseData.isNotEmpty) {
                              data.assignAll(responseData);
                            }
                            return data;
                          },
                          onChanged: controller.onChanged,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text('Password', style: body2Regular),
                        const SizedBox(
                          height: 8,
                        ),
                        InputForm(
                          controller: controller.passwordController,
                          hintText: 'Masukkan Password ...',
                          validator: controller.passwordValidate,
                          isPassword: controller.obsecure,
                          suffixIcon: IconButton(
                            onPressed: controller.changeObsecure,
                            icon: Icon(
                              controller.obsecure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text('Konfirmasi Password', style: body2Regular),
                        const SizedBox(
                          height: 8,
                        ),
                        InputForm(
                          controller: controller.passwordConfirmController,
                          hintText: 'Masukkan Password ...',
                          validator: controller.passwordConfirmValidate,
                          isPassword: controller.obsecureConfirmation,
                          suffixIcon: IconButton(
                            onPressed:
                                controller.changeObsecurePasswordConfirmation,
                            icon: Icon(
                              controller.obsecureConfirmation
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: controller.saveDataRegister,
                            child: const Text('Daftar'),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: OutlinedButton(
                            onPressed: controller.toLoginPage,
                            child: const Text('Login'),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

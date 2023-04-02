import 'package:biology_fun/app/shared/theme/font.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../shared/widgets/form/input_form.dart';
import '../../../shared/widgets/header/header_auth.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (_) {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: controller.formGlobalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderAuth(),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Login', style: h1Bold),
                        const SizedBox(
                          height: 32,
                        ),
                        Text('Username', style: body2Regular),
                        const SizedBox(
                          height: 8,
                        ),
                        InputForm(
                          validator: controller.userValidate,
                          controller: controller.usernameController,
                          hintText: 'Masukkan username ...',
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text('Password', style: body2Regular),
                        const SizedBox(
                          height: 8,
                        ),
                        InputForm(
                          validator: controller.passwordValidate,
                          controller: controller.passwordController,
                          isPassword: controller.obsecure,
                          suffixIcon: IconButton(
                              onPressed: controller.changeObsecure,
                              icon: controller.obsecure
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off)),
                          hintText: 'Masukkan password ...',
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: controller.login,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Masuk'),
                                const SizedBox(width: 8,),
                                controller.loading
                                    ? const SizedBox(
                                      width:24,
                                      height: 24, 
                                      child: CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                    )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: OutlinedButton(
                            onPressed: controller.toRegisterPage,
                            child: const Text('Daftar'),
                          ),
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

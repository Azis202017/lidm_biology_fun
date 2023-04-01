import 'package:biology_fun/app/shared/theme/font.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../shared/widgets/form/input_form.dart';
import '../../../shared/widgets/images/image_cache.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: controller.formGlobalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      const CacheImage(
                        imageUrl:
                            'https://res.cloudinary.com/dkkga3pht/image/upload/v1680294350/Vector_1_mdyxat.png',
                        width: 250,
                        height: 150,
                        placeHolder: Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          top: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Biology',
                                  style: h1Bold.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                const CacheImage(
                                  imageUrl:
                                      'https://res.cloudinary.com/dkkga3pht/image/upload/v1680348162/microscope_ryq1e8.png',
                                  width: 30,
                                  height: 30,
                                  placeHolder: Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Fun',
                              style: h1Bold.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                          suffixIcon: IconButton(onPressed: controller.changeObsecure, icon: controller.obsecure ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off)),
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
                            child: const Text('Masuk'),
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

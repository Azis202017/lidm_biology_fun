import 'package:biology_fun/app/shared/theme/font.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                    CachedNetworkImage(
                      imageUrl:
                          'https://res.cloudinary.com/dkkga3pht/image/upload/v1680294350/Vector_1_mdyxat.png',
                      width: 250,
                      height: 150,
                      placeholder: (context, url) => const Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      alignment: Alignment.topLeft,
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
                              CachedNetworkImage(
                                imageUrl:
                                    'https://res.cloudinary.com/dkkga3pht/image/upload/v1680284065/microscope_ijsft9.png',
                                width: 30,
                                height: 30,
                                placeholder: (context, url) => const Center(
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
                      TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        autocorrect: false,
                        validator: controller.userValidate,
                        controller: controller.usernameController,
                        decoration: const InputDecoration(hintText: 'Username'),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text('Password', style: body2Regular),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        autocorrect: false,
                        validator: controller.passwordValidate,
                        controller: controller.passwordController,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                        ),
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
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

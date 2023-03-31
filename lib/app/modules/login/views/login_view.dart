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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        'https://res.cloudinary.com/dkkga3pht/image/upload/v1680282731/images/Vector_vppjcq.png',
                    width: 250,
                    height: 150,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    alignment: Alignment.topLeft,
                  ),
                  Row(
                    children: [
                      const Text('Biology'),
                      CachedNetworkImage(
                        imageUrl:
                            'https://res.cloudinary.com/dkkga3pht/image/upload/v1680284065/microscope_ijsft9.png',
                        width: 20,
                        height: 29,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                      ),
                      const Text('Fun'),
                    ],
                  ),
                ],
              ),
              const Text('Login'),
              const Text('Username'),
              const Text('Password'),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Kembali'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:biology_fun/app/shared/theme/font.dart';
import 'package:biology_fun/app/shared/widgets/images/image_cache.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_controller.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(AccountController());
    return GetBuilder<AccountController>(
      init: AccountController(),
      initState: (controller) {
        controller.controller?.getAccount();
      },
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: controller.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Account',
                            style: h1Bold,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Center(
                          child: SizedBox(
                            width: 64,
                            height: 64,
                            child: Stack(
                              children: const [
                                CacheImage(
                                  imageUrl:
                                      'https://res.cloudinary.com/dkkga3pht/image/upload/v1680436809/Avatar_djrak9.png',
                                  width: 64,
                                  height: 64,
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: CacheImage(
                                    imageUrl:
                                        'https://res.cloudinary.com/dkkga3pht/image/upload/v1680518708/Icon_bq3mzm.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Center(
                          child: Text(
                            controller.student!.data.student.fullname,
                            style: h3Bold,
                          ),
                        ),
                        Center(
                          child: Text(controller.student!.data.username),
                        ),
                        Center(
                          child: Text(controller
                              .student!.data.student.studentClass.name),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        ListTile(
                          title: Text(
                            'Edit Account',
                            style: h4Regular,
                          ),
                          trailing: const Icon(Icons.arrow_right),
                        ),
                        ListTile(
                          title: Text(
                            'Help',
                            style: h4Regular,
                          ),
                          trailing: const Icon(Icons.arrow_right),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left:16.0, right : 16,),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: controller.logoutAccount,
                              child: const Text('Keluar'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
          ),
        );
      },
    );
  }
}

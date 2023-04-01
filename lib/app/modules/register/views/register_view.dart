import 'package:biology_fun/app/shared/widgets/header/header_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/theme/color.dart';
import '../../../shared/theme/font.dart';
import '../../../shared/widgets/account_widget.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Step> listOfSteps = [
      const Step(
        title: Text('Biodata'),
        content: AccountWidget(),
      ),
      Step(
        title: const Text('Test'),
        isActive: controller.currentIndex >= 2 ? true : false,
        content: const Text('Test'),
      ),
    ];
    return GetBuilder<RegisterController>(builder: (_) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderAuth(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Register', style: h1Bold),
                ),
                SizedBox(
                  height: 500,
                  child: Stepper(
                    elevation: 0,
                    currentStep: controller.currentIndex,
                    type: StepperType.horizontal,
                    controlsBuilder: ((context, detail) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: greyColor,
                            ),
                            onPressed: controller.onStepCancel,
                            child: const Text('Kembali'),
                          ),
                          ElevatedButton(
                              onPressed: controller.onStepContinue,
                              child: const Text('Selanjutnya')),
                        ],
                      );
                    }),
                    steps: [
                      Step(
                        state: controller.currentIndex <=0 ? StepState.editing: StepState.complete,
                        title: const Text('Biodata'),
                        isActive: controller.currentIndex >= 0 ,
                        content: const Text('Test'),
                      ),
                      Step(
                        state: controller.currentIndex <=1 ?  StepState.editing: StepState.complete,
                        isActive: controller.currentIndex >= 1 ,
                        title: const Text('Akun'),
                        content: const AccountWidget(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

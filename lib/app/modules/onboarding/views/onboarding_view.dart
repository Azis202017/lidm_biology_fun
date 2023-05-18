import 'package:biology_fun/app/shared/theme/color.dart';
import 'package:biology_fun/app/shared/theme/font.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../routes/app_pages.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          titleWidget: Text(
            'Belajar menyenangkan',
            style: h3Bold.copyWith(
              color: primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          bodyWidget: Text(
            'Belajar menjadi menyenangkan dengan berbagai macam gaya belajar yang sudah disediakan, seperti visual, kinestetik, atau audio',
            textAlign: TextAlign.center,
            style: bodyRegular.copyWith(color: greyColor),
          ),
          image: Image.network(
              'https://res.cloudinary.com/dkkga3pht/image/upload/v1684411289/Group_6873_1_juolpc.png'),
        ),
        PageViewModel(
          titleWidget: Text(
            'Kuis Singkat',
            style: h3Bold.copyWith(
              color: primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          bodyWidget: Text(
            'Dengan mengerjakan kuis setelah belajar, kamu dapat menguji pengetahuan anatomi mu dengan mengerjakan kuis',
            style: bodyRegular.copyWith(color: greyColor),
            textAlign: TextAlign.center,
          ),
          image: Image.network(
              'https://res.cloudinary.com/dkkga3pht/image/upload/v1684411288/Group_6873_2_mu8uum.png'),
        ),
        PageViewModel(
          titleWidget: Text(
            'Forum Diskusi',
            style: h3Bold.copyWith(
              color: primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          bodyWidget: Text(
            'Setelah belajar, dengan forum diskusi kamu bisa berdiskusi dengan guru mu mengenai hal yang tidak kamu paham  mengenai anatomi',
            style: bodyRegular.copyWith(color: greyColor),
            textAlign: TextAlign.center,
          ),
          image: Image.network(
              'https://res.cloudinary.com/dkkga3pht/image/upload/v1684411289/Group_6873_1_juolpc.png'),
          
        ),
      ],
      showSkipButton: true,
      showDoneButton: true,
      showNextButton: true,
      onDone: () {
        Get.toNamed(Routes.LOGIN);
      },
      onSkip: () {
        Get.toNamed(Routes.LOGIN);
      },
      done: ElevatedButton(
        child: const Text('Login'),
        onPressed: () {
          Get.toNamed(Routes.LOGIN);
        },
      ),
      skip: ElevatedButton(
        child: const Text('Lewati'),
        onPressed: () {
          Get.toNamed(Routes.LOGIN);
        },
      ),
      bodyPadding: const EdgeInsets.only(top: 50),
      next: Text(
        'Berikutnya',
        style: bodyRegular,
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(40.0, 10.0),
        activeColor: primaryColor,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      initialPage: 0,
    );
  }
}

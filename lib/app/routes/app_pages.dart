import 'package:get/get.dart';

import '../modules/account/bindings/account_binding.dart';
import '../modules/account/views/account_view.dart';
import '../modules/ar/bindings/ar_binding.dart';
import '../modules/ar/views/ar_view.dart';
import '../modules/bottom_navigation/bindings/bottom_navigation_binding.dart';
import '../modules/bottom_navigation/views/bottom_navigation_view.dart';
import '../modules/discussion_detail/bindings/discussion_detail_binding.dart';
import '../modules/discussion_detail/views/discussion_detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/puzzle/bindings/puzzle_binding.dart';
import '../modules/puzzle/views/puzzle_view.dart';
import '../modules/quiz/bindings/quiz_binding.dart';
import '../modules/quiz/views/quiz_view.dart';
import '../modules/quiz_detail/bindings/quiz_detail_binding.dart';
import '../modules/quiz_detail/views/quiz_detail_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIGATION,
      page: () => const BottomNavigationView(),
      binding: BottomNavigationBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => const AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.PUZZLE,
      page: () => const PuzzleView(),
      binding: PuzzleBinding(),
    ),
    GetPage(
      name: _Paths.AR,
      page: () => const ArView(),
      binding: ArBinding(),
    ),
    GetPage(
      name: _Paths.QUIZ,
      page: () => const QuizView(),
      binding: QuizBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.DISCUSSION_DETAIL,
      page: () => const DiscussionDetailView(),
      binding: DiscussionDetailBinding(),
    ),
    GetPage(
      name: _Paths.QUIZ_DETAIL,
      page: () => const QuizDetailView(),
      binding: QuizDetailBinding(),
    ),
  ];
}

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const BOTTOM_NAVIGATION = _Paths.BOTTOM_NAVIGATION;
  static const ACCOUNT = _Paths.ACCOUNT;
  static const PUZZLE = _Paths.PUZZLE;
  static const QUIZ_DETAIL = _Paths.QUIZ_DETAIL;
  static const AR = _Paths.AR;
  static const QUIZ = _Paths.QUIZ;
  static const ONBOARDING = _Paths.ONBOARDING;
  static const DISCUSSION_DETAIL = _Paths.DISCUSSION_DETAIL;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const BOTTOM_NAVIGATION = '/bottom-navigation';
  static const ACCOUNT = '/account';
  static const PUZZLE = '/puzzle';
  static const QUIZ = '/quiz';
  static const QUIZ_DETAIL = '/quiz-detail';
  static const AR = '/ar';
  static const ONBOARDING = '/onboarding';
  static const DISCUSSION_DETAIL = '/discussion-detail';
}

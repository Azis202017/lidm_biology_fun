part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const BOTTOM_NAVIGATION = _Paths.BOTTOM_NAVIGATION;
  static const ACCOUNT = _Paths.ACCOUNT;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const BOTTOM_NAVIGATION = '/bottom-navigation';
  static const ACCOUNT = '/account';

}

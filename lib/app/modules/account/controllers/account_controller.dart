import 'package:biology_fun/app/services/User/user_service.dart';
import 'package:biology_fun/app/services/login/login_services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/model/user_model.dart';
import '../../../routes/app_pages.dart';

class AccountController extends GetxController {
  User? student;
  bool isLoading = true;
  bool? isLogin;

  @override
  void onInit() {
    getAccount();
    super.onInit();
  }

  void getAccount() async {
    isLoading = true;
    student = await UserService().getUserData();
    isLoading = false;
    update();
  }

  void logout() async {
    final storage = GetStorage();
    try {
      isLogin = await LoginServices().logoutUser(token: storage.read('token'));
      if (isLogin!) {
        storage.remove('token');
        Get.snackbar('Logout Success', 'Logout Berhasil');
        Get.offAllNamed(Routes.LOGIN);
      }
    } catch (e) {}
  }
}

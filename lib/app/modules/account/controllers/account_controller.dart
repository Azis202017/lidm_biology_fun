import 'package:biology_fun/app/services/User/user_service.dart';
import 'package:biology_fun/app/services/login/login_services.dart';
import 'package:get/get.dart';

import '../../../data/model/user_model.dart';
import '../../../routes/app_pages.dart';

class AccountController extends GetxController {
  User? student;
  bool isLoading = true;
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

  void logoutAccount() async {
    await LoginServices().logoutUser();
    Get.offAllNamed(Routes.LOGIN);
  }
}

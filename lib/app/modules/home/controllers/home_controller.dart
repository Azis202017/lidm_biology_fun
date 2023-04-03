import 'package:biology_fun/app/services/User/user_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/model/user_model.dart';
import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  User? user;
  final box = GetStorage();
  bool loading = true;
  @override
  void onInit() {
    fetchProfile();
    super.onInit();
  }
  void fetchProfile() async {
    user = await UserService().getUserData();
    loading = false;
    update();
  }

  void logout() {
    box.remove('token');
    Get.toNamed(Routes.LOGIN);
  }
}

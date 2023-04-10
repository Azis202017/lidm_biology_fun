import 'package:biology_fun/app/services/User/user_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/model/list_material_model.dart';
import '../../../data/model/user_model.dart';
import '../../../routes/app_pages.dart';
import '../../../services/login/login_services.dart';
import '../../../services/material/material_service.dart';

class HomeController extends GetxController {
  User? user;
  List<MaterialClass> dataMaterial = [];

  final box = GetStorage();
  bool loading = true;
  @override
  void onInit() {
    fetchProfile();
    fetchMaterial();
    super.onInit();
  }

  void fetchProfile() async {
    user = await UserService().getUserData();
    loading = false;
    update();
  }

  void fetchMaterial() async {
    List<MaterialClass> responseData = await MaterialService().getAllMaterial();
    if (responseData.isNotEmpty) {
      dataMaterial.assignAll(responseData);
    }
    update();
  }

  
}

import 'package:get/get.dart';

import '../../../data/model/discussion/discussion_detail_model.dart';
import '../../../services/discussion/discussion_service.dart';

class DiscussionDetailController extends GetxController {
  String? namePage = Get.arguments['title'];
  String? id = Get.arguments['id'];
  DetailDiscussion? detailDiscussion = DetailDiscussion();
  bool isLoading = true;
  @override
  void onInit() {
    fetchDetailDiscussion();
    super.onInit();
  }

  void fetchDetailDiscussion() async {
    DetailDiscussion? dataDiscussion =
        await DiscussionService().fetchDiscussionDetail(id!);
    isLoading = false;
    detailDiscussion = dataDiscussion;
    update();
  }
}

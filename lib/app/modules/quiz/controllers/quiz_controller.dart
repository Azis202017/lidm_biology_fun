import 'package:biology_fun/app/data/model/quiz/question_quiz.dart';
import 'package:biology_fun/app/services/question/question.dart';
import 'package:get/get.dart';

import '../../../data/model/discussion/list_discussion_model.dart';
import '../../../services/discussion/discussion_service.dart';

class QuizController extends GetxController {
  String namePage = Get.arguments['namePage'];
  List<Discussion> discussion = [];
  List<QuestionModel> question = [];
  bool isLoading = true;
  @override
  void onInit() {
    fetchDiscussion();
    fetchQuestion();
    super.onInit();
  }
  void fetchQuestion() async {
    List<QuestionModel> data = await QuestionService().fetchQuestion();
    isLoading = false;
    question = data;
    update();
  }

  void fetchDiscussion() async {
    List<Discussion> data = await DiscussionService().fetchDiscussionData();
    isLoading=false;
    discussion = data;

    update();
  }
}

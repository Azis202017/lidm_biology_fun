import 'package:biology_fun/app/data/model/quiz/list_quiz.dart';
import 'package:get/get.dart';

import '../../../services/quiz/quiz_service.dart';

class QuizDetailController extends GetxController {
  List<QuizModel> question = [];
  bool isLoading = true;
  int index = 0;
  @override
  void onInit() {
    fetchQuestion();
    super.onInit();
  }
  void fetchQuestion() async{
    List<QuizModel> data = await QuizService().fetchQuestion();
    isLoading = false;
    question = data;
    update();
  }
  void nextQuestion() {
    if (index == question.length - 1) {
      return;
    } else {
      index++;
    }
    update();
  }
   void backQuestion() {
    if (index == 0) {
      return;
    } else {
      index--;
    }
    update();
  }
}

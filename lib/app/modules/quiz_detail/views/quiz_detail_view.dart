import 'package:biology_fun/app/shared/widgets/question_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/widgets/next_button.dart';
import '../controllers/quiz_detail_controller.dart';

class QuizDetailView extends GetView<QuizDetailController> {
  const QuizDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizDetailController>(builder: (context) {
      return Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        appBar: AppBar(
          title: const Text(''),
          centerTitle: true,
        ),
        body: controller.isLoading
            ? const Center(child: CircularProgressIndicator())
            : Center(
                child: QuestionWidget(
                  indx: controller.index,
                  totalQuestions: controller.question.length,
                  question: controller.question[controller.index].question,
                ),
              ),
        floatingActionButton: NextButton(
          nextQuestion: controller.nextQuestion,
          index: controller.index,
          backQuestion: controller.backQuestion,
        ),
      );
    });
  }
}

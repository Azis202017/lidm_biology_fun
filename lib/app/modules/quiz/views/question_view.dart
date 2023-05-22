import 'package:biology_fun/app/data/model/quiz/question_quiz.dart';
import 'package:biology_fun/app/modules/quiz/controllers/quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/discussion/discussion_widget.dart';

class QuestionView extends GetView<QuizController> {
  const QuestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizController>(
      initState: (_) {
        controller.fetchQuestion();
      },
      builder: (_) {
        return SafeArea(
          child: controller.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: controller.question.length,
                  itemBuilder: (context, index) {
                    QuestionModel question = controller.question[index];
                    return Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                      ),
                      decoration: BoxDecoration(
                        boxShadow: cardShadow,
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                      ),
                      child: DiscussionWidget(
                        img:
                            'https://res.cloudinary.com/dkkga3pht/image/upload/v1684659117/Frame_20553_1_en5el8.png',
                        title: question.title,
                        description: question.description,
                        onTap: () {
                          Get.toNamed(Routes.QUIZ_DETAIL);
                        },
                      ),
                    );
                  },
                ),
        );
      },
    );
  }
}

import 'package:biology_fun/app/modules/quiz/views/discussion_view.dart';
import 'package:biology_fun/app/modules/quiz/views/question_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/quiz_controller.dart';

class QuizView extends GetView<QuizController> {
  const QuizView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text(controller.namePage),
          centerTitle: true,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.quiz_outlined),
                text: 'Kuis',
              ),
              Tab(
                icon: Icon(Icons.question_answer_outlined),
                text: 'Discussions',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            QuestionView(),
            DiscussionView(),
          ],
        ),
      ),
    );
  }
}

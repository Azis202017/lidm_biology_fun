import 'package:biology_fun/app/modules/quiz/controllers/quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/model/discussion/list_discussion_model.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/theme/theme.dart';
import '../../../shared/widgets/discussion/discussion_widget.dart';

class DiscussionView extends GetView<QuizController> {
  const DiscussionView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizController>(
      initState: (_) {
        controller.fetchDiscussion();
      },
      builder: (_) {
        return SafeArea(
          child: controller.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: controller.discussion.length,
                  itemBuilder: (context, index) {
                    Discussion discussionData = controller.discussion[index];

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
                            'https://res.cloudinary.com/dkkga3pht/image/upload/v1684453715/Frame_20553_u1mspq.png',
                        title: discussionData.title,
                        description: discussionData.content,
                        onTap: () {
                          Get.toNamed(Routes.DISCUSSION_DETAIL, arguments: {
                            'title' : discussionData.title,
                            'id' : discussionData.id,
                            
                          });
                        },
                      ),
                    );
                  }),
        );
      },
    );
  }
}

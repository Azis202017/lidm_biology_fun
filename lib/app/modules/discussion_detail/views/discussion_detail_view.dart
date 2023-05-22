import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/discussion_detail_controller.dart';

class DiscussionDetailView extends GetView<DiscussionDetailController> {
  const DiscussionDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DiscussionDetailController>(
      init: DiscussionDetailController(),
      initState: (_) {
      controller.fetchDetailDiscussion();
      },
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(controller.namePage ?? ""),
            centerTitle: true,
          ),
          body: controller.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Text(controller.namePage ?? ""),
                  ],)
              ),
        );
      },
    );
  }
}

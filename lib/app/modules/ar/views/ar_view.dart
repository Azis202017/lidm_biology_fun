import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/ar_controller.dart';

class ArView extends GetView<ArController> {
  const ArView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ArView'),
        centerTitle: true,
      ),
      body: WebViewWidget(
        controller: controller.webViewController,
      ),
    );
  }
}

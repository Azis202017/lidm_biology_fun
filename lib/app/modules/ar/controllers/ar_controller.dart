import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArController extends GetxController {
  WebViewController webViewController = WebViewController()
    ..loadRequest(Uri.parse('https://ee16-103-233-100-228.ngrok-free.app'))
    ..canGoBack()
    ..enableZoom(true);
}

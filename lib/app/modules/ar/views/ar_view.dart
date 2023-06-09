import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../routes/app_pages.dart';
import '../controllers/ar_controller.dart';

class ArView extends GetView<ArController> with WidgetsBindingObserver {
  const ArView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ArController>(dispose: (_) {
      ambiguate(WidgetsBinding.instance)!.removeObserver(this);

      controller.player.dispose();
    }, initState: (_) async {
      await Permission.camera.request();
      await Permission.microphone.request();
      ambiguate(WidgetsBinding.instance)!.addObserver(this);
      controller.init();
    }, builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title:  Text(controller.namePage),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.PUZZLE, arguments : {
                  'title' : controller.namePage,
                });
              },
              icon: const ImageIcon(
                NetworkImage(
                    'https://res.cloudinary.com/dkkga3pht/image/upload/v1680947987/problem-solving_a82u6u.png'),
              ),
            ),
            StreamBuilder<PlayerState>(
              stream: controller.player.playerStateStream,
              builder: (context, snapshot) {
                final playerState = snapshot.data;
                final processingState = playerState?.processingState;
                final playing = playerState?.playing;
                if (processingState == ProcessingState.loading ||
                    processingState == ProcessingState.buffering) {
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    width: 24.0,
                    height: 24.0,
                    child: const CircularProgressIndicator(),
                  );
                } else if (playing != true) {
                  return IconButton(
                    tooltip: 'Dengarkan audio disini',
                    icon: const ImageIcon(
                      NetworkImage(
                          'https://res.cloudinary.com/dkkga3pht/image/upload/v1681096441/Style_Outline_rcpblz.png'),
                    ),
                    iconSize: 24.0,
                    onPressed: controller.player.play,
                  );
                } else if (processingState != ProcessingState.completed) {
                  return IconButton(
                    tooltip: 'Dengarkan audio disini',
                    icon: const ImageIcon(
                      NetworkImage(
                          'https://res.cloudinary.com/dkkga3pht/image/upload/v1681096439/Style_Bold_pnngsn.png'),
                    ),
                    iconSize: 24.0,
                    onPressed: controller.player.pause,
                  );
                } else {
                  return IconButton(
                    tooltip: 'Dengarkan audio disini',
                    icon: const Icon(Icons.replay),
                    iconSize: 24.0,
                    onPressed: () => controller.player.seek(Duration.zero),
                  );
                }
              },
            ),
            const SizedBox(width: 16),
          ],
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse(
                'https://e8fe-2001-448a-3025-2e40-c8e5-ac00-f247-5176.ngrok-free.app'),
          ),
          initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(
              mediaPlaybackRequiresUserGesture: false,
            ),
          ),
          onWebViewCreated: (InAppWebViewController controllerInApp) {
            controller.webViewController = controllerInApp;
          },
          androidOnPermissionRequest: (InAppWebViewController controller,
              String origin, List<String> resources) async {
            return PermissionRequestResponse(
                resources: resources,
                action: PermissionRequestResponseAction.GRANT);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(Routes.QUIZ,arguments: {
              'materialId' : controller.materialId,
              'namePage' : controller.namePage,
            });
          },
          tooltip: 'Akses kuis dan discussion klik ini',
          child: const Icon(Icons.quiz_outlined),
        ),
      );
    });
  }
}

import 'package:get/get.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';

class ArController extends GetxController {
  InAppWebViewController? webViewController;

  final player = AudioPlayer();
  Future<void> init() async {
    // Inform the operating system of our app's audio attributes etc.
    // We pick a reasonable default for an app that plays speech.
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    // Listen to errors during playback.
    player.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
      print('A stream error occurred: $e');
    });
    // Try to load audio from a source and catch any errors.
    try {
      // AAC example: https://dl.espressif.com/dl/audio/ff-16b-2c-44100hz.aac
      await player.setAudioSource(AudioSource.uri(Uri.parse(
          "https://res.cloudinary.com/dkkga3pht/video/upload/v1681098197/Jantung_esn2dh.mp3")));
    } catch (e) {
      print("Error loading audio source: $e");
    }
  }
}

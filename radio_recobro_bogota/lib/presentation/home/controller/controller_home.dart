// ignore_for_file: deprecated_member_use, unrelated_type_equality_checks, prefer_typing_uninitialized_variables, library_prefixes

import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:url_launcher/url_launcher.dart';

class ControllerHome extends GetxController {
  var indexPage = 0.obs;
  late AudioPlayer audio;
  late final audioState;
  final urlFacebook =
      "https://www.facebook.com/Iglesia-en-la-Localidad-de-la-Ciudad-de-Bogotá-DC-109185923896927";
  final urlInstagram = "https://www.instagram.com/ilcbogotadc/";
  final urlGoogle = "https://www.ilcbogotadc.org/radio-recobro-bogota";
  final urlYoutube = 'https://youtube.com/@iglesiaenlalocalidaddelaci7212';
  final String urlEmisora = "http://stream.zeno.fm/8zxrngxe0k8uv";

  final playList = ConcatenatingAudioSource(children: [
    AudioSource.uri(Uri.parse("http://stream.zeno.fm/8zxrngxe0k8uv"),
        tag: MediaItem(
          id: "0",
          title: 'Radio Recobro Bogota',
          artUri: Uri.parse(
              'https://static.wixstatic.com/media/06da7e_d4250f92bfb04e7dae74d6e99a820574~mv2.png'),
        ))
  ]);

  Future launchUrl(String url) async {
    try {
      if (await canLaunch(url)) {
        await launch(
          url,
        );
      } else {
        throw "no se pudo lanzar la $url";
      }
    } catch (e) {
      return e;
    }
  }

  Future initPlaylist() async {
    await audio.setLoopMode(LoopMode.all);
    await audio.setAudioSource(playList);
  }

  @override
  void onInit() async {
    super.onInit();
    audio = AudioPlayer();
    audioState = audio.playerState;
    initPlaylist();
  }
}

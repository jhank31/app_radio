// ignore_for_file: deprecated_member_use, unrelated_type_equality_checks, prefer_typing_uninitialized_variables

import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ControllerHome extends GetxController {
  var indexPage = 0.obs;
  late final urlSource;
  RxString texto = "".obs;
  AudioPlayer audio = AudioPlayer();
  RxBool statePLaying = false.obs;
  final audioState = PlayerState;
  final urlFacebook =
      "https://www.facebook.com/Iglesia-en-la-Localidad-de-la-Ciudad-de-Bogotá-DC-109185923896927";
  final urlInstagram = "https://www.instagram.com/ilcbogotadc/";
  final urlGoogle = "https://www.ilcbogotadc.org/radio-recobro-bogota";
  final urlYoutube = 'https://youtube.com/@iglesiaenlalocalidaddelaci7212';
  final String urlEmisora = "http://stream.zeno.fm/8zxrngxe0k8uv";

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

  Future initRadio() async {
    try {
      await audio.play(urlSource);
    } catch (e) {
      rethrow;
    }
  }

  Future pauseRadio() async {
    try {
      await audio.stop();
    } catch (e) {
      rethrow;
    }
  }

  bool isPlaying() {
    if (audioState == PlayerState.playing) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    texto.value = "Reproducir";
    statePLaying.value = isPlaying();
    urlSource = UrlSource(urlEmisora);
  }

  @override
  void dispose() {
    audio.stop();
    audio.dispose();
    super.dispose();
  }
}

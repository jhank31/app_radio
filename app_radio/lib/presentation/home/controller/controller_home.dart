import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class ControllerHome extends GetxController {
  RxBool isPlay = false.obs;
  final player = AudioPlayer();
  final String url =
      "https://cp.usastreams.com/pr2g/APPlayerRadioHTML5.aspx?stream=https://stream.zeno.fm/8zxrngxe0k8uv&fondo=06&formato=mp3&color=2&titulo=3&autoStart=1&vol=7&tipo=13&nombre=RADIO+RECOBRO+BOGOTA&imagen=https://static.wixstatic.com/media/06da7e_3c76b9fc9e5b4cb7ae3cbdb27e1c4b4a~mv2.png";

  Future play() async {
    await player.play(url);
  }
}

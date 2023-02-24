// ignore_for_file: unrelated_type_equality_checks, depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:radio_recobro_bogota/presentation/const/color_const.dart';
import 'package:animate_do/animate_do.dart';
import 'package:radio_recobro_bogota/presentation/home/controller/controller_home.dart';
import 'package:radio_recobro_bogota/presentation/horarios_transmicion/controller/controller_horarios.dart';

class BottomBodyHome extends StatefulWidget {
  const BottomBodyHome({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomBodyHome> createState() => _BottomBodyHomeState();
}

class _BottomBodyHomeState extends State<BottomBodyHome> {
  final controller = Get.put(ControllerHome());

  late AudioPlayer audioPlayer;
  final String url = "http://stream.zeno.fm/8zxrngxe0k8uv";

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer()..setUrl(url);
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Controls(audioPlayer: audioPlayer),
          SizedBox(
            height: Get.height * 0.08,
          ),
          BounceInUp(
            delay: const Duration(milliseconds: 300),
            from: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 48,
                  onPressed: () async {
                    controller.launchUrl(controller.urlFacebook);
                  },
                  icon: const Image(
                      height: 50,
                      image: AssetImage('assets/icons/facebook_icon.png')),
                ),
                IconButton(
                  iconSize: 50,
                  onPressed: () async {
                    controller.launchUrl(controller.urlInstagram);
                  },
                  icon: const Image(
                      height: 50,
                      image: AssetImage('assets/icons/instagram_icon.png')),
                ),
                IconButton(
                  iconSize: 43,
                  onPressed: () async {
                    controller.launchUrl(controller.urlGoogle);
                  },
                  icon: const Image(
                      height: 45,
                      image: AssetImage('assets/icons/google_icon.png')),
                ),
                IconButton(
                  iconSize: 50,
                  onPressed: () async {
                    controller.launchUrl(controller.urlYoutube);
                  },
                  icon: const Image(
                      height: 50,
                      image: AssetImage('assets/icons/youtube_icon.png')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Controls extends StatelessWidget {
  const Controls({super.key, required this.audioPlayer});

  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: audioPlayer.playerStateStream,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        if (!(playing ?? false)) {
          return Column(
            children: [
              SlideInLeft(
                from: 10,
                child: IconButton(
                  onPressed: audioPlayer.play,
                  icon: const Icon(Icons.play_arrow_rounded),
                  iconSize: 100,
                  color: ColorsConst.beish,
                ),
              ),
              FadeInDown(
                from: 10,
                child: Text(
                  "Reproducir",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: ColorsConst.beish),
                ),
              )
            ],
          );
        } else if (processingState != ProcessingState.completed) {
          return Column(
            children: [
              SlideInRight(
                from: 10,
                child: IconButton(
                  onPressed: audioPlayer.pause,
                  icon: const Icon(Icons.pause_rounded),
                  iconSize: 100,
                  color: ColorsConst.beish,
                ),
              ),
              FadeInUp(
                from: 10,
                child: Text(
                  'Pausar',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: ColorsConst.beish),
                ),
              )
            ],
          );
        }

        return Icon(
          Icons.play_arrow_rounded,
          size: 100,
          color: ColorsConst.beish,
        );
      },
    );
  }
}

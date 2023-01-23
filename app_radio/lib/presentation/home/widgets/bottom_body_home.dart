// ignore_for_file: unrelated_type_equality_checks

import 'package:app_radio/presentation/const/color_const.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class BottomBodyHome extends StatefulWidget {
  const BottomBodyHome({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomBodyHome> createState() => _BottomBodyHomeState();
}

class _BottomBodyHomeState extends State<BottomBodyHome> {
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
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Controls(audioPlayer: audioPlayer)],
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
          return IconButton(
            onPressed: audioPlayer.play,
            icon: const Icon(Icons.play_arrow_rounded),
            iconSize: 100,
            color: ColorsConst.beish,
          );
        } else if (processingState != ProcessingState.completed) {
          return IconButton(
            onPressed: audioPlayer.pause,
            icon: const Icon(Icons.pause_rounded),
            iconSize: 100,
            color: ColorsConst.beish,
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

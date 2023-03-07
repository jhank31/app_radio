// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:radio_recobro_bogota/presentation/home/controller/controller_home.dart';

import '../../const/color_const.dart';
import 'package:animate_do/animate_do.dart';

class Controls extends StatelessWidget {
  const Controls(
      {super.key, required this.audioPlayer, required this.controllerHome});
  final AudioPlayer audioPlayer;
  final ControllerHome controllerHome;
  @override
  Widget build(BuildContext context) {
    return FadeIn(
      child: StreamBuilder<PlayerState>(
        stream: audioPlayer.playerStateStream,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          final playerState = snapshot.data;
          final processingState = playerState?.processingState;
          final playing = playerState?.playing;
          if (!(playing ?? false)) {
            return FadeInDown(
              from: 10,
              child: Column(
                children: [
                  IconButton(
                      iconSize: 90,
                      color: ColorsConst.beish,
                      onPressed: audioPlayer.play,
                      icon: const Icon(Icons.play_arrow_rounded)),
                  Text(
                    "Reproducir",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: ColorsConst.beish),
                  ),
                ],
              ),
            );
          } else if (processingState != ProcessingState.completed) {
            return FadeInUp(
              from: 10,
              child: Column(
                children: [
                  IconButton(
                      iconSize: 90,
                      color: ColorsConst.beish,
                      onPressed: audioPlayer.pause,
                      icon: const Icon(Icons.pause)),
                  Text(
                    "Pausar",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: ColorsConst.beish),
                  ),
                ],
              ),
            );
          }
          return FadeInDown(
            from: 10,
            child: Column(
              children: [
                Icon(
                  Icons.play_arrow_rounded,
                  size: 90,
                  color: ColorsConst.beish,
                ),
                FadeIn(
                  child: Text(
                    "No se puede reproducir\nen este momento",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: ColorsConst.beish),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

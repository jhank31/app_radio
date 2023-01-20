// ignore_for_file: unrelated_type_equality_checks

import 'package:app_radio/presentation/home/controller/controller_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBodyHome extends StatelessWidget {
  const BottomBodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ControllerHome());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => (controller.isPlay.value == false)
              ? IconButton(
                  iconSize: 100,
                  onPressed: () async {
                    controller.isPlay.value = !controller.isPlay.value;
                    controller.play();
                  },
                  icon: Image.asset('assets/icons/play_icon.png'))
              : IconButton(
                  iconSize: 100,
                  onPressed: () async {
                    controller.isPlay.value = !controller.isPlay.value;
                    controller.player.pause();
                  },
                  icon: Image.asset('assets/icons/pause_icon.png'))),
        ],
      ),
    );
  }
}

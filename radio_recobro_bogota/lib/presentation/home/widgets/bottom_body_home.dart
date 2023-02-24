// ignore_for_file: unrelated_type_equality_checks, depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_recobro_bogota/presentation/const/color_const.dart';
import 'package:animate_do/animate_do.dart';
import 'package:radio_recobro_bogota/presentation/home/controller/controller_home.dart';
import 'package:radio_recobro_bogota/presentation/horarios_transmicion/controller/controller_horarios.dart';

class BottomBodyHome extends StatelessWidget {
  BottomBodyHome({
    Key? key,
  }) : super(key: key);

  final controller = Get.find<ControllerHome>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => AnimatedSwitcher(
                transitionBuilder: (widget, animation) => ScaleTransition(
                  scale: animation,
                  child: widget,
                ),
                duration: const Duration(milliseconds: 500),
                child: controller.statePLaying == false
                    ? Column(
                        key: const ValueKey("play"),
                        children: [
                          IconButton(
                              color: ColorsConst.beish,
                              iconSize: 100,
                              onPressed: () async {
                                controller.statePLaying.value =
                                    !controller.statePLaying.value;
                                controller.texto.value = "Pausar";
                                await controller.initRadio();
                              },
                              icon: const Icon(Icons.play_arrow_rounded)),
                        ],
                      )
                    : Column(
                        key: const ValueKey("pause"),
                        children: [
                          IconButton(
                              color: ColorsConst.beish,
                              iconSize: 100,
                              onPressed: () async {
                                await controller.pauseRadio();
                                controller.statePLaying.value =
                                    !controller.statePLaying.value;
                                controller.texto.value = "Reproducir";
                              },
                              icon: const Icon(Icons.pause)),
                        ],
                      ),
              )),
          Obx(
            () => FadeIn(
              child: Text(
                controller.texto.value,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: ColorsConst.beish),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.06,
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

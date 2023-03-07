// ignore_for_file: unrelated_type_equality_checks, depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:just_audio/just_audio.dart';
import 'package:radio_recobro_bogota/presentation/const/color_const.dart';
import 'package:animate_do/animate_do.dart';
import 'package:radio_recobro_bogota/presentation/home/controller/controller_home.dart';
import 'package:radio_recobro_bogota/presentation/home/widgets/controls.dart';
import 'package:radio_recobro_bogota/presentation/horarios_transmicion/controller/controller_horarios.dart';

class BottomBodyHome extends StatelessWidget {
  BottomBodyHome({
    Key? key,
  }) : super(key: key);

  final controller = Get.find<ControllerHome>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Controls(
              audioPlayer: controller.audio,
              controllerHome: controller,
            ),
            SizedBox(
              height: Get.height * 0.055,
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
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}


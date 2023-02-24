import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:radio_recobro_bogota/presentation/const/color_const.dart';
import 'package:radio_recobro_bogota/presentation/home/widgets/bottom_body_home.dart';
import 'package:radio_recobro_bogota/presentation/home/widgets/top_body_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              iconSize: 35,
              color: ColorsConst.principalBackground,
              onPressed: () => SystemNavigator.pop(),
              icon: const Icon(Icons.exit_to_app_rounded))
        ],
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        bottom: false,
        top: false,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: Get.height * 0.07),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color.fromARGB(255, 32, 104, 27),
                  ColorsConst.beish,
                ],
              )),
              width: Get.width,
              child: const TopBodyHome(),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                  decoration: BoxDecoration(
                      color: ColorsConst.principalGreen,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  width: Get.width,
                  height: Get.height * 0.45,
                  child: BottomBodyHome()),
            )
          ],
        ),
      ),
    );
  }
}

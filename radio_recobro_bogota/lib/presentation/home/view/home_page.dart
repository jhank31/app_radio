import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:radio_recobro_bogota/presentation/const/color_const.dart';
import 'package:radio_recobro_bogota/presentation/home/widgets/bottom_body_home.dart';
import 'package:radio_recobro_bogota/presentation/home/widgets/top_body_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsConst.beish,
        leading: IconButton(
            onPressed: () => ZoomDrawer.of(context)!.toggle(),
            icon: Icon(
              Icons.menu_open_rounded,
              color: ColorsConst.principalGreen,
              size: 40,
            )),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
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
                  height: Get.height * 0.4,
                  child: const BottomBodyHome()),
            )
          ],
        ),
      ),
    );
  }
}

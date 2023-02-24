import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_recobro_bogota/presentation/home/controller/controller_home.dart';
import 'package:radio_recobro_bogota/presentation/home/view/home_page.dart';

import '../const/color_const.dart';
import '../horarios_transmicion/view/horarios_page.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  final screens = [const HomePage(), const HorariosPage()];
  final controller = Get.find<ControllerHome>();
  Widget mainPage = const HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Obx(
        () => Theme(
          data: Theme.of(context).copyWith(
              iconTheme: IconThemeData(color: ColorsConst.principalGreen)),
          child: CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              color: ColorsConst.beish,
              index: controller.indexPage.value,
              onTap: (index) {
                controller.indexPage.value = index;
              },
              height: 60,
              items: const [
                Icon(Icons.home),
                Icon(Icons.calendar_month_rounded),
              ]),
        ),
      ),
      body: Obx(() => screens[controller.indexPage.value]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:radio_recobro_bogota/presentation/const/color_const.dart';
import 'package:radio_recobro_bogota/presentation/drawer/menu_page.dart';
import 'package:radio_recobro_bogota/presentation/home/view/home_page.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  Widget mainPage = const HomePage();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: Builder(builder: (context) {
        return MenuPageDrawer(
          onPageChanged: (pages) {
            setState(() {
              mainPage = pages;
            });
            ZoomDrawer.of(context)!.close();
          },
        );
      }),
      mainScreen: mainPage,
      showShadow: true,
      angle: -10.0,
      drawerShadowsBackgroundColor: ColorsConst.principalBackground,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      menuBackgroundColor: ColorsConst.secondaryGren,
    );
  }
}

import 'package:get/get.dart';
import 'package:radio_recobro_bogota/presentation/drawer/drawer_page.dart';

import 'package:radio_recobro_bogota/presentation/home/view/home_page.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
      name: '/homePage',
      page: () => const HomePage(),
      transition: Transition.fade),
  GetPage(
      name: '/drawer',
      page: () => const DrawerPage(),
      transition: Transition.fade),
];

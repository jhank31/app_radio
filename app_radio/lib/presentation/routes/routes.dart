import 'package:app_radio/presentation/export_pages/pages.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
      name: '/homePage',
      page: () => const HomePage(),
      transition: Transition.fade)
];

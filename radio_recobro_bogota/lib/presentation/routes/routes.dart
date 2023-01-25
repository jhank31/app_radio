import 'package:get/get.dart';
import 'package:radio_recobro_bogota/presentation/home/view/home_page.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
      name: '/homePage',
      page: () => const HomePage(),
      transition: Transition.fade)
];
// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:radio_recobro_bogota/presentation/const/color_const.dart';
import 'package:radio_recobro_bogota/presentation/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'radio_app',
      initialRoute: 'drawer',
      getPages: routes,
      theme: ThemeData(
          fontFamily: 'Open Sans', canvasColor: ColorsConst.splashWhite),
    );
  }
}

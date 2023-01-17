import 'package:app_radio/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'radio_app',
      initialRoute: 'homePage',
      getPages: routes,
      theme: ThemeData(
        fontFamily: 'Open Sans',
      ),
    );
  }
}

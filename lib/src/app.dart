import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/src/config/route_config.dart';
import 'package:test_app/src/ui/splash_ui.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Siplah Toko Ladang',
      initialRoute: SplashUI.routeName,
      getPages: routes,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0b0d1c),
        fontFamily: "Poppins",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

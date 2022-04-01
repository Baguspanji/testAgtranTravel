import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/src/ui/nav_ui.dart';

class SplashUI extends StatefulWidget {
  static const String routeName = '/spash';

  @override
  State<SplashUI> createState() => _SplashUIState();
}

class _SplashUIState extends State<SplashUI> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(NavBarUI.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Test App',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

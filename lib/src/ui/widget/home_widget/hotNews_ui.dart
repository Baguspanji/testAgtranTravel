import 'package:flutter/material.dart';
import 'package:test_app/src/config/size_config.dart';

class HotNewsUI extends StatelessWidget {
  const HotNewsUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) * 0.5,
      alignment: Alignment.center,
      child: Text(
        'Hot News',
        style: TextStyle(
          fontSize: 26,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

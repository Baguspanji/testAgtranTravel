import 'package:flutter/material.dart';
import 'package:test_app/src/config/size_config.dart';

class TrendingUI extends StatelessWidget {
  const TrendingUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) * 0.5,
      alignment: Alignment.center,
      child: Text(
        'Trending',
        style: TextStyle(
          fontSize: 26,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_app/src/config/constan_assets.dart';
import 'package:test_app/src/config/size_config.dart';

class CoursesUI extends StatelessWidget {
  const CoursesUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width(context),
          height: height(context) * 0.23,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            scrollDirection: Axis.horizontal,
            children: [
              _homeContent(
                context,
                title: 'Virtual Reality',
                subTitle: 'Satwik Pachino',
                image: education,
              ),
              _homeContent(
                context,
                title: 'Android Developer',
                subTitle: 'John Victor',
                image: education1,
              ),
              _homeContent(
                context,
                title: 'Virtual Reality',
                subTitle: 'Satwik Pachino',
                image: education,
              ),
              _homeContent(
                context,
                title: 'Android Developer',
                subTitle: 'John Victor',
                image: education1,
              ),
            ],
          ),
        ),
        Container(
          width: width(context),
          padding: EdgeInsets.symmetric(horizontal: 30),
          margin: EdgeInsets.only(top: 20, bottom: 10),
          child: Text(
            'Top Educators',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          width: width(context),
          height: height(context) * 0.23,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            scrollDirection: Axis.horizontal,
            children: [
              _homeContent2(
                context,
                title: 'Cristina Roy',
                subTitle: '12 COourses',
                image: people1,
              ),
              _homeContent2(
                context,
                title: 'Bessie Cooper',
                subTitle: '24 COourses',
                image: people2,
              ),
              _homeContent2(
                context,
                title: 'Anna Watson',
                subTitle: '18 COourses',
                image: people3,
              ),
              _homeContent2(
                context,
                title: 'Cristina Roy',
                subTitle: '12 COourses',
                image: people1,
              ),
              _homeContent2(
                context,
                title: 'Bessie Cooper',
                subTitle: '24 COourses',
                image: people2,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _homeContent2(
    BuildContext context, {
    required String title,
    required String subTitle,
    required String image,
  }) {
    return Container(
      width: width(context) * 0.34,
      height: height(context) * 0.21,
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xFF25273c),
            Color(0xFF212435),
            Color(0Xff1c2033),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF46475b),
            offset: Offset(0, -1),
            blurRadius: 0,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: width(context) * 0.16,
            height: width(context) * 0.16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width(context) * 0.16),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: title.length > 12 ? 12 : 10),
          Text(
            title,
            style: TextStyle(
              fontSize: title.length > 12 ? 14 : 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 10,
              color: Color(0xFF9e9fb1),
            ),
          ),
          SizedBox(height: 10),
          RotationTransition(
            turns: new AlwaysStoppedAnimation(90 / 360),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xFF9e9fb1),
              size: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _homeContent(
    BuildContext context, {
    required String title,
    required String subTitle,
    required String image,
  }) {
    return Container(
      width: width(context) * 0.6,
      height: height(context) * 0.21,
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xFF25273c),
            Color(0xFF212435),
            Color(0Xff1c2033),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF46475b),
            offset: Offset(0, -1),
            blurRadius: 0,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width(context) * 0.6,
            height: height(context) * 0.11,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF9e9fb1),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_app/src/config/constan_assets.dart';
import 'package:test_app/src/config/size_config.dart';
import 'package:test_app/src/ui/widget/home_widget/courses_ui.dart';
import 'package:test_app/src/ui/widget/home_widget/hotNews_ui.dart';
import 'package:test_app/src/ui/widget/home_widget/trending_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _tabIndex = 0;
  List<String> _tabs = [
    'My Courses',
    'Trending',
    'Hot News',
    ' Trending ',
    ' Hot News ',
  ];

  List<Widget> _home_widget = [
    CoursesUI(),
    TrendingUI(),
    HotNewsUI(),
    TrendingUI(),
    HotNewsUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height(context) * 0.06),
          ListTile(
            title: Text(
              'Hello Satwik',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              'What are you learning today?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF9e9fb1),
              ),
            ),
            trailing: Container(
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 2, color: Colors.white),
                image: DecorationImage(
                  image: AssetImage(people),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                margin: EdgeInsets.symmetric(horizontal: 18),
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
                    ]),
                child: TextFormField(
                  style: TextStyle(
                    color: Color(0xFF9e9fb1),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 30, right: 50),
                    hintText: 'Search Courses, Educators...',
                    hintStyle: TextStyle(
                      color: Color(0xFF9e9fb1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Positioned(
                right: 30,
                child: Icon(
                  Icons.search,
                  color: Color(0xFF9e9fb1),
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: width(context),
            height: height(context) * 0.08,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF25273c),
                  Colors.transparent,
                ],
              ),
            ),
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              children: [
                for (var i = 0; i < _tabs.length; i++)
                  _tabContainer(_tabs[i], isSelected: _tabIndex == i)
              ],
            ),
          ),
          _home_widget[_tabIndex]
        ],
      ),
    );
  }

  Widget _tabContainer(String text, {bool isSelected = false}) {
    return GestureDetector(
      onTap: () => setState(() {
        _tabIndex = _tabs.indexOf(text);
      }),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              text,
              style: isSelected
                  ? TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    )
                  : TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF9e9fb1),
                    ),
            ),
          ),
          if (isSelected)
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 100,
                height: 2,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.8),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}

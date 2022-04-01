import 'package:flutter/material.dart';
import 'package:test_app/src/config/size_config.dart';
import 'package:test_app/src/ui/widget/category_ui.dart';
import 'package:test_app/src/ui/widget/home_ui.dart';
import 'package:test_app/src/ui/widget/saved_ui.dart';
import 'package:test_app/src/ui/widget/setting_ui.dart';

class NavBarUI extends StatefulWidget {
  static const String routeName = '/home';

  @override
  State<NavBarUI> createState() => _NavBarUIState();
}

class _NavBarUIState extends State<NavBarUI> {
  int _tabIndex = 0;

  List<TabModel> _tabs = [
    TabModel(
      title: 'Home',
      icon: Icons.home,
    ),
    TabModel(
      title: 'Categories',
      icon: Icons.grid_3x3_rounded,
    ),
    TabModel(
      title: 'Saved',
      icon: Icons.bookmark,
    ),
    TabModel(
      title: 'Settings',
      icon: Icons.settings,
    ),
  ];

  List<Widget> body = [
    HomeUI(),
    CategoryUI(),
    SavedUI(),
    SettingUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[_tabIndex],
      bottomNavigationBar: Container(
        height: height(context) * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (var i = 0; i < _tabs.length; i++)
              _bottomTab(
                context,
                tab: _tabs[i],
                isSelected: _tabIndex == i,
              ),
          ],
        ),
      ),
    );
  }

  Widget _bottomTab(
    BuildContext context, {
    required TabModel tab,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: () => setState(() {
        _tabIndex = _tabs.indexOf(tab);
      }),
      child: Container(
        width: width(context) * 0.2,
        height: height(context) * 0.1,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: isSelected
                  ? BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white38,
                          blurRadius: 10,
                        ),
                      ],
                    )
                  : BoxDecoration(),
              child: Icon(
                tab.icon,
                color: isSelected ? Colors.white : Color(0xFF9e9fb1),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2),
              child: Text(
                tab.title!,
                style: TextStyle(
                  fontSize: 10,
                  color: isSelected ? Colors.white : Color(0xFF9e9fb1),
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TabModel {
  final String? title;
  final IconData? icon;

  TabModel({this.title, this.icon});
}

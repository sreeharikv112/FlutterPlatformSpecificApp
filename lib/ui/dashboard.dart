
import 'package:flutter/material.dart';
import 'package:flutter_platform_specific_app/ui/screen_tab_one.dart';
import 'package:flutter_platform_specific_app/ui/screen_tab_three.dart';
import 'package:flutter_platform_specific_app/ui/screen_tab_two.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_platform_specific_app/utils/color_utils.dart' as ColorUtils;


class DashboardScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return DashboardScreenState();
  }
}

class DashboardScreenState extends State<DashboardScreen>{
  int _tabSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text("Dashboard", style: ColorUtils.toolbarTextStyle,),
        ios: (_)=> CupertinoNavigationBarData(
          transitionBetweenRoutes: false,
        ),
      ),
      
      android: (_) => MaterialScaffoldData(),
      body: getTabScreen(_tabSelectedIndex),
      bottomNavBar: PlatformNavBar(
          currentIndex: _tabSelectedIndex,
          itemChanged: (index) {
            setState(() {
              _tabSelectedIndex = index;
            });
          },
        backgroundColor: Colors.blueGrey,
          items: [
        BottomNavigationBarItem(
          icon:  Icon(Icons.apps, color: Colors.grey),
          title:  Text('Dashboard', style: ColorUtils.bottomNavTextStyle),
          activeIcon:  Icon(Icons.apps, color: Colors.white),
        ),
        BottomNavigationBarItem(
          icon:  Icon(Icons.update, color: Colors.grey),
          title:  Text('Feeds', style: ColorUtils.bottomNavTextStyle),
          activeIcon:  Icon(Icons.update, color: Colors.white),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.grey),
          title: Text('Settings',style: ColorUtils.bottomNavTextStyle,
          ),
          activeIcon:  Icon(Icons.settings, color: Colors.white),
        )
      ]),
    );
  }

  Widget getTabScreen(int tabIndex) {
    switch (tabIndex) {
      case 1:
        return ScreenTabTwo();
      case 2:
        return ScreenTabThree();
      default:
        return ScreenTabOne();
    }
  }

}
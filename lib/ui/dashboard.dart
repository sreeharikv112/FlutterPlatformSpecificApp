
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_platform_specific_app/utils/color_utils.dart' as ColorUtils;

class DashboardScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return DashboardScreenState();
  }
}

class DashboardScreenState extends State<DashboardScreen>{
  
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
      body: Center(
          child: Text(
            "Screen dashboard",
            style: TextStyle(color: Colors.blueGrey, fontSize: 30),
          ),
          
      ),);
  }

}